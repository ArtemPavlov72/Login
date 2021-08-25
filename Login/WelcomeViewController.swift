//
//  WelcomeViewController.swift
//  Login
//
//  Created by iMac on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserName: UILabel!
    
    var nameForWelcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserName.text = "Welcome \(nameForWelcome!)!"
    }
}
