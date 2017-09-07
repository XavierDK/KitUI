//
//  ButtonType.swift
//  KitUI
//
//  Created by Xavier De Koninck on 07/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import UIKit

public enum MediumButtonType: Int {
  
  case blue
  case white
  case borderedBlue
  case borderedWhite
  case link
  
  var backgroundColor: UIColor {
    switch self {
    case .blue:
      return #colorLiteral(red: 0, green: 0.4705882353, blue: 1, alpha: 1)
    case .white:
      return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    case .borderedBlue:
      return .clear
    case .borderedWhite:
      return .clear
    case .link:
      return .clear
    }
  }
  
  var backgroundColorDisabled: UIColor {
    switch self {
    case .blue:
      return #colorLiteral(red: 0.8392156863, green: 0.8392156863, blue: 0.8392156863, alpha: 1)
    case .white:
      return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    case .borderedBlue:
      return .clear
    case .borderedWhite:
      return .clear
    case .link:
      return .clear
    }
  }
  
  var textColor: UIColor {
    switch self {
    case .blue:
      return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    case .white:
      return #colorLiteral(red: 0, green: 0.4705882353, blue: 1, alpha: 1)
    case .borderedBlue:
      return #colorLiteral(red: 0, green: 0.4705882353, blue: 1, alpha: 1)
    case .borderedWhite:
      return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    case .link:
      return #colorLiteral(red: 0, green: 0.4705882353, blue: 1, alpha: 1)
    }
  }
  
  var textColorDisabled: UIColor {
    switch self {
    case .blue:
      return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    case .white:
      return #colorLiteral(red: 0.8392156863, green: 0.8392156863, blue: 0.8392156863, alpha: 1)
    case .borderedBlue:
      return #colorLiteral(red: 0.8392156863, green: 0.8392156863, blue: 0.8392156863, alpha: 1)
    case .borderedWhite:
      return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    case .link:
      return #colorLiteral(red: 0.8392156863, green: 0.8392156863, blue: 0.8392156863, alpha: 1)
    }
  }
  
  var borderEnabled: Bool {
    switch self {
    case .blue:
      return false
    case .white:
      return false
    case .borderedBlue:
      return true
    case .borderedWhite:
      return true
    case .link:
      return false
    }
  }
  
  var borderColor: UIColor {
    switch self {
    case .blue:
      return .clear
    case .white:
      return .clear
    case .borderedBlue:
      return #colorLiteral(red: 0, green: 0.4705882353, blue: 1, alpha: 1)
    case .borderedWhite:
      return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    case .link:
      return .clear
    }
  }
  
  var borderColorDisabled: UIColor {
    switch self {
    case .blue:
      return .clear
    case .white:
      return .clear
    case .borderedBlue:
      return #colorLiteral(red: 0.8392156863, green: 0.8392156863, blue: 0.8392156863, alpha: 1)
    case .borderedWhite:
      return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    case .link:
      return .clear
    }
  }
  
  var opacity: CGFloat {
    switch self {
    case .blue:
      return 1
    case .white:
      return 1
    case .borderedBlue:
      return 1
    case .borderedWhite:
      return 1
    case .link:
      return 1
    }
  }
  
  var opacityDisabled: CGFloat {
    switch self {
    case .blue:
      return 1
    case .white:
      return 1
    case .borderedBlue:
      return 1
    case .borderedWhite:
      return 0.4
    case .link:
      return 0.4
    }
  }
}
