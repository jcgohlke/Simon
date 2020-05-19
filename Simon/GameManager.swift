//
//  GameManager.swift
//  Simon
//
//  Created by Joben Gohlke on 5/18/20.
//  Copyright © 2020 Ben Gohlke. All rights reserved.
//

import Foundation

final class GameManager {
  
  enum SequenceColor: Int, CaseIterable {
    case red = 1
    case green
    case blue
    case yellow
  }
  
  // MARK: - Properties
  
  var points = 0
  var gameOver = false
  var buttonSequence = [SequenceColor]()
  
  func addColorToSequence() {
//    var added = false
//    repeat {
//      if let randomColor = SequenceColor.allCases.randomElement(),
//        randomColor != buttonSequence.last {
//        buttonSequence.append(randomColor)
//        added = true
//      }
//    } while !added
    buttonSequence.append(.blue)
  }
}
