export class GetAllRequest {
  page: number = 1

  constructor(request: any) {
    if (request.page) this.page = request.page
  }
}