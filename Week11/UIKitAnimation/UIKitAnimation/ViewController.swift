//
//  ViewController.swift
//  UIKitAnimation
//
//  Created by Chatchai on 11/7/2557 BE.
//  Copyright (c) 2557 Chatchai. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController, UICollisionBehaviorDelegate {
    
    var square: UIView!
    var snap: UISnapBehavior!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
        collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        collision.action = {println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")}
        collision.collisionDelegate = self
        
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        
        }
    func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
        println("Boundary contact occurred - \(identifier)")
        
        let collidingView = item as UIView
        collidingView.backgroundColor = UIColor.yellowColor()
        UIView.animateWithDuration(0.3){
            collidingView.backgroundColor = UIColor.grayColor()
        }
        
        let itemBehaviour = UIDynamicItemBehavior(items: [square])
        itemBehaviour.elasticity = 0.6
        animator.addBehavior(itemBehaviour)
        
        var firstContact = false
//        if(!firstContact){
//            firstContact = true
//        
//            let square = UIView(frame: CGRect(x: 30, y: 0, width: 20, height: 20))
//            square.backgroundColor = UIColor.grayColor()
//            view.addSubview(square)
//        
//            collision.addItem(square)
//            gravity.addItem(square)
//        
//            let attach = UIAttachmentBehavior(item: collidingView, attachedToItem: square)
//            animator.addBehavior(attach)
//        }
       
       
    }
//    func panning(pan: UIPanGestureRecognizer){
//        print("Our box is panning...")
//        var location = pan.locationInView(self.view)
//        var touc
//    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
            if (snap != nil){
                animator.removeBehavior(snap)
            }
            let touch = touches.anyObject() as UITouch
            snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
            animator.addBehavior(snap)
        }
    //Core Motion
    let motionManager = CMMotionManager()
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

