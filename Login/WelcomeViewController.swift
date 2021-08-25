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
        
        welcomeUserName.text = "Welcome \(nameForWelcome ?? "Wrong name")!"
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        let colotTop = UIColor.init(red: 190.0/255.0, green: 127.0/255.0, blue: 140.0/255.0, alpha: 1)
        let colorBottom = UIColor.init(red: 105.0/255.0, green: 125.0/255.0, blue: 173.0/255.0, alpha: 1)
        gradient.colors = [colotTop.cgColor, colorBottom.cgColor]
        
        view.layer.insertSublayer(gradient, at: 0)
    }
}
