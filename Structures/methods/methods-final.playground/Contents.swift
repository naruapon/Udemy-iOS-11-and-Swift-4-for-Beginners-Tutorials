import Foundation

let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

struct SimpleDate {
  var month: String
  var day: Int
  static var firstDayOfMonth = 1

  mutating func advance() {
    day += 1
  }

  func monthsUntilWinterBreak() -> Int {
    return months.index(of: "December")! - months.index(of: month)!
  }
}

extension SimpleDate {
  init() {
    month = "January"
    day = 1
  }
}

struct Math {
  static func factorial(of number: Int) -> Int {
    return (1...number).reduce(1) { result, number in
      return result * number
    }
  }
}
Math.factorial(of: 6)

extension Math {
  static func length(x: Double, y: Double) -> Double {
    return sqrt(x*x + y*y)
  }
}
Math.length(x: 3, y: 4)


var testDate = SimpleDate(month: "February", day: 22)
testDate.monthsUntilWinterBreak()
testDate.advance()
testDate
SimpleDate.firstDayOfMonth

var otherDate = SimpleDate()

