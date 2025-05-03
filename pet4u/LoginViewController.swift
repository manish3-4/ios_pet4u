//
//  LoginViewController.swift
//  pet4u
//
//  Created by Student on 30/04/25.
//

import UIKit

class LoginViewController: UIViewController {
    

    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Pet4u Store Login"
    }

    @IBAction func loginTapped(_ sender: Any) {
    guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            showAlert(message: "Email and password required")
            return
        }
        
        // Basic validation
        if email == "user@gmail.com" && password == "123456" {
            performSegue(withIdentifier: "LoginToHome", sender: nil)
        } else {
            showAlert(message: "Invalid credentials")
        }
    }
    
    // Unwind action for Signup/Home → Login
    @IBAction func unwindToLogin(_ segue: UIStoryboardSegue) {
        emailTextField.text = ""
        passwordTextField.text = ""
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

