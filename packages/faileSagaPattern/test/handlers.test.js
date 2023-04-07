import { faileSagaPattern } from '../src/handlers'
describe('Given handler', () => {
  test('should expose the lambda function handler', () => {
    expect(typeof faileSagaPattern).toBe('function')
  })
})
