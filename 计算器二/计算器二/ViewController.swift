//
//  ViewController.swift
//  计算器二
//
//  Created by s20181102933 on 2019/10/23.
//  Copyright © 2019 s20181102933. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var b: UITextField!
    @IBOutlet weak var Operator: UITextField!
    @IBOutlet weak var result: UITextField!
    
    @IBAction func Add(_ sender: UIButton) {
        Operator.text = "+"
    }
    @IBAction func jian(_ sender: UIButton) {
        Operator.text = "-"
    }
    @IBAction func M(_ sender: UIButton) {
        Operator.text = "*"
    }
    
    @IBAction func chu(_ sender: UIButton) {
        Operator.text = "/"
    }
    @IBAction func R(_ sender: UIButton) {
        let num1 = Double(a.text!)!
        let num2 = Double(b.text!)!
        let op = Operator.text
        
        switch op
        {
        case "+":
            result.text = "\(num1+num2)"
        case "-":
            result.text = "\(num1-num2)"
        case "*":
            result.text = "\(num1*num2)"
        case "/":
            result.text = "\(num1/num2)"
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        a.placeholder = "请输入第一个数字"
        a.adjustsFontSizeToFitWidth = true
        a.minimumFontSize = 10
        a.clearButtonMode = .whileEditing
        a.becomeFirstResponder()
        a.keyboardType = .decimalPad
        
        b.placeholder = "请输入第二个数字"
        b.adjustsFontSizeToFitWidth = true
        b.minimumFontSize = 10
        b.clearButtonMode = .whileEditing
        b.becomeFirstResponder()
        b.keyboardType = .decimalPad
    }


}

