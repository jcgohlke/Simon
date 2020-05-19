//
//  GameBoardViewController.swift
//  Simon
//
//  Created by Joben Gohlke on 5/18/20.
//  Copyright © 2020 Ben Gohlke. All rights reserved.
//

import UIKit

class GameBoardViewController: UIViewController {
  
  // MARK: - Outlets
  
  @IBOutlet weak var blueButton: ColoredButton!
  
  // MARK: - Properties
  
  var timer: Timer?
  var gameManager = GameManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    blueButton.backgroundColor = UIColor(hue: 198/360, saturation: 80/100, brightness: 70/100, alpha:1.0)
    
    resetForNewDemo()
  }
  
  @IBAction func coloredButtonTapped(_ sender: Any) {
    print("Button tapped")
  }
  
  private func resetForNewDemo() {
    timer?.invalidate()
    timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(demonstrateCycle), userInfo: nil, repeats: false)
  }
  
  @objc private func demonstrateCycle() {
    timer?.invalidate()
    timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(animateButton), userInfo: nil, repeats: true)
  }
  
  @objc private func animateButton() {
    blueButton.lightUp()
    
    timer?.invalidate()
    timer = nil
  }
}
