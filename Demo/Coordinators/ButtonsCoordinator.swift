//
//  ButtonsCoordinator.swift
//  KitUI
//
//  Created by Xavier De Koninck on 06/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import Foundation
import NeoCoordinator
import Action
import Reusable

final class ButtonsCoordinator: NavigationCoordinator {
  
  override func setup() {
    self.controller = ButtonsViewController.instantiate()
  }
}
