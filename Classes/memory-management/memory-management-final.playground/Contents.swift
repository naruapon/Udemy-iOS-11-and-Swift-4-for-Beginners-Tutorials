struct Grade {
  var letter: Character
  var points: Double
  var credits: Double
}

class Person {
  var firstName: String
  var lastName: String

  required init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }

  deinit {
    print("\(firstName) \(lastName) is being removed from memory!")
  }
}

class Student: Person {
  var grades: [Grade] = []
  weak var partner: Student?

  convenience init(transfer: Student) {
    self.init(firstName: transfer.firstName, lastName: transfer.lastName)
  }

  required init(firstName: String, lastName: String) {
    super.init(firstName: firstName, lastName: lastName)
  }

  func recordGrade(_ grade: Grade) {
    grades.append(grade)
  }

  deinit {
   print("\(firstName) is being deallocated!")
  }
}

var someone = Person(firstName: "Johnny", lastName: "Appleseed")
var anotherSomeone: Person? = someone

var lotsOfPeople = [someone, someone, anotherSomeone, someone]
anotherSomeone = nil
lotsOfPeople = []
print("Here 1")
someone = Person(firstName: "Jill", lastName: "Appleseed")
print("Here 2")

var alice: Student? = Student(firstName: "Alice", lastName: "Appleseed")
var bob: Student? = Student(firstName: "Bob", lastName: "Appleseed")
alice?.partner = bob
bob?.partner = alice

alice = nil
bob?.partner
//bob = nil




