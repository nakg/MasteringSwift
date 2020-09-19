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
# Strong Reference Cycle
*/


// Person Class는 Car Class의 프로퍼티를 갖는다.
class Person {
	var name = "John Doe"
	var car: Car?
	
	deinit {
		print("person deinit")
	}
}

//  Class는 Car Class의 프로퍼티를 갖는다.
class Car {
	var model: String
	var lessee: Person?
	
	init(model: String) {
		self.model = model
	}
	
	deinit {
		print("car deinit")
	}
}

var person: Person? = Person() // 1. 참조카운트 1. 강한참조 연결.
var rentedCar: Car? = Car(model: "Porsche") // 1. 참조카운트 1. 강한참조 연결.

person?.car = rentedCar // 2. car속성이 prentedCar를 소유하게 된다. rentedCar변수의 참조카운트 2가 된다.

rentedCar?.lessee = person // 3. 위와 동일한 이유. person의 참조카운트도 2가 된다.

person = nil // 4. person의 카운트가 1감소하지만, 여전히 카운트는 1이다.

rentedCar = nil // 5. 참조카운트가 1 감소하지만, 여전히 1이기에 메모리에 유지된다. 두 인스턴스가 속성을 통해서 서로를 소유하고 있기 때문이다. -> person, rentedCar에 nil을 저장해서, 더이상 인스턴스에 접근할 수단이 없다. 그래서 더이상 두 인스턴스를 정상적으로 해제할 방법이 없다. -> Strong Reference Cycle : 강한참조 때문에, 인스턴스를 정상적으로 해지할 수 없는 문제. ARC는 메모리관리를 대신 처리해주지만, 참조 싸이클까지 자동으로 처리하지는 못한다.


//: [Next](@next)
