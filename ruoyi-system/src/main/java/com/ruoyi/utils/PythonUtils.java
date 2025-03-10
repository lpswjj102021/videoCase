package com.ruoyi.utils;


import com.ruoyi.system.domain.RefreshInfo;
import com.ruoyi.system.service.IRefreshInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/**
 * python调取函数
 */

@Component
public class PythonUtils {

    @Autowired
    private IRefreshInfoService refreshInfoService;

    /**
     * 调取python脚本，运行完毕后获取回调信息
     * @param pythonPath   python执行脚本路径， 请填写全路径（硬盘路径）
     */
    public boolean pythonCall(String pythonPath, RefreshInfo refreshInfo){
        try {
            Process process = Runtime.getRuntime().exec("python " + pythonPath);
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = reader.readLine())!= null) {
                System.out.println(line); // 处理回调信息
            }
            int exitCode = process.waitFor();
            System.out.println("Python脚本执行完毕，退出码：" + exitCode);
            if (exitCode == 0) {
                refreshInfo.setRefreshStatus("Y");
                refreshInfoService.updateRefreshInfo(refreshInfo);
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
