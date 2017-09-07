//
//  ButtonsViewController.swift
//  KitUI
//
//  Created by Xavier De Koninck on 06/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import UIKit
import Reusable
import RxSwift
import RxCocoa

final class ButtonsViewController: UIViewController, StoryboardBased {
  
  @IBOutlet weak var howToSegment: UISegmentedControl!
  @IBOutlet weak var byCodeView: UIView!
  @IBOutlet weak var byXibView: UIView!
  
  private let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    howToSegment.rx.selectedSegmentIndex
      .filter({ $0 == 0 })
      .subscribe(onNext: { [weak self] _ in
        self?.byCodeView.isHidden = false
        self?.byXibView.isHidden = true
      })
      .addDisposableTo(disposeBag)
    
    howToSegment.rx.selectedSegmentIndex
      .filter({ $0 == 1 })
      .subscribe(onNext: { [weak self] _ in
        self?.byCodeView.isHidden = true
        self?.byXibView.isHidden = false
      })
      .addDisposableTo(disposeBag)
  }
}
