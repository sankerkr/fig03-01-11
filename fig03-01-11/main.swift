// fig03-01-11: main.swift
// Using class Account's init method to initialize an Account's
// name property when the Account object is created
import Foundation // for NSNumberFormatter class

// create and configure an NSNumberFormatter for currency values
var formatter = NSNumberFormatter()
formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle

// function to return String representation of an Account's information
func formatAccountString(account: Account) -> String {
    return account.name + "'s balance: " +
        formatter.stringFromNumber(account.balance)!
}

// create two account objects
let account1 = Account(name: "Jane Green", balance: 50.00)
let account2 = Account(name: "John Blue", balance: -7.53)

// display initial balance of each Account
println(formatAccountString(account1))
println(formatAccountString(account2))

// test Account's deposit method
var depositAmount = 25.53

println("\ndepositing " + formatter.stringFromNumber(depositAmount)! +
    " into account1\n")
account1.deposit(depositAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

depositAmount = 123.45
println("\ndepositing " + formatter.stringFromNumber(depositAmount)! +
    " into account2\n")
account2.deposit(depositAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

// test Account's withdraw method
var withdrawalAmount = 14.27

println("\nwithdrawing " + formatter.stringFromNumber(withdrawalAmount)! +
    " from account1\n")
account1.withdraw(withdrawalAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

withdrawalAmount = 100.00
println("\nwithdrawing " + formatter.stringFromNumber(withdrawalAmount)! +
    " from account2\n")
account2.withdraw(withdrawalAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))


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
