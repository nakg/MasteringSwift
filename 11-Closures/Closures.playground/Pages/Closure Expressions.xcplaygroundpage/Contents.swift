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
 # Closures
 ![closure-expr](closure-expr.png)
 ![closure](closure.png)
 */

let c = { print("Hello, Swift") }

//c()





let testClosure = { (str: String) -> String in
	return "Hello, \(str)"
}
let result = testClosure("Test Closure")
print(result)

func startClosure(closure: (String) -> String) {
	print(closure("Testing Parameter Closure"))
}
startClosure(closure: testClosure)







// 클로져를 파라미터로 전달해보기.
typealias SimpleStringClosure = (String) -> String

func perform(closure: SimpleStringClosure) {
	print(closure("iOS"))
}

perform(closure: testClosure) // Hello, iOS 리턴.

// argument에 클로져 자체를 넣어보자.
perform(closure: { (str: String) -> String in
	return "Hi, \(str)"
})






//: [Next](@next)
