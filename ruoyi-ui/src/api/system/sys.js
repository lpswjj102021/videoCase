import request from '@/utils/request'

// 查询系统信息列表
export function listSys(query) {
  return request({
    url: '/system/sys/list',
    method: 'get',
    params: query
  })
}

// 查询系统信息详细
export function getSys(sysId) {
  return request({
    url: '/system/sys/' + sysId,
    method: 'get'
  })
}

// 新增系统信息
export function addSys(data) {
  return request({
    url: '/system/sys',
    method: 'post',
    data: data
  })
}

// 修改系统信息
export function updateSys(data) {
  return request({
    url: '/system/sys',
    method: 'put',
    data: data
  })
}

// 删除系统信息
export function delSys(sysId) {
  return request({
    url: '/system/sys/' + sysId,
    method: 'delete'
  })
}
