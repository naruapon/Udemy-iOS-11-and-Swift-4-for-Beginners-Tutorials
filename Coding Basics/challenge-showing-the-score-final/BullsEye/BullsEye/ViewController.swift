//
//  ViewController.swift
//  BullsEye
//
//  Created by Main Account on 6/27/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var currentValue = 0
  @IBOutlet weak var slider: UISlider!
  var targetValue = 0
  @IBOutlet weak var targetLabel: UILabel!
  var score = 0
  @IBOutlet weak var scoreLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    currentValue = lroundf(slider.value)
    startNewRound()
  }

  func updateLabels() {
    targetLabel.text = String(targetValue)
    scoreLabel.text = String(score)
  }

  func startNewRound() {
    targetValue = 1 + Int(arc4random_uniform(100))
    currentValue = 50
    slider.value = Float(currentValue)
    updateLabels()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func sliderMoved(_ slider: UISlider) {
    print("The value of slider is now: \(slider.value)")
    currentValue = lroundf(slider.value)
  }

  @IBAction func showAlert() {

    let difference = abs(targetValue - currentValue)
    let points = 100 - difference

    score += points

    let message = "You scored \(points) points"

    let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)

    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)

    alert.addAction(action)

    present(alert, animated: true, completion: nil)

    startNewRound()

  }

}

