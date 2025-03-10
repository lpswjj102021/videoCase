import request from '@/utils/request'

// 查询用户表列表
export function listPerson(query) {
  return request({
    url: '/system/person/list',
    method: 'get',
    params: query
  })
}

// 查询用户表详细
export function getPerson(personId) {
  return request({
    url: '/system/person/' + personId,
    method: 'get'
  })
}

// 新增用户表
export function addPerson(data) {
  return request({
    url: '/system/person',
    method: 'post',
    data: data
  })
}

// 修改用户表
export function updatePerson(data) {
  return request({
    url: '/system/person',
    method: 'put',
    data: data
  })
}

// 删除用户表
export function delPerson(personId) {
  return request({
    url: '/system/person/' + personId,
    method: 'delete'
  })
}
