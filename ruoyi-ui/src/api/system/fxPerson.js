import request from '@/utils/request'

// 查询分销商信息列表
export function listFxPerson(query) {
  return request({
    url: '/system/fxPerson/list',
    method: 'get',
    params: query
  })
}

// 查询分销商信息列表
export function QueryFxPerson(query) {
  return request({
    url: '/system/fxPerson/listPorm',
    method: 'get',
    params: query
  })
}

// 查询分销商信息详细
export function getFxPerson(vFxId) {
  return request({
    url: '/system/fxPerson/' + vFxId,
    method: 'get'
  })
}

// 新增分销商信息
export function addFxPerson(data) {
  return request({
    url: '/system/fxPerson',
    method: 'post',
    data: data
  })
}

// 修改分销商信息
export function updateFxPerson(data) {
  return request({
    url: '/system/fxPerson',
    method: 'put',
    data: data
  })
}

// 删除分销商信息
export function delFxPerson(vFxId) {
  return request({
    url: '/system/fxPerson/' + vFxId,
    method: 'delete'
  })
}
