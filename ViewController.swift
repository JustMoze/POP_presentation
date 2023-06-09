import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var mainButton: UIButton!
    @IBOutlet private weak var secondaryButton: UIButton!
    @IBOutlet private weak var thirdButton: UIButton!
    
    @IBOutlet private weak var titleLabel: UITextField!
    
//    var tracker: AppTrackable = AppTracker.shared
        
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
        FacebookTracker().trackFirstButtonTap()
        GoogleTracker().trackFirstButtonTap()
        FirebaseTracker().trackFirstButtonTap()
        TelesoftasTracker().trackFirstButtonTap()
        print("-----------------------------------------------")
    }
    
    @objc func onSecondButtonTap(sender: UIButton!) {
        FacebookTracker().trackSecondButtonTap()
        GoogleTracker().trackSecondButtonTap()
        FirebaseTracker().trackSecondButtonTap()
        TelesoftasTracker().trackSecondButtonTap()
        print("-----------------------------------------------")
    }
    
    @objc func onThirdButtonTap(sender: UIButton!) {
        FacebookTracker().trackThirdButtonTap()
        GoogleTracker().trackThirdButtonTap()
        FirebaseTracker().trackThirdButtonTap()
        TelesoftasTracker().trackThirdButtonTap()
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
