//
//  Hydro.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Hydro: Bill
{
private var agencyName: String = ""
private var unitsUsed: Double = 0.0
var ratePerUnit: Double = 10.0
  init(billId: String, billDate: String, billType: BillType, agencyName:String, unitsUsed: Double)
{
  self.agencyName = agencyName
  self.unitsUsed = unitsUsed
  super.init(billId: billId, billDate: billDate, billType: billType)
  self.billTotal = billCalculate()
}


func billCalculate() -> Double
{
    var billAmount = 0.0
    if (unitsUsed < 10)
    {
        billAmount = 1.5 * unitsUsed
    }
    else
    {
        billAmount = 2 * unitsUsed
    }
    return billAmount
  }
}
