//
//  KitUI_Design_Tests.swift
//  KitUI
//
//  Created by Xavier De Koninck on 07/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import KitUI

class KitUIMediumBlueDesignSpec: KitUIBase {
  
  override func spec() {
    
    buttonActive()
    buttonActiveWithShadow()
    buttonInactive()
    buttonInactiveWithShadow()
  }
  
  func buttonActive() {
    
    describe("the design of the medium button") {
      context("when it's a blue button active") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .blue)
        view.addSubview(button)
        
        shouldHaveABlueBackground(button)
        shouldHaveAWhiteTextColor(button)
        shouldHaveAnOpacityOfHundred(button)
        shouldHaveACornerRadiusOfThree(button)
        shouldNotHaveABorder(button)
        shouldNotHaveShadow(button)
        shouldBeCenterVerticallyAlign(button)
        shouldBeCenterHorizontallyAlign(button)
        shouldHaveAnHeightOfFourty(button)
      }
    }
  }
  
  func buttonActiveWithShadow() {
    
    describe("the design of the medium button") {
      context("when it's a blue button active with shadow") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .blue)
        button.hasShadow = true
        view.addSubview(button)
        
        shouldHaveABlueBackground(button)
        shouldHaveAWhiteTextColor(button)
        shouldHaveAnOpacityOfHundred(button)
        shouldHaveACornerRadiusOfThree(button)
        shouldNotHaveABorder(button)
        shouldHaveShadow(button)
        shouldBeCenterVerticallyAlign(button)
        shouldBeCenterHorizontallyAlign(button)
        shouldHaveAnHeightOfFourty(button)
      }
    }
  }
  
  func buttonInactive() {
    
    describe("the design of the medium button") {
      context("when it's a blue button inactive") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .blue)
        button.isEnabled = false
        view.addSubview(button)
        
        shouldHaveALightGrayBackground(button)
        shouldHaveAWhiteTextColor(button)
        shouldHaveAnOpacityOfHundred(button)
        shouldHaveACornerRadiusOfThree(button)
        shouldNotHaveABorder(button)
        shouldNotHaveShadow(button)
        shouldBeCenterVerticallyAlign(button)
        shouldBeCenterHorizontallyAlign(button)
        shouldHaveAnHeightOfFourty(button)
      }
    }
  }
  
  func buttonInactiveWithShadow() {
    
    describe("the design of the medium button") {
      context("when it's a blue button inactive and shadow enabled") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .blue)
        button.isEnabled = false
        button.hasShadow = true
        view.addSubview(button)
        
        shouldHaveALightGrayBackground(button)
        shouldHaveAWhiteTextColor(button)
        shouldHaveAnOpacityOfHundred(button)
        shouldHaveACornerRadiusOfThree(button)
        shouldNotHaveABorder(button)
        shouldNotHaveShadow(button)
        shouldBeCenterVerticallyAlign(button)
        shouldBeCenterHorizontallyAlign(button)
        shouldHaveAnHeightOfFourty(button)
      }
    }
  }
}
