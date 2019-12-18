//
//  ViewController.swift
//  201811029333郄圣轩
//
//  Created by s20181102933 on 2019/12/18.
//  Copyright © 2019 s20181102933. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var operate1: UITextField!
    @IBOutlet weak var yun: UITextField!
    @IBOutlet weak var operate2: UITextField!
    @IBOutlet weak var result: UITextField!
    
    @IBAction func count(_ sender: UIButton) {
        let a = Double(operate1.text!)!
        let b = Double(operate2.text!)!
        if yun.text == "+"
        {
            result.text = "\(a+b)"
        }
        if yun.text == "-"
        {
            result.text = "\(a-b)"
        }
        if yun.text == "*"
        {
            result.text = "\(a*b)"
        }
        if yun.text == "/"
        {
            result.text = "\(a/b)"
        }
        
    }
    
    @IBOutlet weak var a: UIImageView!
    @IBAction func button(_ sender: UIButton) {
        let r = Int.random(in: 1...5)
        a.image = UIImage(named: "\(r)")
    }
    
    var Width = 0
    var count = 1
    @IBOutlet weak var program: UIView!
    @IBAction func Begin(_ sender: UIButton) {
            count = count + 1
            program.frame.size.width = CGFloat(Width*count)
            if count == 11
            {
                let alert = UIAlertController(title: "Tip", message: "时间已耗尽", preferredStyle: .alert)
                present(alert,animated:true,completion:nil)
                presentedViewController?.dismiss(animated: true, completion: nil)
                Width = Int(view.frame.width)/10
                program.frame.size.width = CGFloat(Width)
                count = 0
            }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Width = Int(view.frame.width)/10
        program.frame.size.width = CGFloat(Width)
        // Do any additional setup after loading the view.
    }


}

