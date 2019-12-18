//
//  ViewController.swift
//  Question
//
//  Created by s20181102933 on 2019/11/27.
//  Copyright © 2019 s20181102933. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var program: UIView!
    
    let questions = ["1.一加一等于二?",
                     "2.RGB色域的范围是255?",
                     "3.木星是最大的地外行星?",
                     "4.霍金发现了引力波?",
                     "5.银河系的中心是一颗巨大的黑洞?",
                     "6.爱因斯坦创造了相对论?",
                     "7.波尔开创了量子力学?",
                     "8.黑洞能否用肉眼观察到?",
                     "9.程序好编吗?"]
    let answers = [true,true,true,false,false,true,true,false,false]
    var xiabiao = 0
    var scoreu = 0
    var Width = 0
    var count = 1
    @IBAction func YES(_ sender: UIButton) {
        count = count + 1
        program.frame.size.width = CGFloat(Width*count)
        Uanswer(User: true)
        Next()
    }
    @IBAction func NO(_ sender: UIButton) {
        count = count + 1
        program.frame.size.width = CGFloat(Width*count)
        Uanswer(User: false)
        Next()
    }
    @IBOutlet weak var show: UILabel!
    
    func Next()
    {
        xiabiao = xiabiao + 1
        if xiabiao == 9
        {
            let alert = UIAlertController(title: "Congratulations", message: "题目已全部完成!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "确定", style: UIAlertAction.Style.default, handler:{action in print("11")}))
            present(alert,animated:true,completion:nil)
        }
        if xiabiao == 9
        {
            xiabiao = 0
            score.text = "0"
            scoreu = 0
            Width = Int(view.frame.width)/9
            program.frame.size.width = CGFloat(Width)
            count = 0

        }
        
        number.text = "\(xiabiao+1)/9"
        
        show.text = questions[xiabiao]
        
//        if xiabiao == 9
//        {
//            let alert = UIAlertController(title: "Point", message: "恭喜你答对了！", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "确定", style: UIAlertAction.Style.default, handler:{action in print("11")}))
//            present(alert,animated:true,completion:nil)
//        }
    }
    
    func Uanswer(User: Bool)
    {
        if xiabiao == 8
        {
            return
        }
        if answers[xiabiao] == User
        {
            scoreu = scoreu + 1
            score.text = "\(scoreu)"
            let alert = UIAlertController(title: "Point", message: "恭喜你答对了！", preferredStyle: .alert)
            present(alert,animated:true,completion:nil)
            presentedViewController?.dismiss(animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: "Point", message: "抱歉你答错了!", preferredStyle: .alert)
            present(alert,animated:true,completion:nil)
            presentedViewController?.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        show.text = questions[xiabiao]
        number.text = "1/9"
        super.viewDidLoad()
        Width = Int(view.frame.width)/9
        program.frame.size.width = CGFloat(Width)
        // Do any additional setup after loading the view.)
    }
}

