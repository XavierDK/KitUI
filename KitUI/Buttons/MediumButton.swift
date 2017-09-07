//
//  MediumButton.swift
//  KitUI
//
//  Created by Xavier De Koninck on 06/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import UIKit

@IBDesignable public class MediumButton: UIButton {
  
  @IBInspectable open var type: Int = 0 {
    didSet {
      guard let _ = MediumButtonType(rawValue: type) else { fatalError(ButtonsError.unknownType.description) }
      setup()
    }
  }
  
  @IBInspectable open var hasShadow: Bool = false {
    didSet {
      setup()
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
  
  public init(withType type: MediumButtonType) {
    self.type = type.rawValue
    super.init(frame: .zero)
    setup()
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
    
    let type = MediumButtonType(rawValue: self.type)
    
    if let type = type {
      
      contentEdgeInsets.left = 16
      contentEdgeInsets.right = 16
      
      backgroundColor = (isEnabled) ? (type.backgroundColor) : (type.backgroundColorDisabled)
      setTitleColor(type.textColor, for: .normal)
      setTitleColor(type.textColorDisabled, for: .disabled)
      
      layer.cornerRadius = 3
      alpha = (isEnabled) ? (type.opacity) : (type.opacityDisabled)
      
      if hasShadow
        && !type.borderEnabled
        && isEnabled {
        enableShadow()
      }
      else {
        disableShadow()
      }
      
      if type.borderEnabled {
        enableBorder()
      }
      else {
        disableBorder()
      }
    }
  }
  
  override public func didMoveToSuperview() {
    super.didMoveToSuperview()
    
    guard let _ = superview else { return }
    
    translatesAutoresizingMaskIntoConstraints = false
    let heightConstraint = heightAnchor.constraint(equalToConstant: 40)
    heightConstraint.identifier = Identifiers.heightConstraint
    heightConstraint.isActive = true
  }
  
  enum Identifiers {
    public static let heightConstraint = "__HEIGHT_CONSTRAINT__"
  }
}

extension MediumButton {
  
  fileprivate func enableBorder() {
    
    let type = MediumButtonType(rawValue: self.type)
    
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

extension MediumButton {
  
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
    layer.shadowOffset = CGSize.zero
    layer.shadowOpacity = 0
  }
}

