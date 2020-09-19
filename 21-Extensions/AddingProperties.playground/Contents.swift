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
 # Adding Properties
 */

// 날짜 처리 방식 Date 확장.
extension Date {
	// 연도 return computed property.
	var year: Int {
		let cal = Calendar.current
		return cal.component(.year, from: self) // 속성 내부에서 날짜 인스턴스에 접근할 때에는 self로 접근한다.
	}
	
	var month: Int {
		let cal = Calendar.current
		return cal.component(.month, from: self) // 속성 내부에서 날짜 인스턴스에 접근할 때에는 self로 접근한다.
	}
}

let today = Date() // 현재 날짜 저장.
today.year // 2020.
today.month


// Double extension 예제.
extension Double {
	var radianValue: Double {
		return (Double.pi * self) / 180.0
	}
	
	var degreeValue: Double {
		return self * 180.0 / Double.pi
	}
}

let dv = 45.0
dv.radianValue
dv.radianValue.degreeValue













