//
//  ViewController.swift
//  Login
//
//  Created by iMac on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeName = segue.destination as? WelcomeViewController else {return}
        welcomeName.nameForWelcome = userName.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (touches.first) != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
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
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userName.text = nil
        password.text = nil
    }
}

// MARK: - Alarm Methods
extension LoginViewController {
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
