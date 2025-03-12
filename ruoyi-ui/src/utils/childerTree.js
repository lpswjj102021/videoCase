/**
 * 树状结构信息处理
 */
export function TreeType(data){
  const treeData = data.filter(item => item.typePid === 0)
  treeData.forEach(itt => {
    itt.children = []
    data.forEach(it => {
      if (it.typePid === itt.typeId) {
        itt.children.push(it)
      }
    })
  })
  return treeData
}

/**
 * 树状结构信息处理
 */
export function TreeTypeSelect(data){
  data = JSON.parse(data)
  const treeData = data.filter(item => item.typePid === 0)
  treeData.forEach(itt => {
    itt.value = itt.typeId
    itt.label = itt.typeName
    itt.children = []
    data.forEach(it => {
      if (it.typePid === itt.typeId) {
        it.value = it.typeId
        it.label = it.typeName
        itt.children.push(it)
      }
    })
  })
  return treeData
}

/**
 * 获取类别信息父级信息
 */
export function GetTreeFar(ars, type){
  return [ars.filter(item => item.typeId === type)[0].typePid, type]
}
