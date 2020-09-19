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
 # String Basics
 */

// 문자열 literal을 사용해서 문자열 만들기.
var str = "Hello, Swift String"
var emptyStr = "" // 빈 문자열 생성.
emptyStr = String() // 생성자 사용하면서 빈문자열 생성. 주로 다른 타입을 문자열로 바꿀 때 사용.

let a = String(true)
let b = String(12)
let c = String(12.34)
let d = String(str)

// 숫자를 특정진법으로 바꾸기.
let hex = String(123, radix: 16) // 16진수생성.
let octal = String(123, radix: 8)
let binary = String(123, radix: 2)

// 특정, 문자를 원하는 갯수만큼 채워서 초기화.
let repeatStr = String(repeating: "😎", count: 7) // 스위프트는 유니코드를 지원한다. 따라서, 이런 입력이 가능하다.
let unicode = "\u{1f44f}"

// String Interpolation은 문자열을 동적으로 구성할 때 사용한다.
let e = "\(a) \(b)"
let f = a + " " + b // +로 스트링을 합칠 수도 있다.
str += "!!" // 메서드를 통해서 연결할 수도 있다.

// 문자열이 얼마나 긴지 확인하기.
str.count
str.count == 0 // 문자열이 비어있는지 확인하기.
str.isEmpty // 빈문자열인지 확인.
str == "Apple" // 다른 문자열과 비교.
"apple" != "Apple" // 다르면 true 겠지.

// 문자열 크기를 비교
"apple" < "Apple" // false. 사전순서. 같은문자 인경우에는 문자 코드를 비교.

// 대소문자 변환
str.lowercased() // 모든 문자를 소문자로 변환해서 리턴한다. ed로 끝나는 메서드는 보통 원본은 건드리지 않는다. 원본 그대로두고, 새로운 문자를 리턴한다. ing로 끝나는 메서드도 이런식이다.
str.uppercased()
str // 그대로 있다.

str.capitalized // 각 단어의 첫번째 글자를 대문자로 만든다. 띄어쓰기 기준. 원본은 그대로 둔다.
"apple ipad".capitalized

// 문자열은 문자의 집합이다. character sequence이다. sequence이기에 for-in반복문에서 실행할 수 있다. 배열이기에 아래 3개를 해볼 수 있다.
for char in "Hello" {
	print(char)
}
let num = "1234567890"
num.randomElement() // 랜덤 1개 출력.
num.shuffled() // 섞기.
