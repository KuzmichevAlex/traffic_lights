//
//  ViewController.swift
//  traffic_lights
//
//  Created by Александр Кузьмичев on 15.10.2020.
//  Copyright © 2020 Александр Кузьмичев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLable: UIImageView!
    @IBOutlet var yellowLable: UIImageView!
    @IBOutlet var greenLable: UIImageView!
    
    @IBOutlet var startButton: UIButton!
    
    let lightOff: CGFloat = 0.3
     let lightOn: CGFloat = 1
     var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLable.layer.cornerRadius = 75
        yellowLable.layer.cornerRadius = 75
        greenLable.layer.cornerRadius = 75
        startButton.layer.cornerRadius = 10
        
        redLable.alpha = lightOff
        yellowLable.alpha = lightOff
        greenLable.alpha = lightOff
    }

    @IBAction func startButtonPress() {
        
        switch count {
        case 0:
            redLable.alpha = lightOn
            startButton.setTitle("NEXT", for: .normal)
            count += 1
        case 1:
            redLable.alpha = lightOff
            yellowLable.alpha = lightOn
            count += 1
        case 2:
            yellowLable.alpha = lightOff
            greenLable.alpha = lightOn
            count += 1
        case 3:
            redLable.alpha = lightOff
            yellowLable.alpha = lightOff
            greenLable.alpha = lightOff
            startButton.setTitle("START", for: .normal)
            count = 0
        default:
            break
        }
    }
    
}


