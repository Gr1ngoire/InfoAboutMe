//
//  ViewController.swift
//  InfoAboutMe
//
//  Created by admin on 02.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var colorSwitchLabel: UILabel!
    @IBOutlet weak var colorSwitch: UISwitch!
    
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var enterBtn: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Welcome label presets
        welcomeLabel.alpha = 0
        
        // Other view presets
        mainView.backgroundColor = .red
        colorSwitchLabel.textColor = .yellow
        colorSwitch.tintColor = .red
        colorSwitch.thumbTintColor = .red
        enterBtn.backgroundColor = .yellow
        enterBtn.titleLabel!.textColor = .red
        welcomeLabel.textColor = .yellow
    }

    
    // Swap colors
    @IBAction func switchColors() {
        if mainView.backgroundColor == .red {
            mainView.backgroundColor = .yellow
            colorSwitchLabel.textColor = .red
            colorSwitch.tintColor = .yellow
            colorSwitch.thumbTintColor = .red
            enterBtn.backgroundColor = .red
            enterBtn.titleLabel!.textColor = .yellow
            welcomeLabel.textColor = .red
        } else {
            mainView.backgroundColor = .red
            colorSwitchLabel.textColor = .yellow
            colorSwitch.tintColor = .red
            colorSwitch.thumbTintColor = .red
            enterBtn.backgroundColor = .yellow
            enterBtn.titleLabel!.textColor = .red
            welcomeLabel.textColor = .yellow
        }
    }
    
    @IBAction func enterName() {
        if let _ = Double(nameInput.text!), let _ = Int(nameInput.text!) {
            nameInput.text = nil
            nameInput.placeholder = "Please, enter yor name properly"
        } else {
            welcomeLabel.alpha = 1
            welcomeLabel.text = "Welcome, \(nameInput.text!), I will tell you something new about me"
        }
    }
    
}

