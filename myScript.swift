#!/usr/bin/env swift
import Foundation
//print("Merhaba, Getir! Swift Bootcamp ")

//var users = ["sinem", "rezzak", "merve", "ahmet", "ecem", "swift"]

/*if users.contains("") {
	print("Error! There is an empty user name.")
} else {
	for user in users {
		print(user.capitalized)
	}
}*/

print("Enter your name:")
var name = readLine(strippingNewline: true)
print("Hello \(name ?? "anonymous")")

//Ödev: users ları tüm harflerini büyütüp Z - A ya sıralı olacak şekilde yazınız...
