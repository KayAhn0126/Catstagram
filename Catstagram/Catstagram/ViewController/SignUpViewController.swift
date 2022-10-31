//
//  SignUpViewController.swift
//  Catstagram
//
//  Created by Kay on 2022/10/28.
//

import UIKit

class SignUpViewController: UIViewController {
    // MARK: - 유효성 검사를 위한 Property
    
    var isValidEmail = false {
        didSet { // 프로퍼티 옵저버
            self.validateUserInfo()
        }
    }
    
    var isValidName = false {
        didSet { // 프로퍼티 옵저버
            self.validateUserInfo()
        }
    }
    
    var isValidUsername = false {
        didSet { // 프로퍼티 옵저버
            self.validateUserInfo()
        }
    }
    
    var isValidPassword = false {
        didSet { // 프로퍼티 옵저버
            self.validateUserInfo()
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    var textFields: [UITextField] {
        [emailTextField, nameTextField, userNameTextField, passwordTextField]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTextField()
        self.signUpButton.isEnabled = false
        self.signUpButton.backgroundColor = UIColor(named: "disabledButtonColor")
        
    }
    
    // MARK: - Actions
    @objc func textFieldEditingChanged(_ sender: UITextField) {
        if let text = sender.text {
            switch sender {
            case emailTextField :
                self.isValidEmail = text.isValidEmail()
            case nameTextField :
                self.isValidName = text.count > 2 // 이름이 3글자 이상인지만 확인
            case userNameTextField :
                self.isValidUsername = text.count > 2 // 유저네임이 3글자 이상인지만 확인
            case passwordTextField :
                self.isValidPassword = text.isValidPassword()
            default:
                fatalError("Missing TextField")
            }
        }
    }
    
    // MARK: - Helpers
    // 여러개를 동일한 액션으로 연결할때, for each와 연산프로퍼티를 코드가 간결해진다.
    private func setUpTextField() {
        textFields.forEach { tf in
            tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        }
    }
    
    private func validateUserInfo() {
        if isValidEmail
            && isValidName
            && isValidUsername
            && isValidPassword {
            changeButtonColorSlightly(self.signUpButton, "facebookColor", true)
        } else {
            changeButtonColorSlightly(self.signUpButton, "disabledButtonColor", false)
        }
    }
    
    private func changeButtonColorSlightly(_ sender: UIButton, _ colorName: String, _ clickEnable: Bool) {
        UIButton.animate(withDuration: 0.5) {
            sender.isEnabled = clickEnable
            sender.backgroundColor = UIColor(named: colorName)
        }
    }
}
