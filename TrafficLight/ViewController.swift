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
        redLightView.layer.cornerRadius = 64
        yellowLightView.layer.cornerRadius = 64
        greenLightView.layer.cornerRadius = 64
        
        changeLightButton.layer.cornerRadius = 10
    }
    
    @IBAction func changeTitleOfButton(_ sender: UIButton) {
        changeLightButton.setTitle("NEXT", for: .normal)
    }
    
    @IBAction func changeLight(_ sender: UIButton) {
        if count == 1 {
            redLightView.backgroundColor = UIColor(red: 254/255, green: 37/255, blue: 0/255, alpha: 1.0)
            greenLightView.backgroundColor = UIColor(red: 0/255, green: 75/255, blue: 1/255, alpha: 1.0)
            count += 1
        } else if count == 2 {
            yellowLightView.backgroundColor = UIColor(red: 255/255, green: 251/255, blue: 0/255, alpha: 1.0)
            redLightView.backgroundColor = UIColor(red: 76/255, green: 8/255, blue: 0/255, alpha: 1.0)
            count += 1
        } else {
            greenLightView.backgroundColor = UIColor(red: 1/255, green: 249/255, blue: 1/255, alpha: 1.0)
            yellowLightView.backgroundColor = UIColor(red: 78/255, green: 76/255, blue: 1/255, alpha: 1.0)
            count = 1
        }
    }
}

