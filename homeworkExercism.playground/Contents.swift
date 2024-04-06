import UIKit
import Foundation

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


//      -------Exercism 6 Reverse String-------

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


//      -------Exercism 7 RNA Transcription-------

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

//      -------Exercism 11 Accumulate-------

/*
extension Collection {
    func accumulate<T>(_ f: (Element) -> T) -> [T] {
        var result = [T]()
        for v in self {
            result.append(f(v))
        }
        return result
    }
}
*/


//      -------Exercism 12 Bob-------

/*
func response(_ message: String) -> String {
    // Write your code for the 'Bob' exercise in this file.
    let editMessage =  message.trimmingCharacters(in: .whitespaces)
    
    if editMessage.isEmpty {
        return "Fine. Be that way!"
    } else if editMessage == editMessage.uppercased() && editMessage != editMessage.lowercased() {
        if editMessage.hasSuffix("?") {
            return "Calm down, I know what I'm doing!"
        } else {
            return "Whoa, chill out!"
        }
    } else if editMessage.hasSuffix("?") {
        return "Sure."
    } else {
        return "Whatever."
    }
}
response("1234")
*/


//      -------Exercism 13 Triangle-------

/*
func triangle(_ a: Int, _ b: Int, _ c: Int) {
    if a + b >= c && b + c >= a && a + c >= b {
        if a == b && b == c {
            print("This is a equilateral triangle.")
        } else if a != b && b != c && a != c {
            print("This is a scalene triangle.")
        } else {
            print("This is a isosceles triangle.")
        }
    } else {
        print("This is not a triangle.")
    }
}
triangle(7, 5, 1)
triangle(7, 5, 2)
triangle(7, 5, 5)
triangle(5, 5, 5)
*/


//      -------Exercism 14 ETL-------

/*
func transform(_ oldFormat: [String: [String]]) -> [String: Int] {
    var newFormat = [String: Int]()
    for (scoreString, letters) in oldFormat {
        if let score = Int(scoreString) {
            for letter in letters {
                newFormat[letter.lowercased()] = score
            }
        }
    }
    return newFormat
  }
var dict = transform(["1": ["A", "E"], "2": ["D", "G"]])
print(dict)
*/


//      -------Exercism 15 Collatz Conjecture-------

/*
enum InputError: Error {
    case InvalidRange
}

func steps(_ number: Int) throws -> Int {
    guard number > 0 else {
        throw InputError.InvalidRange
    }
    
    var step = 0
    var n = number
    
    while n != 1 {
        n = n % 2 == 0 ? n / 2 : 3 * n + 1
        print("\(step + 1)th step:", n)
        step += 1
    }
    return step
}
let answer = try steps(12)
print("step count: \(answer)")
*/


//      -------Exercism 16 Robot Name-------

/*
let alphabet = "abcdefghijklmnopqrstuvwxyz"
let digits   = "0123456789"

struct Robot {

    var name = ""
    
    mutating func resetName() {
        name = Robot.newName()
    }
    
    static func newName() -> String {
        var robotName = ""
        for _ in 1...2 {
             robotName += String(alphabet.randomElement()!)
        }
        for _ in 1...3 {
             robotName += String(digits.randomElement()!)
        }
        return robotName.uppercased()
    }
    
    init() {
        self.name = Robot.newName()
    }
}
var robot = Robot()
print(robot.name)
robot.resetName()
print(robot.name)
*/


//      -------Exercism 17 Robot Simulator-------

/*
enum Direction {
    case north
    case south
    case east
    case west
}

struct State {
    var x: Int
    var y: Int
    var direction: Direction
}

class SimulatedRobot {
    var state: State

    init(x: Int, y: Int, direction: Direction) {
        self.state = State(x: x, y: y, direction: direction)
    }

    func move(commands: String) {
        for command in commands {
            switch command {
                case "A":
                    advance()
                case "L", "R":
                    turn(to: command)
                default:
                    return
            }
        }
    }

    private func advance() {
        switch state.direction {
            case .north:
                state.y += 1
            case .south:
                state.y -= 1
            case .east:
                state.x += 1
            case .west:
                state.x -= 1
        }
    }

    private func turn(to direction: Character) {
        switch (state.direction, direction) {
            case (.north,"L"), (.south, "R"):
                state.direction = .west
            case (.east, "L"), (.west, "R"):
                state.direction = .north
            case (.north, "R"), (.south, "L"):
                state.direction = .east
            case (.east, "R"), (.west, "L"):
                state.direction = .south
            default:
                return
        }
    }
}
var robot = SimulatedRobot(x: 7, y: 3, direction: Direction.north)
robot.move(commands: "RAALAL")
print(robot.state)
*/


//      -------Exercism 18 Phone Number-------

/*
enum PhoneNumberError: Error {
    case invalidPhoneNumber
}

class PhoneNumber {
    var number: String

    init (_ number: String){
        self.number = number
    }

    func clean() throws -> String {
        var cleanNumber = number.filter{$0.isNumber}
        
        if (cleanNumber.count == 11 && cleanNumber.first == "1"){
            cleanNumber = String(cleanNumber.dropFirst())
        }

        guard cleanNumber.count == 10 else {
            throw PhoneNumberError.invalidPhoneNumber}
        guard cleanNumber.first!.wholeNumberValue! > 1 else {
            throw PhoneNumberError.invalidPhoneNumber
        }
        let index = cleanNumber.index(cleanNumber.startIndex, offsetBy: 3)
        guard cleanNumber[index].wholeNumberValue! > 1 else {
            throw PhoneNumberError.invalidPhoneNumber
        }

        return cleanNumber
    }
}
var phoneNumber = PhoneNumber("+1 (613)-995-0253")
phoneNumber.number = try phoneNumber.clean()
print(phoneNumber.number)
*/


//      -------Exercism 19 Perfect Numbers-------

/*
enum Classification {
    case perfect
    case abundant
    case deficient
}

enum ClassificationError: Error {
    case invalidInput
}

func classify(number: Int) throws -> Classification {
    guard number > 0 else { throw ClassificationError.invalidInput }
    var sum = 0
    
    for factor in (1..<number) where number % factor == 0 {
        sum += factor
    }

    switch sum {
    case number: return .perfect
    case ..<number: return .deficient
    default: return .abundant
    }
}
let answer = try classify(number: 28)
*/


//      -------Exercism 20 Hamming-------

/*
enum InvalidArgumentError: Error {
    case invalidLength
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
    let length = dnaSequence.count
    
    if length == against.count {
        var hammingDistance = 0
        
        for i in dnaSequence.indices{
            if dnaSequence[i] != against[i] {
                hammingDistance += 1
            }
        }
        return hammingDistance
    }
    throw InvalidArgumentError.invalidLength
}
let answer = try compute("GAGCCTACTAACGGGAT", against: "CATCGTAATGACGGCCT")
*/
