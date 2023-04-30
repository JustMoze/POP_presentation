//
//  ViewController.swift
//  Presentation
//
//  Created by Modestas Rimeikis on 2023-03-29.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var mainButton: UIButton!
    @IBOutlet private weak var secondaryButton: UIButton!
    @IBOutlet private weak var thirdButton: UIButton!
    
    @IBOutlet private weak var titleLabel: UITextField!
    
    var tracker: AppTrackable = AppTracker.shared
        
    // MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: Helpers
    private func setupView() {
        setupButtons()
        setupTitleLabel()
    }
    
    // MARK: Actions
    @objc func onFirstButtonTap(sender: UIButton!) {
        tracker.trackFirstButtonTap()
        print("-----------------------------------------------")
    }
    
    @objc func onSecondButtonTap(sender: UIButton!) {
        tracker.trackSecondButtonTap()
        print("-----------------------------------------------")
    }
    
    @objc func onThirdButtonTap(sender: UIButton!) {
        tracker.trackThirdButtonTap()
        print("-----------------------------------------------")
    }
}

private extension MainViewController {
    func setupButtons() {
        mainButton.setTitle("Main button", for: .normal)
        mainButton.addTarget(self, action: #selector(onFirstButtonTap),
                             for: .touchUpInside)
        
        secondaryButton.setTitle("Secondary button", for: .normal)
        secondaryButton.addTarget(self, action: #selector(onSecondButtonTap),
                                  for: .touchUpInside)
        
        thirdButton.setTitle("Third button", for: .normal)
        thirdButton.addTarget(self, action: #selector(onThirdButtonTap),
                              for: .touchUpInside)
    }
    
    
    func setupTitleLabel() {
        titleLabel.text = "Protocol-oriented development"
    }
}
