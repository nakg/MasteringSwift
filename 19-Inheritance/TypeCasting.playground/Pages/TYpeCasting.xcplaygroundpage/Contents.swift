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
 # Type Casting
 */

class Figure {
   let name: String
   
   init(name: String) {
      self.name = name
   }
   
   func draw() {
      print("draw \(name)")
   }
}

class Triangle: Figure {
   override func draw() {
      super.draw()
      print("🔺")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
   
   override func draw() {
      super.draw()
      print("⬛️ \(width) x \(height)")
   }
}

class Square: Rectangle {
   
}

class Circle: Figure {
   var radius = 0.0
   
   override func draw() {
      super.draw()
      print("🔴")
   }
}



/*:
 ## Type Check Operator
 ![type-check](type-check.png)
 */

let num = 123
num is Int // true
num is Double // false
num is String // false


let r = Rectangle(name: "Rect")

let c = Circle(name: "Circle")

// type check 연산자는 런타임에 타입을 체크한다.항상 성공하는지 항상 실패하는지에만 경고창으로 알려줌. 타입체크는 런타임에 실행된다!!!
r is Rectangle // true
r is Figure // true. Figure를 상속하고 있다.
//r is Square // false. Square는 Rectangle을 상속한 클래스이다.










/*:
 ## Type Casting Operator
 ![type-casting](type-casting.png)
 */
let nsstr = "str" as NSString // 컴파일 타임에 결과가 확정된다.

let t = Triangle(name: "Triangle")
let s = Square(name: "Square")

// 원래 형식으로의 캐스팅은 아무런 의미 없다. 주로 다운캐스팅에 사용하거나, 값형식을 다른형식으로 캐스팅 할 때 사용한다.
t as? Triangle
t as! Triangle

// 업캐스팅 예시.
var upcasted: Figure = s // s는 Square. 업캐스팅 방법 1.
upcasted = s as Figure // 컴파일 타임에서 upcasting. 항상 성공하고 안전하다. 업캐스팅 2. // 다운캐스팅은 컴파일 타임에 타입 캐스팅이 불가하다. 불안해서.

// 다운캐스팅 예시.
// 원본 형식으로의 다운캐스팅은, 런타임에서 성공한다.
upcasted as? Square
upcasted as! Square

// 원래 형식에 Super class로 다운캐스팅 하는것도 성공한다.
upcasted as? Rectangle
upcasted as! Rectangle

// Circle로 다운캐스팅.
upcasted as? Circle // nil. 모두 figure를 상속하지만, 두 클래스는 직접적인 상속관계기 없다.
upcasted as! Circle // 런타임에 앱이 죽는다.

// 실제로 다운캐스팅을 구현할 때의 예시. - conditional코드와 함께 사용하는것이 좋다.
if let c = upcasted as? Circle {
	
}

let list = [t, r, s, c]
// -> 배열은 동일한 타입만 저장할 수 있다.. 다만 이렇게 상속 계층 간에 리스트를 만들면, 가장 인접한 클래스로 업캐스팅되어서 list의 타입이 결정된다. [Figure]
for item in list {
	item.draw() // item은 각각 figure 형식이지만, draw 메서드는 figure꺼가 아니라 각자 override 한게 호출된다.. -> PolyMorphism(다형성) - 객체지향의 특징.
	
	item.name // property는 Figure class에 있는 것만 접근이 된다. 만약 circle에 radius에 접근하려면??? -> 이때 필요한게 다운캐스팅.
	
	// circle로 다운캐스팅이 성공할 경우 radius 프로퍼티 접근.
	if let c = item as? Circle {
		c.radius
	}
	
}
// upcasting되어있는 인스턴스를 통해서 메서드를 호출하더라도, 실제형식에서 overriding한 메서드가 호출된다!!!







