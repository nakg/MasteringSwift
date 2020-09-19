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
 # Strings and Characters
 */
let s = "String"
let c: Character = "C"

let emptyChar: Character = " " // Character에는 빈값을 저장할 수 없다.
let emptyString = ""

emptyString.count

// 문자열에서 빈문자열을 저장하려면, 공백이 없어야하고(count가 0), 캐릭터타입에서는 공백을 추가해야한다.

let emptyString2 = String() // 생성자로 빈문자열 넣기.








/*:
 ## String Types
 */
var nsstr: NSString = "str"
var SwiftStr: String = nsstr as String

nsstr = SwiftStr as NSString











/*:
 ## Mutability
 */

let immutableStr = "str"
//immutableStr = "new str" -> 에러

// 문자열을 변수로 설정하면, 언제든지 새로운 문자열로 저장할 수 있다.
var mutableStr = "str"
mutableStr = "new str"





















/*:
 ## Unicode
 */
let str = "Swift String" // unicode에 독립적.

// 위 문자열을 utf-8 인코딩으로 처리해야한다고 가정해보자.
str.utf8
str.utf16

var thumbUp = "🖐" // 유니코드 문자를 직접 입력하는것도 가능하다. 유니코드 문자열의 코드값으로 입력하는 것도 가능하다. - 유니코드 스칼라

thumbUp = "\u{1F44D}"

//👍
//올린 엄지
//유니코드: U+1F44D, UTF-8: F0 9F 91 8D
















