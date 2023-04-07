import { completedSagaPattern } from '../src/handlers'
describe('Given handler', () => {
  test('should expose the lambda function handler', () => {
    expect(typeof completedSagaPattern).toBe('function')
  })
})
