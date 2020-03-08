//
//  ViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
enum LoginError: Error{
case emailError, passwordError, incomplete
}

class loginViewController: UIViewController {
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var textLogin: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var SwitchrRemember: UISwitch!
    
      
            override func viewDidLoad() {
        super.viewDidLoad()
                rememberMeSwitchValue()
             // Do any additional setup after loading the view.
    
                
}

    func rememberMeSwitchValue()
    {
        let userDefault = UserDefaults.standard
        
        if let userName = userDefault.string(forKey: "emailId")
        {
            textLogin.text = userName
            
            if let pwd = userDefault.string(forKey: "password")
            {
                textPassword.text = pwd
            }
        }
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
            
            if (textLogin.text == "" || textPassword.text == "")
            {
                let alert = UIAlertController(title: "Alert", message: "EmailID or password is empty", preferredStyle: .alert)
                let action = UIAlertAction(title: "Continue", style: .default, handler: nil)
                alert.addAction(action)
                self.present(alert,animated: true)
            }
            else if(textLogin.text == "manishpawar@gmail.com" && textPassword.text == "pawar"
            )
            {
                
                let userDefault = UserDefaults.standard
                if SwitchrRemember.isOn
                {
                    
                    userDefault.setValue(textLogin.text, forKey: "emailId")
                    userDefault.set(textPassword.text, forKey: "password")
                }
                else
                {
                    userDefault.removeObject(forKey: "userEmail")
                    userDefault.removeObject(forKey: "userPassword")
                }
                
            }
            else
            {
                let alert = UIAlertController(title: "Invalid User", message: "Incorrect EmailID or password!", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                self.present(alert, animated: true)
            }
        



        }
        
        
        @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue)
        {
          print("Logout")

        }
       
        
        


    }





   
  
    
                
    


