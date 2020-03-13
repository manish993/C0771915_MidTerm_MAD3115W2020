//
//  AddNewBillViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController {
    
    
    
    

   
    @IBOutlet weak var agency: UITextField!
    @IBOutlet weak var netProvider: UITextField!
    @IBOutlet weak var billId: UITextField!
    @IBOutlet weak var billDate: UITextField!
    @IBOutlet weak var unitsUsed: UITextField!
    @IBOutlet weak var gbUsed: UITextField!
    @IBOutlet weak var minutes: UITextField!
    @IBOutlet weak var billType: UISegmentedControl!
    @IBOutlet weak var manufacturer: UITextField!
    
    @IBOutlet weak var mobileNumber: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
       
       
           override func viewDidLoad() {
        super.viewDidLoad()
            
            
            
        
    }
    

   
    @IBAction func biils(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        
        {
        case 0:
            netProvider.isHidden  = true
           // txtMobilePlan.isHidden = true
            gbUsed.isHidden = true
            mobileNumber.isHidden = true
           manufacturer.isHidden = true
            minutes.isHidden  = true
            break
            
        case 1:
            agency.isHidden = true
            unitsUsed.isHidden = true
            //netProvider.isHidden = true
        
        case 2:
             mobileNumber.isHidden = true
             manufacturer.isHidden = true
             minutes.isHidden  = true
            agency.isHidden = true
            unitsUsed.isHidden = true
        default:
            print("hello")
        }
    }
    
}
