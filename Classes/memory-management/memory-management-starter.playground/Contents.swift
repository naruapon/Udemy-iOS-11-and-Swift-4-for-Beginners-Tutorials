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
}

class Student: Person {
  var grades: [Grade] = []

  convenience init(transfer: Student) {
    self.init(firstName: transfer.firstName, lastName: transfer.lastName)
  }

  required init(firstName: String, lastName: String) {
    super.init(firstName: firstName, lastName: lastName)
  }

  func recordGrade(_ grade: Grade) {
    grades.append(grade)
  }
}
