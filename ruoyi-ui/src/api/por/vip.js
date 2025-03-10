import request from '@/utils/request'

// 查询会员表列表
export function listVip(query) {
  return request({
    url: '/por/vip/list',
    method: 'get',
    params: query
  })
}

// 查询会员表详细
export function getVip(vipId) {
  return request({
    url: '/por/vip/' + vipId,
    method: 'get'
  })
}

// 新增会员表
export function addVip(data) {
  return request({
    url: '/por/vip',
    method: 'post',
    data: data
  })
}

// 修改会员表
export function updateVip(data) {
  return request({
    url: '/por/vip',
    method: 'put',
    data: data
  })
}

// 删除会员表
export function delVip(vipId) {
  return request({
    url: '/por/vip/' + vipId,
    method: 'delete'
  })
}
