import axios from 'axios'



export const add = function (data) {
    const url = '/wbMetaDataSource/add'
    axios.post(url,data).then(x=>{
        alert(x.data.msg)
    })
}

export const get = function () {
    const url = '/wbMetaDataSource/get'
    axios.get(url).then(x => {
        alert(x.data.msg)
    })
}



