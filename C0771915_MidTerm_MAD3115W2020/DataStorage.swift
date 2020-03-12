//
//  DataStorage.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

    class DataStorage
    {
        
        private static let instance = DataStorage()
        private lazy var customerList: [String: Customer] = [:]

        private init(){}

        static func getInstance() -> DataStorage
        {
            return instance
        }
        
        func addCustomer(customer: Customer)
        {
            self.customerList.updateValue(customer, forKey: customer.customerID)
        }
        func getAllCustomers() -> [Customer]{
            return Array(customerList.values)
        }
        var m1 = Mobile(billID: "M01", billDate:"20-10-2019", billType: .MOBILE, mobileManufacturerName: "Apple", planName: "Monthly", mobileNumber: "1234567892", internetGBUsed: 5.4, minuteUsed: 12)
        var m2 = Mobile(billID: "M02", billDate: "19-05-1998", billType: .MOBILE, mobileManufacturerName: "Samsung", planName: "Weekly", mobileNumber: "8732786543", internetGBUsed: 9.9, minuteUsed: 15)
        var i1 = Internet(billId: "I01", billDate: "30-09-1998", billType: .INTERNET, providerName: "Rogers", gbUsed: 56)
        var i2 = Internet(billId: "I02", billDate: "13-05-1997", billType: .INTERNET, providerName: "Bell", gbUsed: 12)
        var h1 = Hydro(billId: "H01", billDate: "13-10-2019", billType: .HYDRO, agencyName: "Ajax", unitsUsed: 11)
        var h2 = Hydro(billId: "H02", billDate: "12-02-2019", billType: .HYDRO, agencyName: "Hydro inc", unitsUsed: 133)
      
         var c1 = Customer(customerID: "C001", firstName: "Manish", lastName: "Pawar", emailID: "manishpawar@gmail.com")
        var c2 = Customer(customerID: "C002", firstName: "Rajesh", lastName: "kumar", emailID: "rajeshkumar@gmail.com")

        var c3 = Customer(customerID: "C003", firstName: "Rakesh", lastName: "kumar", emailID: "rakeshkumar@gmail.com")
        var c4 = Customer(customerID: "C004", firstName: "Aditya", lastName: "sai", emailID: "adityasai@gmail.com")
        var c5 = Customer(customerID: "C005", firstName: "Charmi", lastName: "patel", emailID: "charmiapatel@gmail.com")
              
        
        func loadData()
        {
           
            c1.newBill(bill: m1, billId: m1.billId)
            c1.newBill(bill: m2, billId: m2.billId)
            c2.newBill(bill: h1, billId: h1.billId)
            c3.newBill(bill: h2, billId: h2.billId)
            c3.newBill(bill: i1, billId: i1.billId)
            
            customerList.updateValue(c1, forKey: c1.customerID)
            customerList.updateValue(c2, forKey: c2.customerID)
            customerList.updateValue(c3, forKey: c3.customerID)
            //customerList.updateValue(c4, forKey: c4.customerID)
            //customerList.updateValue(c5, forKey: c5.customerID)
    }
    
    
}
