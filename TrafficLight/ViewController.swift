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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 64
        yellowLightView.layer.cornerRadius = 64
        greenLightView.layer.cornerRadius = 64
        
        changeLightButton.layer.cornerRadius = 10
    }
}

