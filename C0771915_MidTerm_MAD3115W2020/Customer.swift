//
//  Customer.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Customer
{
    var customerID: String
    var firstName:String
    var lastName:String
    lazy var customerBills = [String: Bill]()
    var fullName:String
    {
      return "\(firstName) \(lastName)"
    }
    var emailID:String
    
    var totalBillToPay : Double = 0.0
     
    init(customerID:String, firstName:String, lastName:String, emailID:String) {
      self.customerID=customerID
      self.firstName=firstName
      self.lastName=lastName
      self.emailID=emailID//.isValidEmail(email: emailID)
    }
    func newBill(bill: Bill, billId: String)
        {
          customerBills.updateValue(bill, forKey: billId)
        }
    
    func allBillsTotal() -> Double
    {
      var allTotal2 = 0.0
      for i in customerBills{
        allTotal2 += i.value.billTotal
      }
      return allTotal2
    }
    
    func getBills() -> [Bill]{
        var bills = [Bill]()
        for i in customerBills{
            bills.append(i.value)
        }
        return bills
    }
    
}
