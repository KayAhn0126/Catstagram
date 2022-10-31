//
//  LoginViewController.swift
//  Catstagram
//
//  Created by Kay on 2022/10/27.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttribute()
    }
    
    @IBAction func emailTextFieldEditingChanged(_ sender: UITextField) {
        if let currentText = sender.text {
            print(currentText)
        }
    }
    
    @IBAction func passwordTextFieldEditingChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        // 화면 전환
        // 1 스토리보드 생성
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // 2 뷰 컨트롤러 생성
        let signUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        
        // 3 화면전환 메서드 이용해 화면 전환
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
    private func setupAttribute() {
        // setting attributes for signUpButton
        let askQuestionText = "계정이 없으신가요?"
        let signUpText = "가입하기"
        
        let askQuestionTextFont = UIFont.systemFont(ofSize: 13)
        let signUpTextFont = UIFont.boldSystemFont(ofSize: 13)
        
        let askQuestionTextColor = UIColor.darkGray
        let signUpTextColor = UIColor(named: "facebookColor")!
        
        let attributes = generateButtonAttribute(self.signUpButton,
                                                 texts: askQuestionText, signUpText,
                                                 fonts: askQuestionTextFont, signUpTextFont,
                                                 colors: askQuestionTextColor, signUpTextColor)
        
        self.signUpButton.setAttributedTitle(attributes, for: .normal)
    }
}
