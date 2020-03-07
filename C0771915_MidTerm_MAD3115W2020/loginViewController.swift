//
//  ViewController.swift
//  C0771915_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var textLogin: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var SwitchrRemember: UISwitch!
    @IBOutlet weak var switchState: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        getRememberMeValues()        // Do any additional setup after loading the view.
    }

   /* @IBAction func loginBtn(_ sender: Any) {
        let alertController = UIAlertController(title: "Login", message:
            "Invalid user", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))

        self.present(alertController, animated: true, completion: nil)
        
    }*/
    
        
        private func getRememberMeValues()
        {
            let userDefault = UserDefaults.standard
            
            if let userName = userDefault.string(forKey: "userEmail")
            {
                textLogin.text = userName
                
                if let pwd = userDefault.string(forKey: "userPassword")
                {
                    textPassword.text = pwd
                }
            }
        }
        @IBAction func btnSignin(_ sender: UIButton) {
            
            if self.textLogin.text == "jyothi05" && self.textPassword.text == "jyothi05"
            {
                let userDefault = UserDefaults.standard
                if switchState.isOn
                {
                    
                    userDefault.setValue(textLogin.text, forKey: "userEmail")
                    userDefault.set(textPassword.text, forKey: "userPassword")
                }
                else
                {
                    userDefault.removeObject(forKey: "userEmail")
                    userDefault.removeObject(forKey: "userPassword")
                }
            }
            else
            {
                let alert = UIAlertController(title: "Error", message: "Sorry, Try again, User Email / Password Invalid", preferredStyle: .alert)
                
                let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
                
                alert.addAction(okButton)
                
                self.present(alert, animated: true)
            }
                
    }
    @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue)
    {
      print("Logout")
    }
}

