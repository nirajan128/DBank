import Debug "mo:base/Debug";
actor {
var accountAmount: Nat = 0;

public func deposit(amount: Nat){
  if(amount > 0){
    accountAmount+= amount;
    Debug.print("You deposited: " # debug_show(amount));
  }else{
    Debug.print("The amount cant be deposited");
  }
  
};

public func withdraw(amount: Nat){
  if(amount <= accountAmount ){
     accountAmount -= amount;
     Debug.print("You withdrawed: " # debug_show(amount));
  }else{
    Debug.print("The specified amount cannot be withdrawn");
  }
};

Debug.print("Your total Amount is: " # debug_show(accountAmount));

};

