//
//  ViewController.swift
//  secondHalfHw
//
//  Created by Roman Kozlov on 12.11.2019.
//  Copyright © 2019 Roman Kozlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var changeStartNext: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
    }

    @IBAction func changeAlphaButton() {
        
        if redView.alpha == yellowView.alpha && redView.alpha == greenView.alpha {
            redView.alpha = 1
            changeStartNext.setTitle("NEXT", for: .normal)
        } else if redView.alpha > yellowView.alpha {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha > greenView.alpha{
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
        
    }
    
}

