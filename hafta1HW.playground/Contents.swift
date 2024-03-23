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
        var largestPrime = 1
        var numberForMod = number
        var i = 2
        
        while i <= numberForMod && i < number / 2 {
            if numberForMod % i == 0 {
                numberForMod = numberForMod / i
                largestPrime = i
            }
            i += 1
        }
        if largestPrime == 1 {
            print("Largest prime factor of \(number) is = ", number)
        } else {
            print("Largest prime factor of \(number) is = ", largestPrime)
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
    var primeFactorsArray = Array(repeating: 1, count: 21)
    var countOfPrimeFactorsArray = Array(repeating: 0, count: 21)
    let start = 2
    let end = 20
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


//      -------Exercism 1 Difference of Squares-------

/*
func findDifference(_ n: Int) -> Int {
    let squareOfSum = (n * (n + 1) / 2) * (n * (n + 1) / 2)
    
    let sumOfSquares = n * (n + 1) * (2 * n + 1) / 6
    
    let difference = squareOfSum - sumOfSquares
    
    return difference
}
print(findDifference(10))
*/


//      -------Exercism 2 Gigasecond-------

/*
func gigasecond(from: Date) -> Date {
    let gigasecond = 1_000_000_000
    return from.addingTimeInterval(TimeInterval(gigasecond))
}

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

if let myBirthday = dateFormatter.date(from: "1995-07-16 07:55:00") {
    let endDate = gigasecond(from: myBirthday)
    print("My birthday date: \(dateFormatter.string(from: myBirthday))")
    print("End date: \(dateFormatter.string(from: endDate))")
} else {
    print("Date formatting error.")
}
*/


//      -------Exercism 3 Leap-------

/*
func isLeap(_ year: Int) -> String {
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
        return "\(year) is a leap year :)"
    } else {
        return "It is not a leap year :("
    }
}
isLeap(2124)
*/


//      -------Exercism 4 Space Age-------

/*
func earthYearsOld(seconds: Double) {
    let oneYearInSeconds = 365.25 * 24 * 60 * 60
    let ageInYears = seconds / oneYearInSeconds
    
    let stringYearsOld = String(format: "%.2f", ageInYears)
    print("You are \(stringYearsOld) Earth-years old.")
}
earthYearsOld(seconds: 1000000000)
*/


//      -------Exercism 5 Sum of Multiples-------

/*
func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    var energyPoints = Set<Int>()
    
    for item in inMultiples {
        let magicalItems = Set(stride(from: item, through: limit - 1, by: item))
        energyPoints = energyPoints.union(magicalItems)
    }
    
    return energyPoints.reduce(0, +)
}
print("The player total energy points are = \(toLimit(20, inMultiples: [3, 5]))")
*/


//      -------Exercism 6 Revere String-------

/*
func reverseString(_ input: String) -> String {
    var characters = Array(input)
    var firstIndex = 0
    var lastIndex = characters.count - 1
    
    while firstIndex < lastIndex {
        let temp = characters[firstIndex]
        characters[firstIndex] = characters[lastIndex]
        characters[lastIndex] = temp
        
        firstIndex += 1
        lastIndex -= 1
    }
    return String(characters)
}
print(reverseString("reverse string test"))
*/


//      -------Exercism 7 RNA-------

/*
func toRna(_ dna: String) -> String {
    var rna = ""
    
    for nucleotide in dna {
        switch nucleotide {
        case "A":
            rna.append("U")
        case "T":
            rna.append("A")
        case "G":
            rna.append("C")
        case "C":
            rna.append("G")
        default:
            print("Invalid nucleotide in DNA : \(nucleotide)")
        }
    }
    return rna
}
let dna = "AGCTTACGC"
let rna = toRna(dna)
print("RNA complement of DNA sequence \(dna) is: \(rna)")
*/


//      -------Exercism 8 Binary Search-------

/*
func binarySearch(listOfNumbers: [Int], number: Int) -> String {
    var i = 0
    var j = listOfNumbers.count - 1
    
    while i <= j {
        let mid = (i + j) / 2
        
        if number == listOfNumbers[mid] {
            return String(mid)
        } else if number < listOfNumbers[mid] {
            j = mid - 1
        } else {
            i = mid + 1
        }
    }
    return "Not found."
}
print("Index:", binarySearch(listOfNumbers: [1, 3, 5, 7, 9, 11, 13, 15], number: 7))
*/


//      -------Exercism 9 Two Fer-------

/*
func twoFer(name: String = "you") -> String {
    return "One for \(name), one for me."
}
twoFer(name: "Alice")
twoFer(name: "Bohdan")
twoFer()
*/


//      -------Exercism 10 Raindrops-------

/*
func raindropSound(_ number: Int) -> String {
    var result = ""
    
    if number % 3 == 0 {
        result += "Pling"
    }
    
    if number % 5 == 0 {
        result += "Plang"
    }
    
    if number % 7 == 0 {
        result += "Plong"
    }
    
    if result.isEmpty {
        result = "\(number)"
    }
    
    return result
}
print(raindropSound(105))
*/


