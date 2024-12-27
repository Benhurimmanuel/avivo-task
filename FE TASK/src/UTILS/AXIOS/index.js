import axios from "axios";
const FetchDataApi = "https://dummyjson.com/users"
const axiosGet = async () => {
    try {
        const response = await axios.get(FetchDataApi)
        return response
    } catch (error) {
        return error
    }
}

export { axiosGet }
