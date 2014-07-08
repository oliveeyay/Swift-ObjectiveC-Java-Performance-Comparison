//
//  ViewController.swift
//  TestBubbleSortSwift
//
//  Created by AWL_02 on 08/07/2014.
//  Copyright (c) 2014 awl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var inputArr = [12, 56, 32, 23, 67, 87, 45, 23, 10, 11]
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonLaunchClick(sender: AnyObject) {
        for var i: Int = 10; i <= 10; i+=10 {
            inputArr.insert(12, atIndex:i )
            inputArr.insert(56, atIndex:i+1 )
            inputArr.insert(32, atIndex:i+2 )
            inputArr.insert(23, atIndex:i+3 )
            inputArr.insert(67, atIndex:i+4 )
            inputArr.insert(87, atIndex:i+5 )
            inputArr.insert(45, atIndex:i+6 )
            inputArr.insert(23, atIndex:i+7 )
            inputArr.insert(10, atIndex:i+8 )
            inputArr.insert(11, atIndex:i+9 )
        }
        
        let dateBeginning:NSDate = NSDate()
        
        bubbleSort()
        
        let dateEnd:NSDate = NSDate()
        let intervalSeconds:NSTimeInterval = dateEnd.timeIntervalSinceDate(dateBeginning)
        let result:NSString = NSString(format: "%f", intervalSeconds)
        
        println(result)
    }
    
    func bubbleSort() {
        for var index: Int = 0; index < inputArr.count; index++ {
            for var jIndex: Int = 1; jIndex < (inputArr.count - 1); jIndex++ {
                if inputArr[jIndex-1] > inputArr[jIndex]{
                    swapNumbers(jIndex-1, index2: jIndex)
                }
            }
        }
    }
    
    func swapNumbers(index1 :Int, index2 :Int){
        let temp = inputArr[index1]
        inputArr[index1] = inputArr[index2]
        inputArr[index2] = temp
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

