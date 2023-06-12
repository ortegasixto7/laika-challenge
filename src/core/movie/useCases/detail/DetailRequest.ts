export class DetailRequest {
  title: string = ''

  constructor(request: any) {
    if (request.title) this.title = request.title
  }
}