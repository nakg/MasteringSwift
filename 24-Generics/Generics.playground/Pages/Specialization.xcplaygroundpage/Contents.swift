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
 # Specialization
 */


func swapValue<T: Equatable>(lhs: inout T, rhs: inout T) {
   print("generic version")
   
   if lhs == rhs {
      return
   }
   
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}

func swapValue(lhs: inout String, rhs: inout String) {
	print("specialized version")
	
	// 대소문자 없이 구분.
	if lhs.caseInsensitiveCompare(rhs) == .orderedSame {
		return
	}
	
	let tmp = lhs
	lhs = rhs
	rhs = tmp
}

var a = 1
var b = 2
swapValue(lhs: &a, rhs: &b) // 첫번째 함수가 호출된다.

var c = "Swift"
var d = "Programming"
swapValue(lhs: &c, rhs: &d) // 특수화로 구현한 함수는 generic을 override 해버린다. 우선순위가 더 높다.
