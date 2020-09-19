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
 # Character Set
 */


let a = CharacterSet.uppercaseLetters // 대문자로만 모인, CharacterSet
let b = a.inverted // a 제외 모든 문자가 리턴됨.

// 캐릭터셋을 활용해서 검색코드를 구현해보자.
var str = "loRem Ipsum"
var charSet = CharacterSet.uppercaseLetters

// 대상 문자열에서 캐릭터셋에 포함된 문자를 검색한다. 대문자가 검색된다면, 첫번째 글자의 범위를 리턴해준다.
if let range = str.rangeOfCharacter(from: charSet) {
	print(str.distance(from: str.startIndex, to: range.lowerBound)) // 2가 출력.
}

// trailing부터 검색 시작.
if let range = str.rangeOfCharacter(from: charSet, options: [.backwards]) {
	print(str.distance(from: str.startIndex, to: range.lowerBound)) // 6이 출력.
}



str = " A p p l e "
// 문자열 양변에 공백은 제거하는것이 좋다.
charSet = .whitespaces // 공백, 탭 같은 문자들이 포함되어있는 characterset. 줄바꿈도 제거하고싶다면, whitespacesAndNewLines

let trimmed = str.trimmingCharacters(in: charSet) // 캐릭터셋에 포함된 문자를 제거하고, 새로운 문자열로 리턴해준다. 이 메서드는 문자열 양끝에있는 것만 제거해준다. 중간은 제거 안함.
print(trimmed)

// Character Set을 편집해보자.
var editTarget = CharacterSet.uppercaseLetters
editTarget.insert("#") // CharacterSet에 새로운 문자 추가. 1개를 추가 할 때 insert사용.
editTarget.insert(charactersIn: "~!@") // 문자열을 추가함. 하나씩 개별적으로 추가한것과 같다.
editTarget.remove("A") // 하나 삭제.
editTarget.remove(charactersIn: "BCD") // 3개 삭제.


// Custom Character Set을 만들어보자.
let customCharSet = CharacterSet(charactersIn: "@.") // 2개의 문자로 구성된 문자열을 포함시킨 캐릭터셋 생성. 생성자를 이용.

// 특정, 캐릭터셋을 기준으로 문자열을 분리해보자.
let email = "userId@example.com"
let components = email.components(separatedBy: customCharSet)
