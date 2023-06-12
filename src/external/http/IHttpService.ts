export interface IHttpService {
  get(url: string, headers?: any): Promise<any>
}