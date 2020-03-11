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
    var ratePerGB: Double = 6.8
init(billId: String, billDate: Date, billType: BillType, providerName:String, gbUsed: Double)
  {
    self.providerName = providerName
    self.gbUsed = gbUsed
    super.init(billId: billId, billDate: billDate, billType: billType)
    
  }
    override func calculateTotalBill()
    {
    self.billTotal = gbUsed*ratePerGB
    }}
