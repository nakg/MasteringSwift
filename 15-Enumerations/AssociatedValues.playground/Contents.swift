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
 # Associated Values
 ![associated-values](associated-values.png)
 */

// 화면 해상도를 함께 저장해보자. 원시값을 문자열로 선언해서 해보자.
//enum VideoInterface: String {
//	case dvi = "1028x768"
//	case hdmi = "2048x1536"
//	case displayPort = "3840x2160"
//}
// 에러는 나지 않지만, 문자열에서 또 숫자로 추출해야한다. 또한, 해상도를 1개씩밖에 표현하지 못한다. 그리고 원시값은 다 동일한 타입으로만 해야한다.

// 연관값은 저장할 값의 형식을 개별 케이스마다 따로 생성한다. 연관값은 튜플로 선언한다! 타입제한도 없다. 케이스마다 저장할 수도 있음. 연관값은 선언시점이 아닌, 새로운 열거형 값을 생성할 때 사용한다.

// RawValue와 연관값은 선언하는 문법이다르고, 값을 저장하는 시점도 다르다. 두 값은 서로 베타적이어서 하나의 열거형에서 함게 사용할 수가 없다.

// 연관값 사용.
enum VideoInterface {
	case dvi(width: Int, height: Int)
	case hdmi(Int, Int, Double, Bool)
	case displayPort(CGSize)
}

// 새로운 케이스 생성.
var input = VideoInterface.dvi(width: 2048, height: 1536)
input = .hdmi(3840, 2160, 2.1, true) // input은 VideoInterface.type 타입이다. 따라서, 다른 케이스로 바꾸어 타입을 바뀌어도, 문제가 생기지 않는다.


// Enumeration Case Pattern
switch input {
case .dvi(2048, 1536):
	print("dvi 2048 x 1536")
case .dvi(2048, _):
	print("dvi 2048 x Any")
case .dvi:
	print("dvi")
case .hdmi(let width, let height, let version, var audioEnabled):
	print("hdmi \(width)x\(height)")
case let .displayPort(size):
	print("dp")
}










