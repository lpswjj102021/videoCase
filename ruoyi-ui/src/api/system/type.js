import request from '@/utils/request'

// 查询视频类别列表
export function listType(query) {
  return request({
    url: '/system/type/list',
    method: 'get',
    params: query
  })
}

// 查询视频类别详细
export function getType(typeId) {
  return request({
    url: '/system/type/' + typeId,
    method: 'get'
  })
}

// 新增视频类别
export function addType(data) {
  return request({
    url: '/system/type',
    method: 'post',
    data: data
  })
}

// 修改视频类别
export function updateType(data) {
  return request({
    url: '/system/type',
    method: 'put',
    data: data
  })
}

// 删除视频类别
export function delType(typeId) {
  return request({
    url: '/system/type/' + typeId,
    method: 'delete'
  })
}
