//
//  HighScore.swift
//  Simon
//
//  Created by Joben Gohlke on 5/18/20.
//  Copyright © 2020 Ben Gohlke. All rights reserved.
//

import Foundation

struct HighScore {
  let initials: String
  let points: Int
  
  var score: String {
    return "\(points) pts"
  }
}
