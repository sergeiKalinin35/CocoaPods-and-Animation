//
//  ViewController.swift
//  CocoaPods and Animation
//
//  Created by Sergey on 07.08.2021.
//

import Spring


class ViewController: UIViewController {
    
    
    @IBOutlet weak var coreAnimationView: UIImageView!
    // фиксируем оригинальное положение вью/
    private var originCoordinate: CGFloat?
    
    
    @IBOutlet var springAnimationView: SpringImageView!
    
    
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        originCoordinate = coreAnimationView.frame.origin.x
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //       originCoordinate = coreAnimationView.frame.origin.x // симуляторы разной модели не работает в этой функции
    }


    
    
 @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
    springAnimationView.animation = "fall"
    springAnimationView.curve = "easeIn"
    springAnimationView.duration = 0.6
    springAnimationView.animate()
        
    
    // анимация кнопки через сендер
    sender.animation = "wobble"
    sender.animate()
    
    
    
    
}
    
    
    @IBAction func coreAnimationButton(_ sender: UIButton) {
        sender.pilsate()
        
        UIView.animate(
            withDuration: 0.6,
            delay: 0,// задержка анимации
            options: [.autoreverse, .repeat]) {
            
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 15
                
            }
        }
        
   //     if coreAnimationView.frame.origin.x == originCoordinate {
   //         coreAnimationView.frame.origin.x -= 30
            
      //  }
   //     coreAnimationView.frame.origin.x -= 30 // ось х минус 30 поинтов значение можно вытолкнуть за пределы экрана
        // если вью находится по центру мы нажимаем на кнопку  ориг положение вью соотносится с текущим положением вью
        //при нажатие на кнопку отличается положение вью потом недолжно отрабатывать нажатие вью на кнопку
        // смещать куда либо///stop
        // вернуть объект обратно назад
        
        
        
    }
    
}

