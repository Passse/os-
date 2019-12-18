//
//  ViewController.swift
//  Highercomputer
//
//  Created by s20181102933 on 2019/11/1.
//  Copyright © 2019 s20181102933. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var show: UITextField!
    
    var a = 0
    var s = 0
    var num = 0
    var cN = ""
    var SD = 0
    
    @IBAction func AC(_ sender: UIButton) {
        show.text = ""
        a = 0
        SD = 0
    }
    
    @IBAction func n1(_ sender: UIButton) {
        if sender.currentTitle! == "."
        {
            if (show.text?.contains("."))!
            {
                return
            }
            a = 1
        }
        if show.text! == "0" && sender.currentTitle! != "."
        {
            show.text = sender.currentTitle!
        }
        else
        {
            show.text = show.text! + sender.currentTitle!
        }
    }
    
    @IBAction func change(_ sender: UIButton) {
        if a == 1
        {
            let count = Double(show.text!)!
            let count1 = -count
            show.text = String(format:"%.2f", count1)
        }
        if a == 0
        {
            let count = Double(show.text!)!
            let count1 = -count
            show.text = String(format:"%.0f", count1)
        }
//        let count = Double(show.text!)!
//        let count1 = -count
//        show.text = String(count1)
    }
    
    @IBAction func percent(_ sender: UIButton) {
        let count = Double(show.text!)!
        let count1 = count * 0.1
        show.text = String(count1)
    }
    
    
    @IBAction func add(_ sender: UIButton) {
        if SD == 1
        {
            let A = Double(cN)!
            let B = Double(show.text!)!
            let C = A + B
            cN = String(C)
            show.text = ""
            num = 1
        }
        else{
            num = 1
            cN = show.text!
            show.text = ""
            SD = 1
        }
    }
    
    @IBAction func jian(_ sender: UIButton) {
        if SD == 1
        {
            let A = Double(cN)!
            let B = Double(show.text!)!
            let C = A - B
            cN = String(C)
            show.text = ""
            num = 2
        }
        else{
            num = 2
            cN = show.text!
            show.text = ""
            SD = 1
        }
    }
    @IBAction func cheng(_ sender: UIButton) {
        if SD == 1
        {
            let A = Double(cN)!
            let B = Double(show.text!)!
            let C = A * B
            cN = String(C)
            show.text = ""
            num = 3
        }
        else{
            num = 3
            cN = show.text!
            show.text = ""
            SD = 1
        }
    }
    @IBAction func chu(_ sender: UIButton) {
        if SD == 1
        {
            let A = Double(cN)!
            let B = Double(show.text!)!
            let C = A / B
            cN = String(C)
            show.text = ""
            num = 4
        }
        else{
            num = 4
            cN = show.text!
            show.text = ""
            SD = 1
        }
    }
    
    @IBAction func equal(_ sender: UIButton) {
        let num1 = Double(cN)!
        let num2 = Double(show.text!)!
        var result: Double
        switch num{
        case 1:
            result = num1 + num2
        case 2:
            result = num1 - num2
        case 3:
            result = num1 * num2
        case 4:
            result = num1 / num2
        default:
            result = 404
        }
        if a == 1
        {
            show.text = String(format:"%.2f", result)
        }
        if a == 0
        {
            show.text = String(format:"%.0f", result)
        }
        a = 0
        SD = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

