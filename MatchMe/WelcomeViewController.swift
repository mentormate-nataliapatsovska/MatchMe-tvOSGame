//
//  WelcomeViewController.swift
//  MatchMe
//
//  Created on 10/19/15.
//  Copyright © 2015. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var gameDescription: UILabel!
    @IBOutlet weak var enterNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var bestScoreButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var preferredFocusedView: UIView? {
        return self.nameTextField
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setValue(self.nameTextField.text, forKey: kCurrentUserNameKey)
        defaults.synchronize()
    }
    
    @IBAction func checkBestScoreButtonPressed(_: AnyObject) {
        //TODO:
        print("Best score tapped!")
    }
    
}

