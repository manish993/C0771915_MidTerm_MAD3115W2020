//
//  Bill.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Bill
{
    var billId:String
    var billDate:Date
    var billType:String
  //  var totalBill:Int
    
    init(billId:String,billDate:Date,billType:String)
    {
    self.billId=billId
    self.billDate=billDate
    self.billType=billType
    }
}
