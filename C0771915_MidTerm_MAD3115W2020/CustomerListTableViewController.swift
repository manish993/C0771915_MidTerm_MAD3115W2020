//
//  CustomerListTableViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
class CustomerListTableViewController: UIViewController {

    @IBOutlet weak var customerTableView: UITableView!
    
 var customers:[Customer] = []
    override func viewDidLoad() {
        super.viewDidLoad()
}
        //self.navigationController?.hidesBarsOnTap = true
        //Hide Back Button from navigation Bar
        

}
extension CustomerListTableViewController: UITableViewDataSource,UITableViewDelegate
   {
       
       
       func numberOfSections(in tableView: UITableView) -> Int
       {
           return 1
       }
       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return customers.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell")
           let customer = customers[indexPath.row]
           cell?.textLabel?.text = customer.fullName
           return cell!
       }
       
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
       {
           let c = customers[indexPath.row]
           print(c.fullName)
           self.performSegue(withIdentifier: "segueBillDetails", sender: self)
           
       }
       
       
       
   }
   
