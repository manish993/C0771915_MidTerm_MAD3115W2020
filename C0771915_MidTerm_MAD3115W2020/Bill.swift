//
//  Bill.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
enum BillType {
    case MOBILE, INTERNET, HYDRO
}

class Bill
{
    var billId:String
    var billDate:String
    var billType:BillType
    var billTotal : Double = 0
   var totalBill:Int = 0
    
    init(billId:String,billDate:String,billType:BillType)
    {
    self.billId=billId
    self.billDate = billDate
    self.billType=billType
    }
    func calculateTotalBill() {
        
    }}
