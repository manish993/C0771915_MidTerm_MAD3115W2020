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

    @IBOutlet weak var textLogin: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var SwitchrRemember: UISwitch!
    @IBOutlet weak var switchState: UISwitch!
      let email = "manishpawar@gmail.com"
        let password = "123"
            override func viewDidLoad() {
        super.viewDidLoad()
             // Do any additional setup after loading the view.
    
                
      
      
      
      
          self.navigationItem.title = "Login"
          
          
 
        let ud = UserDefaults.standard
            let e = ud.string(forKey: "email")
            let p = ud.string(forKey: "password")
         
            if let em = e {
                textLogin.text = "\(em)"
            }
            
            if let pa = p {
                textPassword.text = "\(pa)"
            }
            
        }
    
    
    @IBAction func btnLogin(_ sender: UIButton) {
    
    
    

       
            
            do{
                try login()
                if textLogin.text == email && textPassword.text == password{
                    if SwitchrRemember.isOn == true {
                        UserDefaults.standard.set(textLogin.text!, forKey: "email")
                        UserDefaults.standard.set(textPassword.text!, forKey: "password")
                    }
                    else {
                        UserDefaults.standard.removeObject(forKey: "email")
                        UserDefaults.standard.removeObject(forKey: "password")
                        textLogin.text = ""
                        textPassword.text = ""
                    }
                    performSegue(withIdentifier: "segue", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "ERROR", message:
                        "Access Denied", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

                    self.present(alertController, animated: true, completion: nil)
                }
                
            }catch LoginError.incomplete{
                let alertController = UIAlertController(title: "ERROR", message:
                    "Incomplete Form", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

                self.present(alertController, animated: true, completion: nil)
            }
            catch  LoginError.emailError{
                let alertController = UIAlertController(title: "ERROR", message:
                    "Invalid Email", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

                self.present(alertController, animated: true, completion: nil)
            }catch LoginError.passwordError {
                let alertController = UIAlertController(title: "ERROR", message:
                    "Invalid Password", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

                self.present(alertController, animated: true, completion: nil)
            }
            catch {
                print("Unrecognized error")
            }
        }
    
    }
    
        func login() throws{
            let email = textLogin.text!
            let pass = textPassword.text!

            if email.isEmpty || pass.isEmpty {
                throw LoginError.incomplete
            }
            if !email.isValidEmail{
                throw LoginError.emailError
            }
            if pass.count < 8 {
                throw LoginError.passwordError
            }

        }
        




  
     @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue)
     {
        print("Logout")
        
    }
        
        

    
    
                
    


