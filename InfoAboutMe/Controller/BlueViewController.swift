//
//  BlueViewController.swift
//  InfoAboutMe
//
//  Created by admin on 04.04.2021.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var alphaReg: UISlider!
    @IBOutlet weak var infoLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // infoLabel settings
        infoLabel.alpha = 0
    }
    
    
    @IBAction func regulateAlpha() {
        infoLabel.alpha = CGFloat(alphaReg.value)
    }
    
    
}
