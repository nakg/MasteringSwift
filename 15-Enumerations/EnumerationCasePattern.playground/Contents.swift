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
 # Enumeration Case Pattern
 ![enum-case](enum-case.png)
 */

// 교통수단을 나타내는 열거형 선언.
enum Transportation {
	case bus(number: Int)
	case taxi(company: String, number: String)
	case subway(lineNumber: Int, express: Bool)
}

var tpt = Transportation.bus(number: 7)

// switch문에서 매칭.
switch tpt {
case .bus(let n):
	print(n)
case .taxi(let c, var n): // 갯수를 맞춰야한다. 안받을꺼면 _로 해당항목 생략해야한다.
	print(c, n)
case let .subway(l, e): // 모든 연관값을 동일한 방식으로 바인딩 할 땐 이게 효율적이다.
	print(l, e)
}

// if문에서의 enumeration case pattern.
tpt = Transportation.subway(lineNumber: 2, express: false)
// 2호선 지하철인지 먼저 파악하고, 급행여부에따라 분기하는 코드.
// - if키워드 다음 case키워드. 그 다음에는 let키워드나 var가 오는데, 값을 바인딩하지 않는다면 생략한다. 이어서 매칭시킬 패턴이 온다. express의 바인딩.
if case let .subway(2, express) = tpt {
	if express {
		
	} else {
		
	}
}

// 라인넘버 관계업이 급행 지하철만 확인해보기. 이렇게 첫번재 연관값은 와일드카드 패턴으로 무시. 그리고 두번째 연관값을 true와 매칭. 값을 바인딩하지 않으므로 케이스 키워드 다음에 let, var를 쓰지 않는다.
if case .subway(_, true) = tpt {
	print("express")
}

// 새로운 배열을 만들고 열거형 저장.
let list = [
	Transportation.subway(lineNumber: 2, express: false),
	Transportation.bus(number: 4412),
	Transportation.subway(lineNumber: 7, express: true),
	Transportation.taxi(company: "SeoulTaxi", number: "1234")
]

// for-in 문으로 서브웨이 케이스만 열거해보자.
for case let .subway(n, _) in list {
	print("subway \(n)")
}

// 급행의, 지하철만 열거.
for case let .subway(n, true) in list {
	print("subway \(n)")
}

// 부가조건 추가. Where절은 collection 뒤에서 작성.
for case let .subway(n, true) in list where n == 2 {
	print("subway \(n)")
}













































