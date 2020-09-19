//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit

/*:
 # Enumerations
 ![enum](enum.png)
 */

// 워드프로세서 정렬을 정수로 짜보자.
//let left = 0
//let center = 1
//let right = 2
//
//var alignment = center
// - 정렬에 사용하는 값을 모른다면, 0,1,2를 어떻게 쓰는지 모른다. 가독성이 최악.
// - left에 123을 저장해도 에러는 발생하지 않는다. 안전성 측면에서도 나쁘다.

// 가독성을 높여보자. 값만으로 파악할 수 있게.
let left = "left"
let center = "center"
let right = "right"

var alignment = center

if alignment == "Center" {
	
}

// -> 대소문자의비교, 오타가능 여부 등 안전성에는 아직 문제가 있다.




/*:
 ## Syntax
 ![syntax](enum-syntax.png)
 */

enum Alignment {
	case left
	case center
	case right
}

Alignment.center // 열거형 이름을통해 정렬에 쓴다는것이 파악이 되고, center를 통해 가운데 정렬임이 파악된다. 또한, 자동완성을 통해 선언을 안봐도 어떤케이스가 있는지 알 수 있다. 오타도 발생 안한다.

var textAlignment = Alignment.center // 독립적인 값이다. 코드에서 의미가 변하지 않는다. 열거형 케이스도 엄연히 독립적인 '값'이다.
// textAlignment의 타입은 Alignment.type
textAlignment = .left // 앞에서 열거형을 저장했기 때문에, 컴파일러가 이 값이 열거형이란것을 알고있다. 열거형 이름을 생략하고 케이스만 쓸 수 있다. '.'은 생략 할 수 없다.

// - 앞으로 .~~ 보면 이건 열거형이네! 이름이 생략되어있네! 파악하자.

// textAlignment = nil // 케이스로 선언하지 않은 값을 저장하면 에러가 발생한다. 오타도.

// - 앞으로 앱을만들면서 다양한 프레임워크 및 라이브러리를 사용하면 많은 열거형을 볼 수 있다.


// 열거형을 비교하는 코드. 열거형 케이스는 값이기 때문에 비교연산자로 비교한다.
if textAlignment == .center {
	
}

// 열거는 스위치가 깔끔하다. 매칭시키는 코드가 깔끔함. 다쓰면 defaut는 없다.
switch textAlignment {
case .left:
	print("left")
case .right:
	print("right")
case .center:
	print("center")
}



















