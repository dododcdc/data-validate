import axios from 'axios'

export const list = function () {
  const url = '/db-table/list'
  let list = []
  axios.get(url).then(x => {

    list = x.data.data

    return list
  })
}

// 返回一个Promise 返回结果.then(x => console.log(x))
// 统计表总数
export const demo = async function (dbId,tableName) {
  var res = 0

  await axios.get("/db-table/count?dbId=" +dbId +"&tableName=" + tableName).then(x => {
    res = x.data.data
  })
  return  res
}
