# Catstagram
- asset 미리 주어짐

## 🍎 ImageView의 ContentMode
- aspect fit 사용.
## 🍎 textfield의 placeholder

## 🍎 UIView를 이용한 얇은선 그리기

## 🍎 여러 프로퍼티를 동일한 액션으로 연결할 때, for each와 연산프로퍼티 사용
```swift
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var textFields: [UITextField] {
        [emailTextField, nameTextField, userNameTextField, passwordTextField]
    }
    private func setUpTextField() {
        textFields.forEach { tf in
            tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        }
    }
```
