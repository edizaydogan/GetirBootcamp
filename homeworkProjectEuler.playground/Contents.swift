import UIKit
import Foundation

//      -------Project Euler Problem 1-------

/*
func sumMultiplesOf(_ num1: Int, _ num2: Int, below: Int) {
    var sum = 0
 
    for i in 0..<below {
        if i % 3 == 0 || i % 5 == 0 {
            sum += i
        }
    }
    print("Sum of all the multiples of \(num1) or \(num2) below \(below) is = ", sum)
}
sumMultiplesOf(3, 5, below: 1000)
*/


//      -------Project Euler Problem 2-------

/*
func sumOfEvenFibonacci(below: Int) {
    var fib1 = 1
    var fib2 = 2
    var sum = 0
 
    while fib2 < below {
        if fib2 % 2 == 0 {
            sum += fib2
        }
        fib2 += fib1
        fib1 = fib2 - fib1
    }
    print("Sum of the even valued Fibonacci numbers below \(below) is = ", sum)
}
sumOfEvenFibonacci(below: 4000000)
*/


//      -------Project Euler Problem 3-------

/*
func largestPrimeFactorOf(_ number: Int) {
    if number < 2 {
        print("There is no prime factor of numbers below 2.")
    } else {
        var largestPrimeFactor = 1
        var numberForMod = number
        var i = 2
        
        while i <= numberForMod && i <= number / 2 {
            while numberForMod % i == 0 {
                numberForMod = numberForMod / i
                largestPrimeFactor = i
            }
            i += 1
        }
        if largestPrimeFactor == 1 {
            print("Largest prime factor of \(number) is = ", number)
        } else {
            print("Largest prime factor of \(number) is = ", largestPrimeFactor)
        }
    }
}
largestPrimeFactorOf(600851475143)
*/


//      -------Project Euler Problem 4-------

/*
func isPalindrome(_ number: Int) -> Bool {
    let string = String(number)
    
    return isPalindrome(string)
}
func isPalindrome(_ text: String) -> Bool {
    
    let characters = Array(text)
    var initialIndex = 0
    var finalIndex = characters.count - 1
    while initialIndex < finalIndex {
        if characters[initialIndex] != characters[finalIndex] {
            return false
        }
        initialIndex += 1
        finalIndex -= 1
    }
    return true
}
func largestPalindromicNumber() -> String {
    let lowestNumber = 100
    let highestNumber = 999
    var startIndex = lowestNumber
    var largestNumber = 0
    
    for i in lowestNumber...highestNumber {
        for j in startIndex...highestNumber {
            let result = i * j
            
            if isPalindrome(result) {
                largestNumber = result > largestNumber ? result : largestNumber
            }
        }
        startIndex += 1
    }
    return String(largestNumber)
}
largestPalindromicNumber()
*/


//      -------Project Euler Problem 5-------

/*
func smallestMultiple() {
    let start = 2
    let end = 20
    var primeFactorsArray = Array(repeating: 1, count: 21)
    var countOfPrimeFactorsArray = Array(repeating: 0, count: 21)
    var counter: Int
    var dividedNumber: Int
    var notPrime: Bool
    var finalResult = 1
    
    for i in start...end {
        for j in 2...i {
            dividedNumber = i
            counter = 0
            notPrime = true
            while dividedNumber % j == 0 && notPrime {
                counter += 1
                countOfPrimeFactorsArray[j] = countOfPrimeFactorsArray[j] > counter ? countOfPrimeFactorsArray[j] : counter
                if dividedNumber != j {
                    primeFactorsArray[dividedNumber] = 0
                    dividedNumber /= j
                } else {
                    notPrime = false
                }
            }
        }
    }
    for i in 2...20 {
        if primeFactorsArray[i] == 1 {
            for j in 1...countOfPrimeFactorsArray[i] {
                finalResult *= i
            }
        }
    }
    print("Smallest multiple of the numbers from 1 to 20 is = ", finalResult)
}
smallestMultiple()
*/


//      -------Project Euler Problem 6-------

/*
func sumSquareDifference() {
    let start = 1
    let end = 100
    var sumOfSquares = 0
    var squareOfSums = 0
    
    for num in start...end {
        sumOfSquares += num * num
        squareOfSums += num
    }
    squareOfSums = squareOfSums * squareOfSums
    print("Difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is: \(abs(sumOfSquares - squareOfSums))")
}
sumSquareDifference()
*/


//      -------Project Euler Problem 7-------

/*
func primeNumber10001th() {
    var countOfPrimeNumbers = 1 // Starting after 2
    var number = 2
    var i: Int
    var isPrime = true
    
    while countOfPrimeNumbers < 10001 {
        i = 2
        number += 1
        
        while i <= number / 2 && isPrime == true {
            if number % i == 0 {
                isPrime = false
            } else {
                i += 1
            }
        }
        if isPrime == true {
            countOfPrimeNumbers += 1
        } else {
            isPrime = true
        }
    }
    print("The 10001th prime number is \(number).")
}
primeNumber10001th()  // Due to playgrounds slow runtimes, this function crashes but normally it tooks 1 second
*/
