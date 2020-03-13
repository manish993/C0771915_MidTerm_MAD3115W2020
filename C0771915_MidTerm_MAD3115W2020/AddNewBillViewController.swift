//
//  AddNewBillViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController , UITextFieldDelegate{
    
    
    
    

    var customer: Customer?
    
    @IBOutlet weak var agency: UITextField!
    @IBOutlet weak var netProvider: UITextField!
    @IBOutlet weak var billId: UITextField!
    @IBOutlet weak var billDate: UITextField!
    @IBOutlet weak var unitsUsed: UITextField!
    @IBOutlet weak var gbUsed: UITextField!
    @IBOutlet weak var minutes: UITextField!
    @IBOutlet weak var billType: UISegmentedControl!
    @IBOutlet weak var manufacturer: UITextField!
    var datePicker: UIDatePicker!
    @IBOutlet weak var mobileNumber: UITextField!
    
    
    
       
       
           override func viewDidLoad() {
        super.viewDidLoad()
           
            billDate.delegate = self
            
            
        
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.billDate)
    }
    func pickUpDate(_ textField: UITextField)
    {
      //Date Picker
      self.datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
      self.datePicker.backgroundColor = UIColor.white
      self.datePicker.datePickerMode = UIDatePicker.Mode.date
      textField.inputView = self.datePicker
       
      //Toolbar
      let toolBar = UIToolbar()
      toolBar.barStyle = .default
      toolBar.isTranslucent = true
      toolBar.tintColor = .red
      toolBar.sizeToFit()
       
      //Adding Button Toolbar
      let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewBillViewController.doneClick))
      let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
      let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewBillViewController.cancelClick))
      toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
      toolBar.isUserInteractionEnabled = true
      textField.inputAccessoryView = toolBar
    }
     
    //Button Done and Cancel
    @objc func doneClick()
    {
      let dateformatter1 = DateFormatter()
      dateformatter1.dateStyle = .medium
      dateformatter1.timeStyle = .none
      billDate.text = dateformatter1.string(from: datePicker.date)
     billDate.resignFirstResponder()
    }
     
    @objc func cancelClick()
    {
      billDate.resignFirstResponder()
    }
    
    @IBAction func saveBills(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "", message:
             "Bill Added", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default))

         self.present(alertController, animated: true, completion: nil)    }
    

   
    @IBAction func biils(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
            {
                billId.isHidden = false
                billDate.isHidden = false
                manufacturer.isHidden = true
                minutes.isHidden = true
                mobileNumber.isHidden = true
                gbUsed.isHidden = true
               // mobilePlan.isHidden = true
                netProvider.isHidden = true
                agency.isHidden = true
                
                unitsUsed.isHidden = false
            }
            else if sender.selectedSegmentIndex == 1
            
            {
                billId.isHidden = false
                billDate.isHidden = false
                 manufacturer.isHidden = true
                 minutes.isHidden = true
                mobileNumber.isHidden = true
                 gbUsed.isHidden = true
                 //txtMobilePlan.isHidden = true
                 netProvider.isHidden = false
                 agency.isHidden = true
                 unitsUsed.isHidden = true
                
            }
            else if sender.selectedSegmentIndex == 2
            {
                 billId.isHidden = false
                 billDate.isHidden = false
                manufacturer.isHidden = false
                 minutes.isHidden = false
                mobileNumber.isHidden = false
                 gbUsed.isHidden = false
                 //MobilePlan.isHidden = false
                 netProvider.isHidden = true
                 
                 agency.isHidden = true
                 unitsUsed.isHidden = true
            }
            
        }
}
