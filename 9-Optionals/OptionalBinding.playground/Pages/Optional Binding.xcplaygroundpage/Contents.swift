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
 # Optional Binding
 */
var num: Int? = nil













/*:
 ## Syntax
 ![optional-binding-syntax](optional-binding-syntax.png)
 */

if num != nil {
	print(num!) // 이 블락 안에서 num은 Optional Int이다.
} else {
	print("empty")
}

if let num = num {
	print(num) // 이 블락 안에서 num은 unwrapping이 완료되어, Int이다.
} else {
	print("empty")
}


var str: String? = "str"
guard let str = str else {
	fatalError()
}
str

num = 123

if var num = num {
	num = 456
	print(num)
}

let a: Int? = 12
let b: String? = "str"

if let num = a, let str = b, str.count > 5 {
	
}











































