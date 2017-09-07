//
//  MediumButton.swift
//  KitUI
//
//  Created by Xavier De Koninck on 06/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import UIKit

@IBDesignable final public class MediumButton: BasicButton {
  
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
  
  override func setup() {
    super.setup()
    
    contentEdgeInsets.left = 16
    contentEdgeInsets.right = 16
  }
  
  override public func didMoveToSuperview() {
    super.didMoveToSuperview()
    
    guard let superview = superview else { return }
    
    translatesAutoresizingMaskIntoConstraints = false
    
    
    
//    leadingAnchor.constraint(
//      equalTo: superview.leadingAnchor,
//      constant: 62).isActive = true
//    trailingAnchor.constraint(
//      equalTo: superview.trailingAnchor,
//      constant: -62).isActive = true
//    centerXAnchor.constraint(
//      equalTo: superview.centerXAnchor).isActive = true

//    widthAnchor.constraint(equalToConstant: 238).isActive = true
    heightAnchor.constraint(equalToConstant: 40).isActive = true
  }
}
