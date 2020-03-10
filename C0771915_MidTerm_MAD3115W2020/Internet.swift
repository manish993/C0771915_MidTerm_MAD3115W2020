//
//  Internet.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Internet: Bill
  {
  private var providerName: String
  private var gbUsed: Double

init(billId: String, billDate: Date, billType: BillType, providerName:String, gbUsed: Double)
  {
    self.providerName = providerName
    self.gbUsed = gbUsed
    super.init(billId: billId, billDate: billDate, billType: billType)
    self.billTotal = billCalculate()
  }
func billCalculate() -> Double{
       var billAmount = 0.0
    if( gbUsed < 10){
        billAmount = 3 * gbUsed
    }
    else {
        billAmount = 3.5 * gbUsed
    }
       return billAmount
   }

}
