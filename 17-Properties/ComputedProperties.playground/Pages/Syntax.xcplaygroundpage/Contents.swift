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
 # Computed Properties
 ![computed](computed.png)
 */


class Person {
	var name: String
	var yearOfBirth: Int
	
	init(name: String, year: Int) {
		self.name = name
		self.yearOfBirth = year
	}
	
	// 계산속성 추가.
	var age: Int {
		get {
			// 현재 날짜에서 연도를 추출한 다음에, 속성에 저장된 값을 뺀 결과를 리턴한다.
			let calendar = Calendar.current
			let now = Date()
			let year = calendar.component(.year, from: now)
			return year - yearOfBirth
		}
		
		set {
			let calendar = Calendar.current
			let now = Date()
			let year = calendar.component(.year, from: now)
			yearOfBirth = year - newValue // set키워드 다음 파라미터 생략. age속성으로 전달되는 값.
		}
	}
}

let p = Person(name: "John Doe", year: 2002)
p.age // get 블록 실행. 18.
p.yearOfBirth // 2002

p.age = 50 // set 블록 실행.
p.yearOfBirth // 1970

// -> set블록 삭제하면, 읽기 전용 계산속성이 된다.











/*:
 ## Read-only Computed Properties
 ![readonly-1](readonly-1.png)
 ![readonly-2](readonly-2.png)
 */
// 읽기전용. set을 생략. 그리고 아래처럼 읽기 전용은 get {} 자체가 생략이 될 수 있다. 읽기 전용은 보통 이렇게함.












