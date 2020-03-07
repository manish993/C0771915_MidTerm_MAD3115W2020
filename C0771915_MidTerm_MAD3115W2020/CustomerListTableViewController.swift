//
//  CustomerListTableViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
class CustomerListTableViewController: UIViewController {

    @IBOutlet weak var tblCustomer: UITableView!
    @IBOutlet weak var lblWelcome: UILabel!
    var customerNames:[Customer] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationController?.hidesBarsOnTap = true
        //Hide Back Button from navigation Bar
        self.navigationItem.hidesBackButton = true
        customerNames = DataStorage.getInstance().getAllCustomers()
        let userDefault = UserDefaults.standard
        
        if let username = userDefault.string(forKey: "userEmail")
        {
           lblWelcome.text =  "Welcome, \(username)"
        }

        // Do any additional setup after loading the view.
    }
}

extension CustomerListTableViewController: UITableViewDataSource, UITableViewDelegate
    {
        func numberOfSections(in tableView: UITableView) -> Int
        {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return customerNames.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell")
            
            let customer = customerNames[indexPath.row]
            cell?.textLabel?.text = customer.fullName
            //cell?.detailTextLabel?.text = customer.
            //cell?.imageView?.image = country.flag
            return cell!
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
            let c = customerNames[indexPath.row]
            print(c.fullName)
        }
    }
    
