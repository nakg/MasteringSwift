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
import Foundation
/*:
 # Dictionary
 ## Dictionary Literal
 ![dictliteral](dict-literal.png)
 */

var dict = ["A": "Apple", "B": "Banana"] // 2개의 요소.

dict = [:] // 빈 딕셔너리를 저장할 때 []만쓰면 빈배열이되서 에러가 발생한다. [:]














/*:
 ## Dictionary Type
 ![type1](dict-type.png)
 ![type2](dict-type2.png)
 */

let dict1: Dictionary<String, Int>
let dict2: [String: Int]












/*:
 ## Creating a Dictionary
 */

let words = ["A": "Apple", "B": "Banana", "C": "City"] // 리터럴로 Dictionary 생성.

let emptyDict: [String: String] = [:] // 빈 딕셔너리 생성. 명시적으로 자료형 선언할 것.
let emptyDict2 = [String: String]() // 생성자 사용해서 빈딕셔너리 생성. 단축문법.
let emptyDict3 = Dictionary<String, String>() // 생성자 사용해서 빈딕셔너리 생성. 정식문법.















/*:
 ## Inspecting a Dictionary
 */

// 저장된 요소의 수를 확인. 배열과 완전히 동일.
words.count // 수
words.isEmpty // 비어있는지 확인.




/*:
 ## Accessing Keys and Values
 */
// 요소에 접근.
// 서브스크립트 문법 사용.
words["A"] // key를 전달. Apple.
words["Apple"] // value는 이렇게 전달 못함. nil. 값으로 키 찾는건 제공하지 않음.

let a = words["E"] // nil. a의 자료형은 정상적이었다면 String이었겠지만, nil이 왔기 떄문에 a의 자료형은 String?. Dictionary를 Key로 접근해서 끌어오면 항상 옵셔널타입으로 저장됨.
let b = words["E", default: "Empty"] // 키와연관된 값이 nil이면 Empty를 리턴한다. 이렇게 하면 옵셔널이아닌 실제타입이 리턴된다. String타입. 어떤 경우에도 문자열이 리턴되기 때문에 non optional.

// 딕셔너리는, 키와 값을 개별적으로 리턴하는 속성을 제공한다.
// words.keys는 배열은 아니지만, 내부적으로 컬렉션 반복형이기 때문에 for-in 반복문이 가능하다.
for k in words.keys {
	print(k)
} // B C A 출력.

for v in words.values {
	print(v)
} // Apple City Banana 출력.

// words.keys 같은건 배열은 아니지만, 배열의 속성을 갖는다.
for k in words.keys.sorted() {
	print(k)
} // A B C

// 위 배열의 속성갖는 것들을, 배열로 바꾸고싶다면 배열생성자를 만들면 된다.
let keys = Array(words.keys)
let values = Array(words.values)















