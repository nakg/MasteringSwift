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
 # String Interpolation
 ![placeholder](placeholder.png)
 */
var str = "12.34KB"

let size = 12.34
str = String(size) + "KB" // double을 문자열로 바꾸고 저장.
str = "\(size)KB"











/*:
 ## Format Specifier
 ![format-specifier](format-specifier.png)
 */

str = String(format: "%.1fKB", size)


String(format: "Hello, %@", "Swift")

String(format: "%d", 12)

String(format: "%f", 12.34)

String(format: "[%d]", 123)
String(format: "[%10d]", 123)
String(format: "[%-10d]", 123)

let firstName = "Yoon-ah"
let lastName = "Lim"

let korFormat = "그녀의 이름은 %2$@ %1$@ 입니다."
let engFormat = "Her name is %@ %@."

String(format: korFormat, firstName, lastName)
String(format: engFormat, firstName, lastName)


str = "\\"
print(str)

print("A\tB")
//\t -> Tab 1번 추가.

print("C\nD")
//\n -> 계행 추가.

print("\"Hello He said.\"")
