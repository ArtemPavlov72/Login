//
//  ViewController.swift
//  Login
//
//  Created by iMac on 24.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInPressed() {
        guard userName.text == "Artem", password.text == "0000" else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
            password.text = nil
            return
        }
        
    }
    
    @IBAction func forgotUserPressed() {
        showAlert(with: "Oops!", and: "Your name is Artem 😉")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Oops!", and: "Your password is 0000 😃")
    }
    
    
}

// MARK: - Alarm Methods
extension ViewController {
    private func showAlert(with title: String, and massage:String) {
        let alert = UIAlertController(
            title: title,
            message: massage,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
