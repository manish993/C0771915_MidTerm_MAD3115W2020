//
//  billsViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class billsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.newBillButton()
        self.navigationItem.title = "Bill Details"

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

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
