//
//  ViewController.swift
//  AnimationsTwo
//
//  Created by Chatchai on 11/7/2557 BE.
//  Copyright (c) 2557 Chatchai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coloredSquare = UIView()
    let duration: NSTimeInterval = 1.0
    let delay: NSTimeInterval = 0.0
    let options = UIViewAnimationOptions.CurveLinear
    let damping: CGFloat = 0.5
    let velocity = 1.0
    let size: CGFloat = CGFloat( Int(rand()) % 40) + 20
    let yPosition: CGFloat = CGFloat( Int(rand()) % 200) + 20
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
//        self.view.addSubview(coloredSquare)
//        
//        UIView.animateWithDuration(1.0, animations: {
//            self.coloredSquare.backgroundColor = UIColor.redColor()
//            self.coloredSquare.frame = CGRect(x: 325, y: 120, width: 50, height: 50)
//        }, completion: nil)
//        
//        UIView.animateWithDuration(duration, delay: delay, usingSpringWithDamping: damping, initialSpringVelocity: 3.0, options: UIViewAnimationOptions.Repeat, animations: {
//            } , completion: nil)
//        
        
    }

    @IBAction func animateButton(sender: AnyObject) {
        
        for loopNumber in 0...10{
            
        
            let coloredSquare = UIView()
            coloredSquare.backgroundColor = UIColor.blueColor()
            coloredSquare.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(coloredSquare)
        
            UIView.animateWithDuration(1.0, animations:{
                coloredSquare.backgroundColor = UIColor.redColor()
                coloredSquare.frame = CGRectMake(325-self.size, self.yPosition, self.size, self.size)
                }, completion: { animationFinished in
                    coloredSquare.removeFromSuperview()
            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

