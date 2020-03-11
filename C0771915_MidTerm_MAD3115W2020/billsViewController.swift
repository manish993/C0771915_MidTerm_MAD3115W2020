//
//  billsViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class billsViewController: UIViewController {
     var customerBill: Customer?
       var bills = [Bill]()

    @IBOutlet weak var tblBill: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.newBillButton()
        self.navigationItem.title = "Bill Details"
    //self.bills = customerBill!.getBills()
        

        // Do any additional setup after loading the view.
    }
    private func newBillButton()
    {
        let bill = UIBarButtonItem(title: " New Bill", style: .plain, target: self, action: #selector(self.newBill))
        self.navigationItem.rightBarButtonItem = bill
    }
    
    @objc func newBill()
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let bills = sb.instantiateViewController(identifier: "NewBills") as! AddNewBillViewController
        navigationController?.pushViewController(bills, animated: true)
    }

    

   
}
extension billsViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bills.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillTableViewCell")
        let bill = bills[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let b = bills[indexPath.row]
    }
    
}

