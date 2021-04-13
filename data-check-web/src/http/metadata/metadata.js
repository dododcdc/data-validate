import axios from 'axios'

export const get = async function (dbId , tableName) {
  var res = []
  const url = "/metadata/get?dbId=" + dbId + "&tableName=" + tableName
  await axios.get(url).then(x => {

    res = x.data.data
    console.log(res)
  })

}
