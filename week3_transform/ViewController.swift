//
//  ViewController.swift
//  week3_transform
//
//  Created by 洪得維 on 2019/7/20.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //test
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    var timer:Timer!
    var views = [UIView]()
    var index = 0.0
    var speed:Double = 4.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let myview = UIView(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
        myview.center = view.center
        myview.backgroundColor = UIColor.red
        myview.transform = CGAffineTransform(rotationAngle: 0)
        view.addSubview(myview)
        
        //        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (t) in
        //            self.rotateView(targateView: myview)
        //        })
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: {(timer) in self.rotateView(targateView: myview)})
        
        
        
    }
    
    func rotateView(targateView:UIView)
    {
        let angle = index * Double.pi / 180
        targateView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        index += speed
        
        /*
         
         if self.segment.selectedSegmentIndex == 0{
         index += 4
         }
         else{
         index -= 4
         }
         */
    }
    
    @IBAction func segmentaction(_ sender: UISegmentedControl) {
        
        //  let a = sender.selectedSegmentIndex
        switch sender.selectedSegmentIndex{
        case 0:
            speed = 4
            break
        case 1:
            speed = 8.553
            break
        case 2:
            speed = 16.23
            break
        case 3:
            speed = 50.43
            break
            
        default:
            break
        }
        
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        speed = Double(sender.value)
    
    }
    
}
