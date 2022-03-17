//
//  CustomiseView.swift
//  TrafficLights
//
//  Created by Евгений Волошенко on 16.03.2022.
//

import Foundation
import UIKit

func changeLightsSize(_ light: [UIView]) {
    light.forEach { $0.layer.cornerRadius = $0.frame.size.height / 2 }
}

func lightsTurnOff(_ light: [UIView]) {
    light.forEach { $0.alpha = 0.3 }
}
