//
//  ViewController.swift
//  TrafficLight
//
//  Created by Maxim Makarov on 05.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var changeLightButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private var lightIsOn = 1.0
    private var lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeLightButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction func changeNameOfButton() {
        changeLightButton.setTitle("NEXT", for: .normal)
        }
    
    @IBAction func changeLightButtonDidTapped() {
        switch currentLight {
        case .red:
            redLightView.alpha = lightIsOn
            greenLightView.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .red
        }
    }
}


// MARK: - CurrentLight
extension ViewController {
    enum CurrentLight {
        case red, yellow, green
    }
}
