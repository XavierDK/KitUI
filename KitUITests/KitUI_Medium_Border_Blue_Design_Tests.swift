//
//  KitUI_Medium_Border_Blue_Design_Tests.swift
//  KitUI
//
//  Created by Xavier De Koninck on 07/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import KitUI

class KitUIMediumBorderBlueDesignSpec: KitUIBase {
  
  override func spec() {
    
    buttonActive()
    buttonActiveWithShadow()
    buttonInactive()
    buttonInactiveWithShadow()
  }
  
  func buttonActive() {
    
    describe("the design of the medium button") {
      context("when it's a border blue button active") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .borderedBlue)
        view.addSubview(button)
        
        shouldHaveAClearBackground(button)
        shouldHaveABlueTextColor(button)
        shouldHaveAnOpacityOfHundred(button)
        shouldHaveACornerRadiusOfThree(button)
        shouldHaveABlueBorder(button)
        shouldNotHaveShadow(button)
        shouldBeCenterVerticallyAlign(button)
        shouldBeCenterHorizontallyAlign(button)
        shouldHaveAnHeightOfFourty(button)
      }
    }
  }
  
  func buttonActiveWithShadow() {
    
    describe("the design of the medium button") {
      context("when it's a border blue button active with shadow") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .borderedBlue)
        button.hasShadow = true
        view.addSubview(button)
        
        shouldHaveAClearBackground(button)
        shouldHaveABlueTextColor(button)
        shouldHaveAnOpacityOfHundred(button)
        shouldHaveACornerRadiusOfThree(button)
        shouldHaveABlueBorder(button)
        shouldNotHaveShadow(button)
        shouldBeCenterVerticallyAlign(button)
        shouldBeCenterHorizontallyAlign(button)
        shouldHaveAnHeightOfFourty(button)
      }
    }
  }
  
  func buttonInactive() {
    
    describe("the design of the medium button") {
      context("when it's a border blue button inactive") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .borderedBlue)
        button.isEnabled = false
        view.addSubview(button)
        
        shouldHaveAClearBackground(button)
        shouldHaveALightGrayTextColorDisabled(button)
        shouldHaveAnOpacityOfHundred(button)
        shouldHaveACornerRadiusOfThree(button)
        shouldHaveALightGrayBorder(button)
        shouldNotHaveShadow(button)
        shouldBeCenterVerticallyAlign(button)
        shouldBeCenterHorizontallyAlign(button)
        shouldHaveAnHeightOfFourty(button)
      }
    }
  }
  
  func buttonInactiveWithShadow() {
    
    describe("the design of the medium button") {
      context("when it's a border blue button inactive and shadow enabled") {
        let view = UIView(frame: .zero)
        let button = MediumButton(withType: .borderedBlue)
        button.isEnabled = false
        button.hasShadow = true
        view.addSubview(button)
        
        shouldHaveAClearBackground(button)
        shouldHaveALightGrayTextColorDisabled(button)
        shouldHaveAnOpacityOfHundred(button)
        shouldHaveACornerRadiusOfThree(button)
        shouldHaveALightGrayBorder(button)
        shouldNotHaveShadow(button)
        shouldBeCenterVerticallyAlign(button)
        shouldBeCenterHorizontallyAlign(button)
        shouldHaveAnHeightOfFourty(button)
      }
    }
  }
}
