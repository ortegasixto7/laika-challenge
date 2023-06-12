export interface IUseCaseCommand<T> {
  execute(request: T): Promise<void>;
}

export interface IUseCaseQuery<T, R> {
  execute(request: T): Promise<R>;
}
