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

import UIKit

/*:
 # Optionals
 */
let optionalNum: Int? = nil













/*:
 ## Optional Type
 ![optional-type-syntax](optional-type-syntax.png)
 */
let str: String = "Swift" // non-optional type
let optionalStr: String? = nil // 옵셔널 타입에는 nil을 저장할 수 있다. 옵셔널 스트링 타입.

let a: Int? = nil // 옵셔널 Int : 값을 가져도되고, 안가져도 되는 타입.

let b = a // 이렇게 하면 b의 자료형은 Int?가 된다.
b // 표현식을 평가한 결과가 optional로 리턴이 되면, optional expression이라고 한다.





//: [Next](@next)
