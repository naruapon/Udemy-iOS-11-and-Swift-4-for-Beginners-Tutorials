struct Person {
  var firstName: String {
    didSet {
      if let spaceIndex = firstName.index(of: " ") {
        print("No spaces allowed! Reverting change.")
        firstName = oldValue
      } else {
        print("The value of firstName changed from \(oldValue) to \(firstName)")
      }
    }
  }
  var lastName: String

  static var outOfWedlock = "Snow"

  var fullName: String {
    get {
      return "\(firstName) \(lastName)"
    }
    set {
      if let spaceIndex = newValue.index(of: " ") {
        firstName = String(newValue[..<spaceIndex])
        lastName = String(newValue[newValue.index(after: spaceIndex)...])
      }
    }
  }

  lazy var isAlive: Bool = {
    print("Checking life...")
    if fullName == "Waymar Royce" {
      return false
    } else {
      return true
    }
  }()

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }

}

var person = Person(firstName: "Ray", lastName: "Wenderlich")

person.firstName = "Vicki"
let vicki = person.firstName

person.lastName = "Coulter"

person.fullName
person.fullName = "Ben Morrow"
person.firstName
person.lastName


person.lastName = Person.outOfWedlock
person.fullName
person.firstName = "Jon Snow"
person.fullName

print("Here 1")
person.isAlive

var person2 = Person(firstName: "Waymar", lastName: "Royce")
print("Here 2")
person2.isAlive

