//
//  YellowViewController.swift
//  InfoAboutMe
//
//  Created by admin on 04.04.2021.
//

import UIKit

class YellowViewController: UIViewController {
    
    // images outlets
    @IBOutlet weak var sicilianView: UIImageView!
    @IBOutlet weak var shiningView: UIImageView!
    @IBOutlet weak var witcherView: UIImageView!
    @IBOutlet weak var sherlockView: UIImageView!
    
    // stackViewOutlets
    @IBOutlet weak var bookStackView: UIStackView!
    @IBOutlet weak var upperStackView: UIStackView!
    @IBOutlet weak var lowerStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Pictures presets
        sicilianView.layer.borderWidth = 5
        sicilianView.layer.borderColor = UIColor.purple.cgColor
        sicilianView.layer.cornerRadius = sicilianView.layer.frame.width / 5
        
        shiningView.layer.borderWidth = 5
        shiningView.layer.borderColor = UIColor.purple.cgColor
        shiningView.layer.cornerRadius = sicilianView.layer.frame.width / 5
        
        witcherView.layer.borderWidth = 5
        witcherView.layer.borderColor = UIColor.purple.cgColor
        witcherView.layer.cornerRadius = sicilianView.layer.frame.width / 5
        
        sherlockView.layer.borderWidth = 5
        sherlockView.layer.borderColor = UIColor.purple.cgColor
        sherlockView.layer.cornerRadius = sicilianView.layer.frame.width / 5
        
        // Stack View presets
        if UIDevice.current.orientation.isLandscape {
            bookStackView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }
    }
    
    // Overriding willTransit function in order to scale bookStackView
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        
        if UIDevice.current.orientation.isLandscape {
            bookStackView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

            
        } else  if UIDevice.current.orientation.isPortrait {
            
            bookStackView.transform = CGAffineTransform(scaleX: 1, y: 1)

        }
    }

}
