//
//  ViewController.swift
//  BullsEye
//
//  Created by Main Account on 6/27/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var currentValue: Int = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
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

    let message = "The value of the slider is: \(currentValue)"

    let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)

    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)

    alert.addAction(action)

    present(alert, animated: true, completion: nil)

  }

}

