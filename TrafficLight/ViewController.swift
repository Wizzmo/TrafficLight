//
//  ViewController.swift
//  TrafficLight
//
//  Created by Maxim Makarov on 05.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    var currentLight = 0
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var changeLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 64
        yellowLightView.layer.cornerRadius = 64
        greenLightView.layer.cornerRadius = 64
        
        changeLightButton.layer.cornerRadius = 10
    }
    
    @IBAction func changeLightButtonDidTapped(_ sender: UIButton) {
        switch currentLight {
        case 0:
            changeLightButton.setTitle("NEXT", for: .normal)
            currentLight += 1
            fallthrough
        case 1:
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.5
            currentLight += 1
        case 2:
            yellowLightView.alpha = 1.0
            redLightView.alpha = 0.5
            currentLight += 1
        default:
            greenLightView.alpha = 1.0
            yellowLightView.alpha = 0.5
            currentLight = 1
        }
    }
}
