//
//  BasicButton.swift
//  KitUI
//
//  Created by Xavier De Koninck on 06/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import UIKit

enum ButtonType: Int {
  
  case blue
  case white
  case borderedBlue
  case borderedWhite
  
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
    }
  }
}

enum ButtonError: Error, CustomStringConvertible {
  
  case unknownType
  
  var description: String {
    
    switch self {
    case .unknownType:
      return "This type of button does not exist!"
    }
  }
}

@IBDesignable public class BasicButton: UIButton {
  
  @IBInspectable open var type: Int = 0 {
    didSet {
      guard let _ = ButtonType(rawValue: type) else { fatalError(ButtonError.unknownType.description) }
      setup()
    }
  }

  
  @IBInspectable open var hasShadow: Bool = false {
    didSet {
      if hasShadow
        && !(ButtonType(rawValue: type)?.borderEnabled ?? true) {
        enableShadow()
      }
      else {
        disableShadow()
      }
    }
  }
  
  @IBInspectable open var picto: UIImage? = nil {
    didSet {
    }
  }
  
  public override var isEnabled: Bool {
    didSet {
      setup()
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override public func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    setup()
  }
  
  override public func awakeFromNib() {
    super.awakeFromNib()
    setup()
  }
  
  func setup() {
    
    let type = ButtonType(rawValue: self.type)
    
    if let type = type {
      backgroundColor = (isEnabled) ? (type.backgroundColor) : (type.backgroundColorDisabled)
      setTitleColor(type.textColor, for: .normal)
      setTitleColor(type.textColorDisabled, for: .disabled)
      
      layer.cornerRadius = 3
      alpha = (isEnabled) ? (type.opacity) : (type.opacityDisabled)
      
      if type.borderEnabled {
        enableBorder()
      }
      else {
        disableBorder()
      }
    }
  }
}

extension BasicButton {
  
  fileprivate func enableBorder() {
    
    let type = ButtonType(rawValue: self.type)
    
    if let type = type {
      layer.borderColor = (isEnabled) ? (type.borderColor.cgColor) : (type.borderColorDisabled.cgColor)
      layer.borderWidth = 1
    }
  }
  
  fileprivate func disableBorder() {
    
    layer.borderColor = UIColor.clear.cgColor
    layer.borderWidth = 0
  }
}

extension BasicButton {
  
  fileprivate func enableShadow() {
    
    layer.masksToBounds = false
    layer.shadowRadius = 3
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOffset = CGSize(width: 0, height: 2)
    layer.shadowOpacity = 0.3
  }
  
  fileprivate func disableShadow() {
    
    layer.masksToBounds = true
    layer.shadowRadius = 0
    layer.shadowColor = UIColor.clear.cgColor
    layer.shadowOffset = CGSize(width: 0, height: 0)
    layer.shadowOpacity = 0
  }
}
