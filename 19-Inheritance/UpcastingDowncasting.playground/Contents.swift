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
 # Upcasting & Download Casting
 */

// 상속관계의 세가지 클래스.
class Figure {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
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

let f = Figure(name: "Unknown")
f.name

let r = Rectangle(name: "Rect")
r.width
r.height
r.name

let s: Figure = Square(name: "Square")
s.name
//s.width
//s.height

let downcastedS = s as! Square // Rectangle class로 다운캐스팅도 가능하다. Rectangle은 업캐스팅한 클래스의 서브클래스이면서, 원본 클래스의 슈퍼클래스라서 다운캐스팅이 가능하다.
downcastedS.name
downcastedS.width
downcastedS.height

class Rhombus: Square {
	var angle = 45.0
}

//let dr = s as! Rhombus // -> Rhombus 클래스가 동일한 상속계층에있지만, 인스턴스의 원래 형식인 Square보다 아래쪽에 있다. 다운캐스팅해도 angle속성에 접근할 수가 없다. 강제로 다운캐스팅한다고 해도 없던 속성의 메모리가 생기지는 않는다. 잘못된 메모리에 접근하여 에러. 원본 클래스보다 아래쪽에있는 클래스로 다운캐스팅 하는것은 허용되지 않는다. angle 없어도 허용 안된다.



// f상수의 자료형은 Figure, r은 Rectangle, s는 Square이다. 사실, s는 Rectangle class이기도, Figure 클래스이기도하다. 멤버를 모두 상속받으므로 컴파일러 입장에서는 이렇다.


// 상속계층에서 위에있는 클래스는, 아래쪽의 클래스가 어떤 멤버를 가지고있는지 모른다.








