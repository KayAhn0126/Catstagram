# Catstagram

## 🍎 UIView를 이용한 얇은선 그리기
- [얇은선 그리기](https://github.com/KayAhn0126/iOS-Study/tree/main/UI/UIView/DrawingAThinLineUsingUIView)

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

## 🍎 정규식 표현 정리
- [정규 표현식](https://github.com/KayAhn0126/iOS-Study/tree/main/GrammarAndKnowledge/RegularExpression)

## 🍎 @IBInspectable & @IBDesignable
[@IBInspectable & @IBDesignable 정리](https://github.com/KayAhn0126/iOS-Study/tree/main/UI/IBInspectable)

## 🍎 화면간 데이터 전달 방법
- 상황: 처음 이용하는 사용자가 SignUpVC를 통해 계정을 만들고, 정상적으로 생성이 되었다면 LoginVC에 넘겨줘 아이디와 비밀번호가 맞는지 체크하는 상황 (현재 코드에서는 데이터베이스가 없어 구조체를 타입으로 가지는 프로퍼티에 저장하고 비교한다)
- [클로져를 이용해 데이터 전달](https://github.com/KayAhn0126/iOS-Study/tree/main/UI/DataTransferBetweenScreens)방법을 활용해 데이터를 전달했다.
![](https://i.imgur.com/d58boIU.png)

## 🍎 버튼 내 특정 구간 속성 변경
- [Applying a new attribute to the UIButton](https://github.com/KayAhn0126/iOS-Study/tree/main/UI/UIButton/ApplyingAttributeToButton)

## 🍎 Label내 특정 구간 속성 변경
- [Applying a new attribute to the UILabel](https://github.com/KayAhn0126/iOS-Study/tree/main/UI/UILabel/ApplyingAttributeToLabel)

## 🍎 버튼이 클릭이 되었을때 다른 이미지로 바꿔주기 (Default <-> Selected)
[버튼 클릭시 변환 정리](https://github.com/KayAhn0126/iOS-Study/tree/main/UI/UIButton/WhenButtonIsSelected)

## 🍎 xib파일 등록하기
```swift
let feedNib = UINib(nibName: "FeedTableViewCell", bundle: nil)
tableView.register(feedNib, forCellReuseIdentifier: "FeedTableViewCell")
        
let storyNib = UINib(nibName: "StoryTableViewCell", bundle: nil)
tableView.register(storyNib, forCellReuseIdentifier: "StoryTableViewCell")
```
## 🍎 xib를 통해 collectionViewCell를 만들때 주의점
- tableViewCell을 만들때는 ContentView라는 이름으로 UIView의 객체가 자동으로 주어졌다.
    ![](https://i.imgur.com/4WoMAuv.jpg)
- 하지만 collectionViewCell은 아래의 사진처럼 아무것도 없으므로 UIView를 추가 해주어야 한다.
    ![](https://i.imgur.com/0ptdRoM.jpg)
    - 즉 테이블 뷰는 자동으로 UIView를 제공해주지만, 콜렉션뷰는 직접 UIView를 추가해줘야 한다.

## 🍎 버튼의 터치 영역은 그대로 이미지만 줄이기
- [버튼의 image inset 적용 정리](https://github.com/KayAhn0126/iOS-Study/tree/main/UI/UIButton/ApplyingImageInset)

## 🍎 AlamoFire를 통한 네트워킹
- [Alamofire를 통한 네트워킹 및 메모리 누수 점검](https://github.com/KayAhn0126/Network/tree/main/Catstagram_Alamofire)

## 🍎 프로토콜을 이용해 VC간 결합도 줄이기
- [Reduction of coupling between two VCs by using protocol](https://github.com/KayAhn0126/iOS-Study/tree/main/DesignPattern/DelegateProtocolwithLowCoupling)
- [참고자료 - 여러가지 VC간 데이터 전달](https://github.com/KayAhn0126/iOS-Study/tree/main/UI/DataTransferBetweenScreens)

## 🍎 해결하지 못한 부분 (해결완료)
![](https://i.imgur.com/zBLkjnm.png)
- 프로필 UI를 구성하기 전이다. UIBarButtonItem를 커스텀한 부분이 문제인것 같은데, 정확히 무엇이 문제인지 파악하지는 못했다.
    - **찾아보니 iOS 16에서만 발생하는 문제라고 한다.**


