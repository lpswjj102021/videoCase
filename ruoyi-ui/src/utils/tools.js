/**
 * 计算日期两个日期之间的剩余天数
 */
export function getDateDiff(startDate) {
  // 将日期字符串解析为 Date 对象
  const d1 = new Date(startDate);
  const d2 = new Date();

  // 计算两个日期之间的毫秒数差值
  const timeDifference = Math.abs(d2 - d1);

  // 将毫秒数差值转换为天数
  const dayDifference = timeDifference / (1000 * 60 * 60 * 24);

  if (Math.floor(dayDifference) < 0) {
    return '过期会员';
  } else {
    return Math.floor(dayDifference);
  }
}
