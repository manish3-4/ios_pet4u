//
//  SignupViewController.swift
//  pet4u
//
//  Created by Student on 30/04/25.
//

import UIKit

class SignupViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
   
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Sign Up"
    }
    
    
    @IBAction func signupTapped(_ sender: UIButton) {
    guard let username = usernameTextField.text, !username.isEmpty,
              let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            showAlert(message: "All fields required")
            return
        }
        
        // Save user locally (for demo)
        UserDefaults.standard.set(username, forKey: "username")
        
        // Trigger unwind segue
        performSegue(withIdentifier: "SignupToLogin", sender: nil)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}
