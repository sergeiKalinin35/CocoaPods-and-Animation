//
//  Extension + UIButton.swift
//  CocoaPods and Animation
//
//  Created by Sergey on 07.08.2021.
//

import UIKit

extension UIButton {
    func pilsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.98 // сжимается
        pulse.toValue = 1      // расжимается
        pulse.duration = 0.6   // анимация в секундах
        pulse.autoreverses = true // анимация в одну сторону а потом в другую
        pulse.repeatCount = 2  // количество повторов
        
        // начальное ускорение и затухание
        pulse.initialVelocity = 0.5   // начальное ускорение
        pulse.damping = 1 //затухание
        
        layer.add(pulse, forKey: nil)
        
    }
}
















