import Debug "mo:base/Debug";
actor {
var currentBalance: Nat = 0;

//TYPES OF METHODS
//query methods- they do not change the state of the actor - can be called getter
//Update methods- they can change the state of the actor - can be called setter


//UPDATE METHODS
//deposit and withdraw are an Update methods- they can change the state of the actor -if we print something it will be shown in the replica logs
public func deposit(amount: Nat){
  if(amount > 0){
    currentBalance+= amount;
    Debug.print("You deposited: " # debug_show(amount));
  }else{
    Debug.print("The amount cant be deposited");
  }
  
};

public func withdraw(amount: Nat){
  if(amount <= currentBalance ){
     currentBalance -= amount;
     Debug.print("You withdrawed: " # debug_show(amount));
  }else{
    Debug.print("The specified amount cannot be withdrawn");
  }
};


//QUERY METHOD
public query func getBalance() : async Nat {
  return currentBalance;
};

Debug.print("Your total Amount is: " # debug_show(currentBalance));

};

