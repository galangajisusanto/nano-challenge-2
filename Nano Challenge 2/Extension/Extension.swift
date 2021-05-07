//
//  File.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 04/05/21.
//

import Foundation
import UIKit

extension UIView {
   func makeRoundCorners(byRadius rad: CGFloat) {
      self.layer.cornerRadius = rad
      self.clipsToBounds = true
   }
}


