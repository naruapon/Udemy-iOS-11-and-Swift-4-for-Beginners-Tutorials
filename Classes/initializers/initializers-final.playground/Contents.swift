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

class StudentAthlete: Student {
  var failedClasses: [Grade] = []
  var sports: [String]

  init(firstName: String, lastName: String, sports: [String]) {
    self.sports = sports
    super.init(firstName: firstName, lastName: lastName)
    recordGrade(Grade(letter: "P", points: 0, credits: 0))
  }

  required init(firstName: String, lastName: String) {
    self.sports = []
    super.init(firstName: firstName, lastName: lastName)
  }

  override func recordGrade(_ grade: Grade) {
    super.recordGrade(grade) // Explain this

    if grade.letter == "F" {
      failedClasses.append(grade)
    }
  }

  var isEligible: Bool {
    return failedClasses.count < 3
  }
}
