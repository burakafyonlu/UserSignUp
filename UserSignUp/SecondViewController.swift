//
//  SecondViewController.swift
//  UserSignUp
//
//  Created by Burak Afyonlu on 10.01.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    var myUser = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = myUser
    }
}
