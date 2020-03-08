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
        func loadData()
        {
            customerList.updateValue(Customer(customerID: "C001", firstName: "Manish", lastName: "Pawar", emailID: "manishpawar@gmail.com"), forKey: "C001")
            customerList.updateValue(Customer(customerID: "C002", firstName: "Rajesh", lastName: "kumar", emailID: "rajeshkumar@gmail.com"), forKey: "C002")
            customerList.updateValue(Customer(customerID: "C003", firstName: "Rakesh", lastName: "kumar", emailID: "rakeshkumar@gmail.com"), forKey: "C003")
            customerList.updateValue(Customer(customerID: "C004", firstName: "Aditya", lastName: "sai", emailID: "adityasai@gmail.com"), forKey: "C004")
            customerList.updateValue(Customer(customerID: "C005", firstName: "Charmi", lastName: "patel", emailID: "charmiapatel@gmail.com"), forKey: "C005")
            
        }
        
    }
    
    
