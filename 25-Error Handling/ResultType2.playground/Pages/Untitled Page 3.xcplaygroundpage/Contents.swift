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
 # Higher-order Functions
 */

enum MyError: Error {
   case error
}

enum ValueError: Error {
   case evenNumber
}

func doSomethingWithResult(data: Int) -> Result<Int, MyError> {
   guard data.isMultiple(of: 2) else {
      return .failure(MyError.error)
   }
   
   return .success(data)
}

// map은 result형식에 있는 성공값을, 클로져파라미터로 전달한다. 그런다음 클로져에서 리턴한 값을 성공값으로 저장해서, 새로운 result instance를 리턴한다.
let a = doSomethingWithResult(data: 0)
let b = a.map { $0.isMultiple(of: 2) ? "even number" : "odd number" }
// b보면 success의 형식이 string으로 변경.

let c = a.flatMap { $0.isMultiple(of: 2) ? .success("even number") : .success("odd number")}

// a.mapError(<#T##transform: (MyError) -> Error##(MyError) -> Error#>)
// a.flatMapError(<#T##transform: (MyError) -> Result<Int, Error>##(MyError) -> Result<Int, Error>#>)
