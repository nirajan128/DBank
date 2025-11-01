export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'deposit' : IDL.Func([IDL.Nat], [], ['oneway']),
    'getBalance' : IDL.Func([], [IDL.Nat], ['query']),
    'withdraw' : IDL.Func([IDL.Nat], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
