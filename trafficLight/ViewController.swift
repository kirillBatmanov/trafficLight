//
//  ViewController.swift
//  trafficLight
//
//  Created by Кирилл Батманов on 17.08.2021.
//

import UIKit

enum CurrentLight {
    case red, orange, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var orangeLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightsIsOn: CGFloat = 1
    private let lightsIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightsIsOff
        orangeLightView.alpha = lightsIsOff
        greenLightView.alpha = lightsIsOff
        
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        orangeLightView.layer.cornerRadius = orangeLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }
    
    @IBAction func startButtonPressed() {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLightView.alpha = lightsIsOn
            greenLightView.alpha = lightsIsOff
            currentLight = .orange
        case .orange:
            redLightView.alpha = lightsIsOff
            orangeLightView.alpha = lightsIsOn
            currentLight = .green
        case .green:
            orangeLightView.alpha = lightsIsOff
            greenLightView.alpha = lightsIsOn
            currentLight = .red
            
        }
        
    }
    
}
