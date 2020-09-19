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
//: [Previous](@previous)

import Foundation

/*:
 # Weak Reference
 ![weak](weak.png)
 */

class Person {
   var name = "John Doe"
   var car: Car?
   
   deinit {
      print("person deinit")
   }
}

class Car {
   var model: String
   weak var lessee: Person? // 약한참조. person instance를 참조하지만 소유하지는 않는다. 그래서 강한참조 싸이클이 제거된다.
   
   init(model: String) {
      self.model = model
   }
   
   deinit {
      print("car deinit")
   }
}

var person: Person? = Person()
var rentedCar: Car? = Car(model: "Porsche")

person?.car = rentedCar
rentedCar?.lessee = person // 3. 여기가 바뀐다. 약한참조이기에 person 인스턴스를 소유하지 않는다. 카운트가 오르지 않는다.

person = nil // 4. person은 카운트가 0이된다. 메모리에서 제거가된다. -> 이 때 car속성이 제거되면서, car인스턴스에대한 소유권을 자동으로 포기한다. 그래서 car instance의 카운트가 1 감소하고, lessee속성은 nil로 초기화된다. 약한참조는 참조하는 인스턴스가 해지되면, 자동으로 nil로 초기화된다. person deinit 출력.
rentedCar = nil // 5. car instance 메모리 해제.
















//: [Next](@next)
