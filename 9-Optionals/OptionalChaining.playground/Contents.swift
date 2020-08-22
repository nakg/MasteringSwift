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

struct Contacts {
	var email: [String: String]?
	var address: String?
	
	func printAddres() {
		return print(address ?? "no address")
	}
}

struct Person {
	var name: String
	var contacts: Contacts?
	
	init(name: String, email: String) {
		self.name = name
		contacts = Contacts(email: ["home": email], address: "Seoul")
	}
	
	func getContacts() -> Contacts? {
		return contacts
	}
}


/*:
# Optional Chaining
*/
var p = Person(name: "James", email: "swift@example.com")
let a = p.contacts?.address
a

var optionalP: Person? = Person(name: "James", email: "swift@example.com")
let b = optionalP?.contacts?.address
b

optionalP = nil
let c = optionalP?.contacts?.address
c

p.getContacts()?.address


let d = p.getContacts()?.printAddres()
d

if p.getContacts()?.printAddres() != nil { // 호출되었다면 nil이 아니고 void다. 
	
}

if let _ = p.getContacts()?.printAddres() {
	
}


let e = p.contacts?.email?["home"]

p.contacts?.email?["home"]?.count

p.contacts?.address = "Daegu"
p.contacts?.address

optionalP = nil
optionalP?.contacts?.address = "Daegu"
optionalP?.contacts?.address





