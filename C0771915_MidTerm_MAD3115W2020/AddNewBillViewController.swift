//
//  AddNewBillViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController {
    
    
    
    

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var agency: UITextField!
    @IBOutlet weak var netProvider: UITextField!
    @IBOutlet weak var billId: UITextField!
    @IBOutlet weak var billDate: UITextField!
    
    @IBOutlet weak var unitsUsed: UITextField!
    @IBOutlet weak var gbUsed: UITextField!
    
    
    
    
       
       
           override func viewDidLoad() {
        super.viewDidLoad()
            let datePicker = UIDatePicker()
            datePicker.datePickerMode = .date
            
//            pickerData = ["Hydro","Internet","Mobile"]
//            datePicker.isHidden = true
//            gbUsed.isHidden = true
//            unitsUsed.isHidden = true
//            netProvider.isHidden = true
//            agency.isHidden = true
        
    }
    

   
    @IBAction func biils(_ sender: UISegmentedControl) {
        
    }
    
}
