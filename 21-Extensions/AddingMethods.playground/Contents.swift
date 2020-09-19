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
 # Adding Methods
 */

extension Double {
	// 화씨온도로 변환하는 메서드.
	func toFahrenheit() -> Double {
		return self * 9 / 5 + 32
	}
	
	// 섭씨온도로 변환하는 메서드.
	func toCelsius() -> Double {
		return (self - 32) * 5 / 9
	}
	
	// Type metohds.
	static func converToFahrenheit(from celsius: Double) -> Double {
		return celsius.toFahrenheit() // 인스턴스 메서드 활용.
	}
}


let c = 30.0
c.toFahrenheit() // 86

Double.converToFahrenheit(from: 30.0) // 86


// 날짜를 문자열로 포맷팅하는 메서드.
extension Date {
	func toString(format: String = "yyyyMMdd") -> String {
		let privateFormatter = DateFormatter()
		privateFormatter.dateFormat = format
		return privateFormatter.string(from: self)
	}
}

let today = Date()
today.toString() // parameter 생략 사용. 20200910.
today.toString(format: "MM/dd/yyyy") // 09/10/2020.



// 지정된 길이의 랜덤 문자열을 생성하는 메서드.
extension String {
	static func random(length: Int, charactersIn chars: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789") -> String {
		var randomString = String()
		randomString.reserveCapacity(length) // 메모리 할당.
		
		for _ in 0 ..< length {
			guard let char = chars.randomElement() else {
				continue
			}
			randomString.append(char)
		}
		return randomString
	}
}

String.random(length: 5) // GpOBU
