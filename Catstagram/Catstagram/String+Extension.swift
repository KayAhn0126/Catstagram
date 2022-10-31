//
//  String+Extension.swift
//  Catstagram
//
//  Created by Kay on 2022/10/31.
//

import Foundation

extension String {
    // 대문자, 소문자, 숫자, 특수문자 1개씩 들어간 8자 이상 password인지 확인하기
    func isValidPassword() -> Bool {
        let regularExpression = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[$@$!%*?&]).{8,}"
        let passwordValidation = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        return passwordValidation.evaluate(with: self)
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = #"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}"#
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
