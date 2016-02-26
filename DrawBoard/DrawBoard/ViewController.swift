//
//  ViewController.swift
//  DrawBoard
//
//  Created by Nikhil Thota on 2/25/16.
//  Copyright © 2016 Nikhil Thota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trayView: UIView!
    
    @IBAction func onTrayPanGestures(panGestureRecognizer: UIPanGestureRecognizer) {
        let parentView = view
        // Absolute (x,y) coordinates in parent view's coordinate system
        let point = panGestureRecognizer.locationInView(parentView)
        
        // Total translation (x,y) over time in parent view's coordinate system
        let translation = panGestureRecognizer.translationInView(parentView)
        
        var trayOriginalCenter = trayView.center
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            trayOriginalCenter = trayView.center
            print("Gesture began at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            trayView.center = CGPoint(x: trayOriginalCenter.x, y: point.y)
            print("Gesture changed at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

