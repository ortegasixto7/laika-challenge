export class DeleteRequest {
  id: string = ''

  constructor(request: any) {
    if (request.id) this.id = request.id
  }
}