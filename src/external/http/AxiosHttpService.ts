import { IHttpService } from "./IHttpService";
import axios from "axios";

export class AxiosHttpService implements IHttpService {
  async get(url: string, headers?: any): Promise<any> {
    return axios.get(url)
  }
}