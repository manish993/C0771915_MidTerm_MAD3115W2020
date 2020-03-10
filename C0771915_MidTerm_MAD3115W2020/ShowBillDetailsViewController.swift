//
//  AddNewCustomerViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController
{
    var customers:Customer?
    @IBOutlet weak var custId: UILabel!
    @IBOutlet weak var Fname: UILabel!
    @IBOutlet weak var Lname: UILabel!
    @IBOutlet weak var email: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billDetailsButton()
        self.navigationItem.title = "Customer Details"
        self.custId.text = customers?.customerID
        self.Fname.text = customers?.firstName
        self.Lname.text = customers?.lastName
        self.email.text = customers?.emailID
}
    private func billDetailsButton()
       {
           let billDetails = UIBarButtonItem(title: "Bill Details", style: .plain, target: self, action: #selector(self.details))
           self.navigationItem.rightBarButtonItem = billDetails
       }
       
       @objc func details()
       {
           let sb = UIStoryboard(name: "Main", bundle: nil)
           let bills = sb.instantiateViewController(identifier: "bills") as! billsViewController
           navigationController?.pushViewController(bills, animated: true)
       }

  

}
