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
 # Adding Keys and Values
 */


var words = [String: String]() // 빈 딕셔너리 생성.

// 1. Subscript로 추가.
words["A"] = "Apple" // 키를 기준으로 값을 추가.
words["B"] = "Banana"
words.count // 2
words // ["B": "Banana", "A": "Apple"]

words["B"] = "Ball" // 기존에 키가 있으면, 새로운 요소가 추가되는 것이 아니라 기존에 저장된 값이 교체된다.
words.count // 2
words // ["B": "Ball", "A": "Apple"]

// 2. 메서드로 추가.
words.updateValue("City", forKey: "C") // C라는 키가 기존에 존재하지 않으므로 추가가 된다. 그리고 새로운 요소가 추가되었을 때에는 nil이 리턴된다.
words.updateValue("Circle", forKey: "C") // "City"가 리턴된다. 기존의 값을 덮어쓰고 기존의 값을 리턴해준다.
// -> insert + update = upsert







/*:
 # Removing Keys and Values
 */
// 삭제또한 키가 기준. Subscript가 가장 단순.
// 1. Subscript로 삭제.
words // ["C": "Circle", "A": "Apple", "B": "Ball"]
words["B"] = nil // 해당 요소 삭제.
words // ["C": "Circle", "A": "Apple"]

words["Z"] = nil // 존재하지 않는 키를 삭제하는 경우에는, 아무런 동작 없이 종료한다.

// 2. 메서드로 삭제.
words.removeValue(forKey: "A") // key와 관련된 요소 삭제하고, 삭제된 값을 리턴한다. Apple.
words.removeValue(forKey: "A") // 존재하지 않는 것을 삭제하면, nil 리턴하고 끝남.

// 전체 요소의 삭제.
words.removeAll()






















