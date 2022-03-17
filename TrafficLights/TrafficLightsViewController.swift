//
//  ViewController.swift
//  TrafficLights
//
//  Created by Евгений Волошенко on 16.03.2022.
//

import UIKit

class TrafficLightsViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var stepButton: UIButton!
    
    private var nextLight = 1
    
    @IBAction func stepButtonTapped(_ sender: UIButton) {
        switch nextLight {
        case 1:
            stepButton.setTitle("NEXT", for: .normal)
            greenLight.alpha = 0.3
            redLight.alpha = 1
            nextLight = 2
        case 2:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            nextLight = 3
        case 3:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            nextLight = 1
        default:
            print("error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightsTurnOff([redLight, yellowLight, greenLight])
    }
    
    override func viewWillLayoutSubviews() {
        changeLightsSize([redLight, yellowLight, greenLight])
    }
}
