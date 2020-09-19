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
 # Adding Elements
 */
var alphabet = ["A", "B", "C"]

// 배열 마지막에 추가.
alphabet.append("E")
alphabet.append(contentsOf: ["F", "G"])

// 배열 요소 삽입. - append에 비해, overhead가 발생한다. 뒤에있는 요소들이 이동해야함.
alphabet.insert("D", at: 3)
alphabet.insert(contentsOf: ["a", "b", "c"], at: 0)

// 바꾸기.
// 1. subscript 문법
alphabet[0...2] = ["x", "y", "z"]
// 2. 메서드로 구현.
alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])
// 동일하지 않은 숫자로 바꾸기.
alphabet[0...2] = ["z"]
alphabet[0..<1] = [] // z를 삭제시킴.

/*:
 # Removing Elements
 */
alphabet = ["A", "B", "C", "D", "E", "F", "G"]

// 하나 삭제.
alphabet.remove(at: 2) // 삭제된 요소를 리턴까지 해준다.
alphabet.removeFirst() // 첫번재 요소 삭제. 삭제후 요소 리턴.
alphabet

alphabet.removeFirst(2) // 배열 앞부분에 2개를 삭제하고, 삭제후 리턴은 하지 않는다.
alphabet

alphabet.removeLast()
alphabet.removeAll() // 이 상태에서, removeFirst()나, removeLast()를 삭제하면 에러가 난다. 옵셔널리턴형이 아니고, 그냥 스트링을 리턴형으로 사용하기 때문에.


// 안전한 메서드들.
alphabet.popLast() // 옵셔널로 리턴한다. removeAll했기 때문에 nil 리턴. 마지막 요소를 삭제한다음 삭제된 요소를 리턴해줌.
alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast()
alphabet

alphabet.removeSubrange(0...2)
alphabet

alphabet[0...2] = [] // subscript 이용해서 삭제. 해당범위가 삭제된다.
alphabet















