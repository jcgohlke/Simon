//
//  ColoredButton.swift
//  Simon
//
//  Created by Joben Gohlke on 5/18/20.
//  Copyright © 2020 Ben Gohlke. All rights reserved.
//

import UIKit

class ColoredButton: UIButton {

  let lightUpTime: TimeInterval = 0.4
  
  func lightUp() {
    UIView.animateKeyframes(withDuration: lightUpTime * 2, delay: 0, options: [], animations: {
      UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
        self.backgroundColor = UIColor(hue: 198/360, saturation: 80/100, brightness: 100/100, alpha: 1.0)
      }
      UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5) {
        self.backgroundColor = .systemBlue
      }
    }, completion: nil)
  }

}
