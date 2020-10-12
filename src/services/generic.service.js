import axios from 'axios'

const API_URL = 'https://mevn.incodewetrust.ru/api/v1'

export const request = async ({ url, method, data = {} }) => {
  const response = await axios[method](`${API_URL}/${url}`, data)
  return response.data
}
