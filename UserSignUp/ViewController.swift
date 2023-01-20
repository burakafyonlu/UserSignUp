//
//  ViewController.swift
//  UserSignUp
//
//  Created by Burak Afyonlu on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keyboard = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(keyboard)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if userNameText.text == "" {
            let alert = UIAlertController(title: "Error", message: "Enter Username", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } else {
            
            let password1 = passwordText.text
            let password2 = passwordAgainText.text
                if password1  == "" {
                        let alert = UIAlertController(title: "Error", message: "Enter Password", preferredStyle: UIAlertController.Style.alert)
                        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel)
                        alert.addAction(okButton)
                        self.present(alert, animated: true)
            } else {
                
                    if password2  == "" {
                        let alert = UIAlertController(title: "Error", message: "Enter Password Again", preferredStyle: UIAlertController.Style.alert)
                        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel)
                        alert.addAction(okButton)
                        self.present(alert, animated: true)
                } else {
                    
                        if password1 != password2 {
                            let alert = UIAlertController(title: "Error", message: "Password Not Match", preferredStyle: UIAlertController.Style.alert)
                            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel)
                            alert.addAction(okButton)
                            self.present(alert, animated: true)
                    } else {
                        userName = userNameText.text!
                            performSegue(withIdentifier: "ToSecondVC", sender: nil)
                    }
                }
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            if segue.identifier == "ToSecondVC" {
                let destination = segue.destination as! SecondViewController
                destination.myUser = userName
        }
    }
}
