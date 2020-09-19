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

import Foundation

/*:
 # Array Basics
 ## Creating an Array
 */
let nums = [1, 2, 3] // 배열 literal로 생성함.
//let emptyArray = [] // 추론할 요소가 없어서 에러가난다.
let emptyArray: [Int] = []

let emptyArray2 = Array<Int>() // 생성자를 사용한 빈배열 새성. 정식문법.
let emptyArray3 = [Int]() // 생성자를 사용한 빈배열 새성. 단축문법.

let zeroAaray = [Int](repeating: 0, count: 10) // 배열을 만든후 기본값으로 채움. 0이 10개가 채워진 Int 배열 생성.















/*:
 ## Inspecting an Array
 */
nums.count // 저장된 요소의 숫자를, 정수로 리턴해준다. 카운트가 0이면 빈배열이다.
nums.count == 0 // false.
nums.isEmpty // false.
emptyArray.isEmpty // true.







/*:
 ## Accessing Elements
 */
// 접근하기.
let fruits = ["Apple", "Banana", "Melon"]
// 각 요소에 접근.
fruits[0]
fruits[2]
// 범위로 접근.
fruits[0...1]

fruits[fruits.startIndex]
fruits[fruits.index(before: fruits.endIndex)] // endIndex는 마지막 인덱스의 다음 인덱스이다.

fruits.first // optional이다. first가 있으면 정상리턴하고, 없으면 nil 리턴. -> Apple
fruits.last // -> Melon

emptyArray.first // nil
emptyArray[0] // -> 에러가 발생한다.






