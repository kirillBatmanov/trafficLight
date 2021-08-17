//
//  ViewController.swift
//  trafficLight
//
//  Created by Кирилл Батманов on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var orangeLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        orangeLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        startButton.layer.cornerRadius = 10
        
    }

    @IBAction func startButtonPressed() {
    }
    
}

