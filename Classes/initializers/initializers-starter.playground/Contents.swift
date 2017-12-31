struct Grade {
  var letter: Character
  var points: Double
  var credits: Double
}

class Person {
  var firstName: String
  var lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

class Student: Person {
  var grades: [Grade] = []

  func recordGrade(_ grade: Grade) {
    grades.append(grade)
  }
}

class StudentAthlete: Student {
  var failedClasses: [Grade] = []

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
