# Catstagram
- asset 미리 주어짐!

## 🍎 UIView를 이용한 얇은선 그리기
![](https://i.imgur.com/ojWaOlK.png)
- 빨간 타원형 안에있는 실선은 UIView를 생성하고 높이를 1로 두어 만든 실선이다.
- 아래는 해당 UIView의 속성
![](https://i.imgur.com/soZgw9o.png)

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
- 링크 추가 예정.

## 🍎 label내 특정 구간 속성 변경
- 링크 추가 예정.

## 🍎 버튼이 클릭이 되었을때 다른 이미지로 바꿔주기 (Default <-> Selected)
- 인스타그램의 좋아요 또는 북마크를 클릭하면 색이 변하는걸 볼 수 있다.
- 클릭하기 전의 하트 버튼과 속성 값은 아래 사진과 같다.
![](https://i.imgur.com/ASTWpUT.jpg)
- 클릭 되었을때 이미지가 바뀌어질 버튼을 클릭하고 inspector 창에서 State Config 프로퍼티를 selected로 바꿔준다.
- 그럼 기존 이미지가 없어지고 빈칸이 생기는데 여기에 클릭이 되었을때 바뀌어질 이미지를 넣는다.
![](https://i.imgur.com/QIUie0G.jpg)

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

