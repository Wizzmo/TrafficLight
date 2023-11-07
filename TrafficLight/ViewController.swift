//
//  ViewController.swift
//  TrafficLight
//
//  Created by Maxim Makarov on 05.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    var count = 1
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var changeLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        changeLightButton.layer.cornerRadius = 10
    }
    
    @IBAction func changeTitleOfButton(_ sender: UIButton) {
        changeLightButton.setTitle("NEXT", for: .normal)
    }
    
    @IBAction func changeLight(_ sender: UIButton) {
        if count == 1 {
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.5
            count += 1
        } else if count == 2 {
            yellowLightView.alpha = 1.0
            redLightView.alpha = 0.5
            count += 1
        } else {
            greenLightView.alpha = 1.0
            yellowLightView.alpha = 0.5
            count = 1
        }
    }
}

