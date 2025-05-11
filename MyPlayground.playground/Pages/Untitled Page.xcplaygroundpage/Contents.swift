import UIKit

//var greeting = "Hello, playground"

//print(greeting)

let myAge: Int

myAge = 29
print(myAge)

let constNum: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5

let appleSummary = "I have \(apples) apples."
let furitSummary = "I have \(apples + oranges) pieces of fruit."

let myName = "Keelan"
let date = 4
let intro = "Hello \(myName), tody is May \(date)."

let quotation = """
    This is a
    multiline string.
"""


var fruits = ["blueberries", "oranges"]
fruits[1] = "grapes"
fruits

var jobs = [
    "Keelan": "Coder",
    "Andrew": "Teacher"
]

jobs["Dwayne"] = "Postal Carrier"
jobs

fruits.append("bananas")
fruits

fruits = []
jobs = [:]

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

let scores = [75, 42, 103, 87, 12]
var teamScore = 0
for score in scores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

let scoreDecoration = if teamScore > 10 {
    "🎉"
} else {
    ""
}

print("Score:", teamScore, scoreDecoration)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickname: String? = nil
let fullName: String = "Keelan Burnham"
let informalGreeting = "Hi \(nickname ?? fullName)"

if let nickname {
    print("Hey, \(nickname)")
}

let vegetable = "red pepper"

switch vegetable {
case "celery":
        print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would amke a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [2, 4, 9, 16, 25]
]

var largest = 0
var kind = ""
for (type, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            kind = type
            largest = number
        }
    }
}

print(largest)
print(kind)

var n = 2
while n < 0 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 0;
print(m)
            
            
var total = 0
for i in 0..<4 {
    total += i
}

print(total)

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

greet("Keelan", on: "Monday")

func calculateStats(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let stats = calculateStats(scores: [5, 3, 100, 3, 9])
print(stats.sum)
print(stats.2)


func returnFifteen() -> Int {
    var y = 10
    
    func add() {
        y += 5
    }
    
    add()
    
    return y
}

returnFifteen()

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()

increment(7)




func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)



//numbers.map({ (number: Int) -> Int in
//    let result = 3 * number
//    
//    if result % 2 == 0 {
//        return result
//    } else {
//        return 0
//    }
//    
////    return result
//})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)



let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)


// Desclare an object
class Shape {
    var numberOfSides = 0
    let color = "black"
    
    func simpleDesc() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func ohWow(input: String) -> String {
        return "\(input)? Oh, wow!"
    }
}

// Instantiate an object
var shape = Shape()
shape.numberOfSides = 7
var shapeDescr = shape.simpleDesc()



// Using inti() and self.
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDesc() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}


// Subclasses and override
class Square : NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDesc() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDesc()

class Circle : NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 0
    }
    
    func area() -> Double {
        return Double.pi * (radius * radius)
    }
    
    override func simpleDesc() -> String {
        return "A circle with a radius of \(radius)."
    }
}

let test2 = Circle(radius: 2, name: "my circle")
test2.area()
test2.simpleDesc()


// get and set
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    // This is a computed property,
    // at least according to ChatGPT
    
    // newValue is an implied variable for the set
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDesc() -> String {
        return "An equalateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.sideLength

triangle.perimeter = 9.9
triangle.sideLength



// Willset and didset
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triAndSqu = TriangleAndSquare(size: 10, name: "another test shape")
triAndSqu.square.sideLength
triAndSqu.triangle.sideLength

triAndSqu.square = Square(sideLength: 50, name: "larger sqaure")
triAndSqu.triangle.sideLength

// Using ?
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength


// Enums
enum Rank: Int, CaseIterable {
    case ace = 1
    case two, three, four, five, size, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDesc() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue

let jack = Rank.jack
let jackRawValue = jack.rawValue

if let convertedRank = Rank(rawValue: 3) {
    let threeDesc = convertedRank.simpleDesc()
}


enum Suit: CaseIterable {
    case spades, hearts, diamonds, clubs
    
    func simpleDesc() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        if self == .clubs || self == .spades {
            return "black"
        } else {
            return "red"
        }
    }
}

let hearts = Suit.hearts
let heartsDesc = hearts.simpleDesc()
let color = hearts.color()


enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("out of cheese")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
}


// Structure (structures are always copied when they’re passed around in your code, but classes are passed by reference)

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDesc() -> String {
        return "the \(rank.simpleDesc()) of \(suit.simpleDesc())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDesc = threeOfSpades.simpleDesc()


func createDeck() -> [Card] {
    var deck: [Card] = []
    
    for suit in Suit.allCases {
        for rank in Rank.allCases {
            var card = Card(rank: rank, suit: suit)
            deck.append(card)
        }
    }
    
    return deck
}

var deck = createDeck()



// Concurrency
func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    
    return 501
}

func fetchUserName(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    
    return "Guest"
}

func connectUser(to server: String) async {
    async let userId = fetchUserID(from: server)
    async let username = fetchUserName(from: server)
    let greeting = await "Hello \(username), user ID \(userId)"
    print(greeting)
}

Task {
    await connectUser(to: "primary")
}

// task groups
let userIds = await withTaskGroup(of: Int.self) { group in
    for server in ["primary", "secondary", "development"] {
        group.addTask {
            return await fetchUserID(from: server)
        }
    }
    
    var results: [Int] = []
    for await result in group {
        results.append(result)
    }
    
    return results
}


// Actors (similar to classes, except they ensure that different asynchronous functions can safely interact with an instance of the same actor at the same time

actor ServerConnection {
    var server: String = "primary"
    
    private var activeUsers: [Int] = []
    
    func connect() async -> Int {
        let userId = await fetchUserID(from: server)
        // ...
        activeUsers.append(userId)
        return userId
    }
}

let server = ServerConnection()
let userId = await server.connect()


// Protocols
protocol ExampleProtocol {
    var simpleDesc: String { get }
    mutating func adjust()
}


class SimpleClass: ExampleProtocol {
    var simpleDesc: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDesc += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDesc = a.simpleDesc

struct SimpleStructure: ExampleProtocol {
    var simpleDesc: String = "A simple structure."
    mutating func adjust() {
        simpleDesc += " Now adjusted."
    }
}

var b = SimpleStructure()
b.adjust()
let bDesc = b.simpleDesc




// Extensions
extension Int: ExampleProtocol {
    var simpleDesc: String {
        return "The number \(self)."
    }
    
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDesc)

//let protocolValue: any ExampleProtocol = a
//print(protocolValue.simpleDesc)


// Error handling
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job Sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
} catch {
    print(error)
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}


let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")


