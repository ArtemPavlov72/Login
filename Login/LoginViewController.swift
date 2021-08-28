//
//  ViewController.swift
//  Login
//
//  Created by iMac on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    private let user = "Artem"
    private let password = "0000"
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeName = segue.destination as? WelcomeViewController else {return}
        welcomeName.user = user
    }
    
    @IBAction func logInPressed() {
        guard userNameText.text == user, passwordText.text == password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
            passwordText.text = nil
            return
        }
    }
    
    @IBAction func forgotUserPressed() {
        showAlert(with: "Oops!", and: "Your name is Artem 😉")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Oops!", and: "Your password is 0000 😃")
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        userNameText.text = nil
        passwordText.text = nil
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
        let alertOK = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertOK)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(
        _ touches: Set<UITouch>,
        with event: UIEvent?
    )
    {
         super.touchesBegan(touches, with: event)
         view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameText {
            passwordText.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showIsGo", sender: nil)
        }
        return true
    }
}


