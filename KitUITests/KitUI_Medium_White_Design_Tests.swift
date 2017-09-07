//
//  KitUI_Medium_White_Design_Tests.swift
//  KitUI
//
//  Created by Xavier De Koninck on 07/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import KitUI

class KitUIMediumWhiteDesignSpec: KitUIBase {
  
  override func spec() {
    
    buttonActive()
    buttonActiveWithShadow()
    buttonInactive()
    buttonInactiveWithShadow()
  }    
  
  func buttonActive() {
    
    describe("the design of the medium button") {
      context("when it's a white button active") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .white)
        view.addSubview(button)
        
        shouldHaveAWhiteBackground(button)
        shouldHaveABlueTextColor(button)
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
      context("when it's a white button active with shadow") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .white)
        button.hasShadow = true
        view.addSubview(button)
        
        shouldHaveAWhiteBackground(button)
        shouldHaveABlueTextColor(button)
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
      context("when it's a white button inactive") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .white)
        button.isEnabled = false
        view.addSubview(button)
        
        shouldHaveAWhiteBackground(button)
        shouldHaveALightGrayTextColorDisabled(button)
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
      context("when it's a white button inactive and shadow enabled") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .white)
        button.isEnabled = false
        button.hasShadow = true
        view.addSubview(button)
        
        shouldHaveAWhiteBackground(button)
        shouldHaveALightGrayTextColorDisabled(button)
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
