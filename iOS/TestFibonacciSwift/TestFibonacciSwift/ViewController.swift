//
//  ViewController.swift
//  TestFibonacciSwift
//
//  Created by AWL_02 on 03/07/2014.
//  Copyright (c) 2014 awl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func buttonLaunchClick(sender: AnyObject) {
        let dateBeginning:NSDate = NSDate()
        var answer = fib(30)
        
        let dateEnd:NSDate = NSDate()
        let intervalSeconds:NSTimeInterval = dateEnd.timeIntervalSinceDate(dateBeginning)
        let result:NSString = NSString(format: "%f", intervalSeconds)
        
        println(answer)
        println(result)
    }
    
    func fib(start: Int) -> Int {
        if start == 0 {
            return start
        }
        if start == 1 {
            return start
        }
        return (fib(start - 1) + fib(start - 2))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

