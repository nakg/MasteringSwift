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
//: [Previous](@previous)

import UIKit

/*:
 # Numeric Option
 */
// 스위프트는 기본적으로, 문자에 할당되어있는 아스키 코드를 비교 한다. 사전순이 아니다.
"A" < "B" // true
"a" < "B" // false

// 정렬을 한다고 해보자. 아래는 9가 앞에와야함.
let file9 = "file9.txt"
let file10 = "file10.text"

file9 < file10 // false. 9가 1보다 크므로 file10이 더 작아지는 현상. 사전과 다른 순서.
file9.compare(file10) == .orderedAscending // 위와 같은 이유로 false가 리턴된다.

file9.compare(file10, options: [.numeric]) == .orderedAscending // 문자열에 포함된 숫자를, 숫자 자체로 비교하게 해준다.
"a".compare("B", options: [.numeric]) == .orderedAscending








//: [Next](@next)
