//
//  AppCoordinator.swift
//  KitUI
//
//  Created by Xavier De Koninck on 06/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import Foundation
import NeoCoordinator

final class AppCoordinator: TabBarCoordinator {
  
  override func setup() {
    tabs = [ButtonsCoordinator.self]
  }
}
