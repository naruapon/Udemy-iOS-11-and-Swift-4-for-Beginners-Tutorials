var namesAndScores: [String: Int] = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]
print(namesAndScores)

/// var namesAndScores2: Dictionary<String, Int> = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]

namesAndScores["Anna"]
namesAndScores["Greg"]

namesAndScores.isEmpty
namesAndScores.count

namesAndScores["Greg"] = 10
namesAndScores["Anna"] = 3
namesAndScores["Brian"] = nil
print(namesAndScores)

for (player, score) in namesAndScores {
  print("\(player) has a score of \(score)")
}

for player in namesAndScores.keys {
  print("\(player)")
}



