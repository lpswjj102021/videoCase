import request from '@/utils/request'

// 查询分销类别列表
export function listFx(query) {
  return request({
    url: '/system/fx/list',
    method: 'get',
    params: query
  })
}

// 查询分销类别详细
export function getFx(fxId) {
  return request({
    url: '/system/fx/' + fxId,
    method: 'get'
  })
}

// 新增分销类别
export function addFx(data) {
  return request({
    url: '/system/fx',
    method: 'post',
    data: data
  })
}

// 修改分销类别
export function updateFx(data) {
  return request({
    url: '/system/fx',
    method: 'put',
    data: data
  })
}

// 删除分销类别
export function delFx(fxId) {
  return request({
    url: '/system/fx/' + fxId,
    method: 'delete'
  })
}
