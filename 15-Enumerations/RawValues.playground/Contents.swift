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
 # Raw Values
 ![Raw Values](raw-values.png)
 */

// 원시값 셋팅만 생략한 원시값 있는 enum 만들기.
enum Alignment: Int {
	case left
	case center = 100
	case right
}

// 원시값에 접근하기.
Alignment.left.rawValue // 0 : 자동셋팅.
Alignment.right.rawValue // 100
Alignment.center.rawValue // 101

// Alignment.left.rawValue = 10 // immutalble. 값을 바꾸는 것은 불가.


// 열거형의 생성자.
Alignment(rawValue: 0) // left 생성.
Alignment(rawValue: 200) // nil 리턴. 생성자의 리턴형은 옵셔널임. Alignment?


// 요일 처리해보자. - 열거형은 이렇게 한정된 값을 처리하는데 많이 사용한다.
enum Weekday: String {
	case sunday
	case monday = "MON"
	case tuesday
	case wednesday
	case thursday
	case friday
	case saturday
}

Weekday.sunday.rawValue // sunday - case 이름과 동일한 문자열이 원시값으로 디폴트 셋팅된다.
Weekday.monday.rawValue


// 원시값의 형태를 캐릭터로 선언해보자.
enum ControlChar: Character {
	case tab = "\t"
	case newLine = "\n"
}
// -> 원시값의 자료형을 캐릭터로 했을 때에는, 디폴트가 없다. 반드시 직접 지정.











