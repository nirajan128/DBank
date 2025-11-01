import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'compoundInterest' : () => Promise<undefined>,
  'deposit' : (arg_0: number) => Promise<undefined>,
  'getBalance' : () => Promise<number>,
  'withdraw' : (arg_0: number) => Promise<undefined>,
}
