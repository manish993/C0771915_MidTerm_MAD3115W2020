//
//  AddNewCustomerViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func addcustomers(_ sender: Any) {
        
        let id = self.id.text!
        let firstName = self.fname.text!
        let lastName = self.lname.text!
       // var name = firstName + lastName
        let email = self.email.text!
        
        DataStorage.getInstance().addCustomer(customer: Customer(customerID: id, firstName: firstName, lastName: lastName, emailID: email))
       
               let alertController = UIAlertController(title: " Customer Added", message:
                   "", preferredStyle: .alert)
              // alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))

               self.present(alertController, animated: true, completion: nil)
               
           
        
    }
    
}
