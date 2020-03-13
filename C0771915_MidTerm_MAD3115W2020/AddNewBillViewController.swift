//
//  AddNewBillViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    
    

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var agency: UITextField!
    @IBOutlet weak var netProvider: UITextField!
    @IBOutlet weak var billId: UITextField!
    @IBOutlet weak var billDate: UITextField!
    
    @IBOutlet weak var unitsUsed: UITextField!
    @IBOutlet weak var gbUsed: UITextField!
    
    @IBOutlet weak var billType: UIPickerView!
    var pickerData:[String] = [String]()
    
       
       
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
    

   

}
