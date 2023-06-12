export interface ICacheService {
  get<T>(key: string): T | undefined;
  set(key: string, data: any): void;
  del(key: string): void;
}
