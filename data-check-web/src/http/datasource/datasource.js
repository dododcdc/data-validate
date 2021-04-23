import axios from 'axios'
import { Message } from 'element-ui';


export const add = function (data) {
    const url = '/wbMetaDataSource/add'
    axios.post(url,data).then(x=>{
      Message({
          "type":"info",
          "message":x.data.msg
        })
    })
}

export const get = function () {
    const url = '/wbMetaDataSource/get'
    axios.get(url).then(x => {
        alert(x.data.msg)
    })
}



