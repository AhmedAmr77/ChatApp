//
//  WelcomeViewController.swift
//  ChatApp
//
//  Created by Ahmd Amr on 10/09/2021.
//  Copyright © 2021 ahmdamr. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = K.appName
        for char in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { [weak self] _ in
                guard let self = self else { return }
                self.titleLabel.text?.append(char)
            }
            charIndex += 1
        }
    }
}
