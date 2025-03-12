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


/**
 * 计算到期日期
 */
export function getExpireDate(date , type) {
  const newDate = date ? new Date(date) : new Date();
  switch (type){
    case 1:
      // 月卡会员, 30天, 并且计算count的次数, 结果转换为年-月-日字符串信息
      return new Date(newDate.getTime() + 30 * 24 * 60 * 60 * 1000);
    case 2:
      // 季度卡会员, 90天, 并且计算count的次数
      return new Date(newDate.getTime() + 90 * 24 * 60 * 60 * 1000);
    case 3:
      // 年卡会员, 360天, 并且计算count的次数
      return new Date(newDate.getTime() + 360 * 24 * 60 * 60 * 1000);
  }
}
