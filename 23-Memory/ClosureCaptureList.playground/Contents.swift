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
# Closure Capture List
*/

class Car {
	var totalDrivingDistance = 0.0
	var totalUsedGas = 0.0
	
	// Double을 리턴하는 클로져를 리턴한다.
	// 클로져 캡쳐 리스트 사용. 강한참조 사이클을 해결하자. 먼저, 약한 참조로 self를 캡쳐한다. [weak 캡쳐할대상] in (closure body와구분)
	lazy var gasMileage: () -> Double = { [weak self] in
		guard let strongSelf = self else { return 0.0 } // 약한 참조는 옵셔널이다. 따라서, self에 접근할 때 unwrapping하거나 옵셔널 체이닝으로 접근해야한다.
		return strongSelf.totalDrivingDistance / strongSelf.totalUsedGas
	}
	// 클로져의 실행이 완료되지 않은 시점에, 캡쳐 대상이 해제될 수 있다면 약한참조로 호출한다. car인스턴스가 해제된 직후에 클로져가 호출되었다면 self는 nil이 된다. -> 옵셔널 바인딩이 실패하고 self는 nil이된다. 약한참조로 캡쳐할 때에는, 캡쳐 대상이 해제된 경우도 함께 고려해야한다. 클로져에서 인스턴스를 약한참조로 참조하기때문에 더이상 Strog Reference Cycle은 발생하지 않는다.
	
	func drive() {
		self.totalDrivingDistance = 1200.0
		self.totalUsedGas = 73.0
	}
	
	deinit {
		print("car deinit")
	}
}

var myCar: Car? = Car()
myCar?.drive()
myCar = nil // closure가 아직 실행되지 않아, 정상적으로 인스턴스가 해제된다.

myCar?.gasMileage()
myCar = nil // deinit










/*:
![1](1.png)
![2](2.png)

## Value Type
![closurecapturelist-valuetype](closurecapturelist-valuetype.png)
*/
var a = 0
var b = 0
var c = { [a] in print(a, b) } // closure에서 값을 참조할 때에는, 복사본이 아닌 참조가 전달된다.

a = 1
b = 2
c() // 0, 2. a는 클로져 캡쳐리스트에 추가가되어 있기 때문에, 참조대신 복사본인 0이 출력된다.



/*:
## Reference Type
![closurecapturelist](closurecapturelist.png)
*/


















