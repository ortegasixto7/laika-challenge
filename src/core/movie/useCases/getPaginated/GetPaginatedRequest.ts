export class GetPaginatedRequest {
  page: number = 1

  constructor(request: any) {
    if (request.page) this.page = request.page
  }
}