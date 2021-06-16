//
//  RegistertViewController.swift
//  Task34-TikoJanikashvili
//
//  Created by Tiko on 16.06.21.
//

import UIKit

class RegistertViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Properties
    var defaults = UserDefaults.standard
    
    // MARK: - Life Cyrcle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK:  - IBActions
    @IBAction func onRegister(_ sender: Any) {
        guard let password = self.passwordTextField.text, let username = self.usernameTextField.text else { return }
        defaults.set(username, forKey: "username")
        defaults.set(password, forKey: "password")
        defaults.set(true, forKey: "is_logged_in")
        let sb = UIStoryboard(name: VCIds.note, bundle: nil)
        let vc = sb.instantiateViewController(identifier: VCIds.note)
        let nc = UINavigationController(rootViewController: vc)
        self.present(nc, animated: true, completion: nil)
        self.passwordTextField.text = ""
        self.usernameTextField.text = ""
    }
}
