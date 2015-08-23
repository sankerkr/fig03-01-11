// fig03-01-11: Account.swift
// Account class with name and balance properties,
// an initializer and deposit and withdraw methods
public class Account {
    public var name: String = "" // properties must be initialized
    
    // balance is public, but its setter can be used only in class Account
    public private(set) var balance: Double = 0.0
    
    // initializer
    public init(name: String, balance: Double) {
        self.name = name
        
        // validate that balance is greater than 0.0; if not,
        // property balance keeps its initial value of 0.0
        if balance > 0.0 {
            self.balance = balance
        }
    }
    
    // deposit (add) a valid amount into the Account
    public func deposit(amount: Double) {
        // if amount is valid, add it to the balance
        if amount > 0.0 {
            balance = balance + amount
        }
    }
    
    // withdraw (subtract) a valid amount from the Account
    public func withdraw(amount: Double) {
        // if amount is valid, and the balance will not
        // become negative, subtract it from the balance
        if amount > 0.0 {
            if  balance - amount >= 0.0 {
                balance = balance - amount
            }
        }
    }
}

/**************************************************************************
* (C) Copyright 1992-2014 by Deitel & Associates, Inc. and               *
* Pearson Education, Inc. All Rights Reserved.                           *
*                                                                        *
* DISCLAIMER: The authors and publisher of this book have used their     *
* best efforts in preparing the book. These efforts include the          *
* development, research, and testing of the theories and programs        *
* to determine their effectiveness. The authors and publisher make       *
* no warranty of any kind, expressed or implied, with regard to these    *
* programs or to the documentation contained in these books. The authors *
* and publisher shall not be liable in any event for incidental or       *
* consequential damages in connection with, or arising out of, the       *
* furnishing, performance, or use of these programs.                     *
*************************************************************************/
