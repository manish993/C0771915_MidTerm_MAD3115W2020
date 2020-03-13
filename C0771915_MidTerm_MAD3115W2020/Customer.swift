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
        self.totalBillToPay = calculateTotalBill()
    }
    func getAllbills() -> [Bill]
    {
        var allBills = [Bill] ()
        for bill in customerBills {
            allBills.append(bill.value)
        }
        return allBills
        
    }
    func newBill(bill: Bill, billId: String)
        {
          customerBills.updateValue(bill, forKey: billId)
        }
    
   func removeBill(bill: Bill, billID: String)
   {
       customerBills.removeValue(forKey: billID)
       
   }
   func calculateTotalBill() -> Double{
       for i in customerBills {
            totalBillToPay = totalBillToPay + i.value.billTotal
       }
    return totalBillToPay
   }
    
}
