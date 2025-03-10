import request from '@/utils/request'

// 查询会员类别表列表
export function listType(query) {
  return request({
    url: '/system/vType/list',
    method: 'get',
    params: query
  })
}

// 查询会员类别表详细
export function getType(vipTypeId) {
  return request({
    url: '/system/vType/' + vipTypeId,
    method: 'get'
  })
}

// 新增会员类别表
export function addType(data) {
  return request({
    url: '/system/vType',
    method: 'post',
    data: data
  })
}

// 修改会员类别表
export function updateType(data) {
  return request({
    url: '/system/vType',
    method: 'put',
    data: data
  })
}

// 删除会员类别表
export function delType(vipTypeId) {
  return request({
    url: '/system/vType/' + vipTypeId,
    method: 'delete'
  })
}
