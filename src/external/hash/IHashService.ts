export interface IHashService {
  hash(value: string): Promise<string>
  compare(plainValue: string, hashedValue: string): Promise<boolean>
}