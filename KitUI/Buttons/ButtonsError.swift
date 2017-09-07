//
//  ButtonsError.swift
//  KitUI
//
//  Created by Xavier De Koninck on 07/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import Foundation

enum ButtonsError: Error, CustomStringConvertible {
  
  case unknownType
  
  var description: String {
    
    switch self {
    case .unknownType:
      return "This type of button does not exist!"
    }
  }
}
