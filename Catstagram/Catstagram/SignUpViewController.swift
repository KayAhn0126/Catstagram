//
//  SignUpViewController.swift
//  Catstagram
//
//  Created by Kay on 2022/10/28.
//

import UIKit

class SignUpViewController: UIViewController {
    // MARK: - Property
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var textFields: [UITextField] {
        [emailTextField, nameTextField, userNameTextField, passwordTextField]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTextField()
    }
    
    // MARK: - Actions
    @objc func textFieldEditingChanged(_ sender: UITextField) {
        if let text = sender.text {
            switch sender {
            case emailTextField :
                print("email")
            case nameTextField :
                print("name")
            case userNameTextField :
                print("userName")
            case passwordTextField :
                print("password")
            default:
                fatalError("Missing TextField")
            }
        }
    }
    
    // MARK: - Helpers
    private func setUpTextField() {
        textFields.forEach { tf in
            tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        }
    }
    // 여러개를 동일한 액션으로 연결할때, for each와 연산프로퍼티를 코드가 간결해진다.
}
