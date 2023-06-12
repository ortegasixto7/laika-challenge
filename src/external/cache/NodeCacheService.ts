import NodeCache from 'node-cache';
import { ICacheService } from './ICacheService';

export class NodeCacheService implements ICacheService {
  private cacheService: NodeCache = new NodeCache();
  private static instance: NodeCacheService;
  private MAX_TIME_TO_LIVE: number = 86400; // 1 day in seconds

  private constructor() { }

  public static getInstance(): NodeCacheService {
    if (!NodeCacheService.instance) {
      NodeCacheService.instance = new NodeCacheService();
    }

    return NodeCacheService.instance;
  }

  get<T>(key: string): T | undefined {
    return this.cacheService.get<T>(key);
  }

  set(key: string, data: any): void {
    this.cacheService.set(key, data, this.MAX_TIME_TO_LIVE);
  }

  del(key: string): void {
    this.cacheService.del(key);
  }
}
