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
 # Range Operators
 */


/*:
 ## Closed Range Operator
 ````
 a ... b
 a...
 ...a
 ````
 */
1 ... 10
(1 ... 10).reversed()

var sum = 0
for num in 1 ... 10 {
	num
	sum += num
}
sum

let list = ["A", "B", "C", "D", "E"]
list[2...]
list[...2]


/*:
 ## Half-Opern Range Operator
 ````
 a ..< b
 ..<a
 ````
 */

sum = 0
for num in 1 ..< 10 {
	num
	sum += num
}
sum

list
list[..<2]

let range = 0 ... 5
range.contains(7)

let range2 = ...5
range2.contains(-1)
range2.contains(Int.min)










