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
 # Literal Option
 */
let a = "\u{D55C}" // 완성형으로 '한'을 저장
let b = "\u{1112}\u{1161}\u{11AB}" // 조합형 저장. ㅎ ㅏ ㄴ

a == b // true.
a.compare(b) // true.
// 스위프트는 단순히 코드만 비교하는게 아니라, 최종본을 가지고 비교한다. objc에서는 코드 유닛을 비교한다. 따라서, 옵젝씨에서는 위 결과가 달라진다.

// 스위프트에서 objc처럼, 코드유닛을 직접 비교하고 싶을 때 literal option 사용.
a.compare(b, options: [.literal]) // false.


















//: [Next](@next)
