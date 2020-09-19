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
 # Adding Initializers
 */
// 년월일을 파라미터로 받아, 날짜를 생성하는 간편코드를 만들어보자. (스위프트에서 날짜 생성은 복잡해.)
extension Date {
	init?(year: Int, month: Int, day: Int) {
		let cal = Calendar.current
		var comp = DateComponents()
		comp.year = year
		comp.month = month
		comp.day = day
		
		guard let date = cal.date(from: comp) else {
			return nil // date로 포맷팅이 안되면 nil을 리턴.(failable init)
		}
		self = date // date는 구조체로 구현되어있기 때문에, self에 새로운 인스턴스를 할당하는 방식으로 초기화 할 수 있다.
	}
}

Date(year: 2014, month: 4, day: 16) // "Apr 16, 2014 at 12:00 AM"


// UIColor class에 새로운 생성자 확장. Extension으로 Class의 생성자를 추가할 때에는 반드시 간편생성자로 구현해야한다.
extension UIColor {
	convenience init(red: Int, green: Int, blue: Int) {
		self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1.0)
	}
}

UIColor(red: 0, green: 0, blue: 255)



// default init, memberwise init.
// 다 초기화해서 default init생성됨. 구조체라서 memberwise init도 함께 생성됨.
struct Size {
	var width = 0.0
	var height = 0.0
}

extension Size {
	init(value: Double) {
		width = value
		height = value
	}
}

Size()
Size(width: 12, height: 34)









