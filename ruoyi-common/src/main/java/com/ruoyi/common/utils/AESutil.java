package com.ruoyi.common.utils;

import org.springframework.stereotype.Component;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;

@Component
public class AESutil {

    private final String key = "20240511hello123";              // 必须为 16位， 24位等

    /**
     * AES算法加密
     * @Param:text原文
     * @Param:key密钥
     * */
    public String AESEncrypt(String text) throws Exception {
        // 创建AES加密算法实例(根据传入指定的秘钥进行加密)
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        SecretKeySpec keySpec = new SecretKeySpec(key.getBytes(), "AES");

        // 初始化为加密模式，并将密钥注入到算法中
        cipher.init(Cipher.ENCRYPT_MODE, keySpec);

        // 将传入的文本加密
        byte[] encrypted = cipher.doFinal(text.getBytes());

        //生成密文
        // 将密文进行Base64编码，方便传输
        return Base64.getEncoder().encodeToString(encrypted);
    }


    /**
     * AES算法解密
     * @Param:base64Encrypted密文
     * @Param:key密钥
     * */
    public String AESDecrypt(String base64Encrypted)throws Exception{
        // 创建AES解密算法实例
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        SecretKeySpec keySpec = new SecretKeySpec(key.getBytes(), "AES");

        // 初始化为解密模式，并将密钥注入到算法中
        cipher.init(Cipher.DECRYPT_MODE, keySpec);

        // 将Base64编码的密文解码
        byte[] encrypted = Base64.getDecoder().decode(base64Encrypted);

        // 解密
        byte[] decrypted = cipher.doFinal(encrypted);
        return new String(decrypted);
    }

}
