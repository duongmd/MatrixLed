//
//  ViewController.swift
//  MatrixLed
//
//  Created by Student on 9/14/16.
//  Copyright © 2016 MD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var _marginX = 30
    var _marginY = 60
    var n = 5
    
    
    @IBOutlet weak var NumberBall: UITextField!
    
    
    @IBAction func ShowBall(sender: AnyObject) {
        
        for subview in view.subviews{
            if subview .isKindOfClass(UIImageView) {
                subview.removeFromSuperview()
            }
        }
        
        n = Int(NumberBall.text!)! - 1
        drawRowOfBall()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func drawRowOfBall() {
        for indexRows in 0...n {
            for indexColums in 0...n {
                let image = UIImage(named: "green")
                let ball = UIImageView(image: image)
                ball.center = CGPointMake(CGFloat(indexRows)*spaceBetweenBallInRow() + CGFloat(_marginX), CGFloat(indexColums) * spaceBetweenBallInColum() + CGFloat(_marginY))
                self.view.addSubview(ball)
            }
        }
    }

    
    func spaceBetweenBallInRow() -> CGFloat {
        let space = (self.view.bounds.size.width - 2*CGFloat(_marginX))/CGFloat(n)
        return space
    }
    func spaceBetweenBallInColum() -> CGFloat {
        let space = (self.view.bounds.size.height - 2*CGFloat(_marginY))/CGFloat(n)
        return space
    }
    
}

