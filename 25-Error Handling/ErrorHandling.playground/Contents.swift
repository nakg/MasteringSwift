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
 # Error Handling
 
 ![throw](throw.png)
 ![throws](throws.png)
 */
// Error 프로토콜 채용. 필수멤버가 없다.
enum DataParsingError: Error {
	case invalidType
	case invalidField
	case missingRequiredField(String)
}

// Throwing function 구현.
func parsing(data: [String: Any]) throws {
	guard let _ = data["name"] else {
		throw DataParsingError.missingRequiredField("name") // throw문은 return과 마찬가지로, code 블록의 실행을 즉시 종료한다.
	}
	
	guard let _ = data["age"] else {
		throw DataParsingError.invalidType
	}
}





/*:
 # try Statements
 ![try](try.png)
 */
try? parsing(data: [:]) // parsing함수 호출. optional try로 빈 문자열 전달. -> nil 리턴.




