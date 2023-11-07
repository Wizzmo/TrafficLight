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
    }
}

