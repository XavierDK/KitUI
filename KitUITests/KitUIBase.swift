//
//  KitUI_Helper.swift
//  KitUI
//
//  Created by Xavier De Koninck on 07/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import KitUI

class KitUIBase: QuickSpec {
  
  func shouldHaveAClearBackground(_ button: MediumButton) {
    it("should have a clear background") {
      expect(button.backgroundColor).to(equal(Colors.clear))
    }
  }
  
  func shouldHaveABlueBackground(_ button: MediumButton) {
    it("should have a blue background") {
      expect(button.backgroundColor).to(equal(Colors.blue))
    }
  }
  
  func shouldHaveAWhiteBackground(_ button: MediumButton) {
    it("should have a white background") {
      expect(button.backgroundColor).to(equal(Colors.white))
    }
  }
  
  func shouldHaveALightGrayBackground(_ button: MediumButton) {
    it("should have a light gray background") {
      expect(button.backgroundColor).to(equal(Colors.lightGray))
    }
  }
  
  func shouldHaveAWhiteTextColor(_ button: MediumButton) {
    it("should have a white text color") {
      expect(button.titleColor(for: .normal)).to(equal(Colors.white))
    }
  }
  
  func shouldHaveABlueTextColor(_ button: MediumButton) {
    it("should have a blue text color") {
      expect(button.titleColor(for: .normal)).to(equal(Colors.blue))
    }
  }
  
  func shouldHaveALightGrayTextColor(_ button: MediumButton) {
    it("should have a light gray text color") {
      expect(button.titleColor(for: .normal)).to(equal(Colors.lightGray))
    }
  }
  
  func shouldHaveAWhiteTextColorDisabled(_ button: MediumButton) {
    it("should have a white text color") {
      expect(button.titleColor(for: .disabled)).to(equal(Colors.white))
    }
  }
  
  func shouldHaveABlueTextColorDisabled(_ button: MediumButton) {
    it("should have a blue text color") {
      expect(button.titleColor(for: .disabled)).to(equal(Colors.blue))
    }
  }
  
  func shouldHaveALightGrayTextColorDisabled(_ button: MediumButton) {
    it("should have a light gray text color") {
      expect(button.titleColor(for: .disabled)).to(equal(Colors.lightGray))
    }
  }
  
  func shouldHaveAnOpacityOfHundred(_ button: MediumButton) {
    it("should have an opacity of hundred") {
      expect(button.alpha).to(equal(1))
    }
  }
  
  func shouldHaveAnOpacityOfFourty(_ button: MediumButton) {
    it("should have an opacity of fourty") {
      expect(Float(button.alpha)).to(equal(0.4))
    }
  }
  
  func shouldHaveACornerRadiusOfThree(_ button: MediumButton) {
    it("should have a corner radius of 3px") {
      expect(button.layer.cornerRadius).to(equal(3.0))
    }
  }
  
  func shouldNotHaveABorder(_ button: MediumButton) {
    it("should not have a border") {
      expect(button.layer.borderColor).to(equal(Colors.clear.cgColor))
      expect(button.layer.borderWidth).to(equal(0))
    }
  }
  
  func shouldHaveABlueBorder(_ button: MediumButton) {
    it("should have a blue border") {
      expect(button.layer.borderColor).to(equal(Colors.blue.cgColor))
      expect(button.layer.borderWidth).to(equal(1))
    }
  }
  
  func shouldHaveAWhiteBorder(_ button: MediumButton) {
    it("should have a white border") {
      expect(button.layer.borderColor).to(equal(Colors.white.cgColor))
      expect(button.layer.borderWidth).to(equal(1))
    }
  }
  
  func shouldHaveALightGrayBorder(_ button: MediumButton) {
    it("should have a light gray border") {
      expect(button.layer.borderColor).to(equal(Colors.lightGray.cgColor))
      expect(button.layer.borderWidth).to(equal(1))
    }
  }
  
  func shouldHaveShadow(_ button: MediumButton) {
    it ("should have shadow") {
      expect(button.layer.masksToBounds).to(beFalse())
      expect(button.layer.shadowRadius).to(equal(3))
      expect(button.layer.shadowColor).to(equal(UIColor.black.cgColor))
      expect(button.layer.shadowOffset).to(equal(CGSize(width: 0, height: 2)))
      expect(button.layer.shadowOpacity).to(equal(0.3))
    }
  }
  
  func shouldNotHaveShadow(_ button: MediumButton) {
    it ("should not have shadow") {
      expect(button.layer.masksToBounds).to(beTrue())
      expect(button.layer.shadowRadius).to(equal(0))
      expect(button.layer.shadowColor).to(equal(UIColor.clear.cgColor))
      expect(button.layer.shadowOffset).to(equal(CGSize.zero))
      expect(button.layer.shadowOpacity).to(equal(0))
    }
  }
  
  func shouldBeCenterVerticallyAlign(_ button: MediumButton) {
    it ("should be center vertically align") {
      expect(button.contentVerticalAlignment == .center).to(beTrue())
    }
  }
  
  func shouldBeCenterHorizontallyAlign(_ button: MediumButton) {
    it ("should be center horizontally align") {
      expect(button.contentHorizontalAlignment == .center).to(beTrue())
    }
  }

  
  func shouldHaveAnHeightOfFourty(_ button: MediumButton) {
    it("should have an height of 40px") {
      let heightConstraints = button.constraints.filter({ $0.identifier == MediumButton.Identifiers.heightConstraint })
      expect(heightConstraints.count).to(equal(1))
      if let heightConstraint = heightConstraints.first {
        expect(heightConstraint.constant).to(equal(40))
        expect(heightConstraint.isActive).to(beTrue())
      }
    }    
  }
}
