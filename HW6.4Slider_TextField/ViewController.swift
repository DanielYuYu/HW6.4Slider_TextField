//
//  ViewController.swift
//  HW6.4Slider_TextField
//
//  Created by Daniel on 2018/7/20.
//  Copyright © 2018年 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var enterTextField: UITextField!
    @IBOutlet weak var textFieldLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
   
    var sliderValue1:Float = 0.0
    
    @IBAction func enterTextField(_ sender: UITextField) {
        
        // 處理字數
        let len = sender.text!
        textFieldLabel.text = "字數:\(len.count)"
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        // 處理sender.value的型態轉換，最後輸出
        sliderValue1 = Float(sender.value)
        let sliderValue2: CGFloat = CGFloat(sliderValue1)
        let numberString = String(format: "%.2f", sliderValue2)
        sliderLabel.text = "文字大小: \(numberString)"
        
        //宣告一個常數font，存入enterTextField.font
        var font = enterTextField.font
        //宣告一個常數fontSize，當作mySlider的sender.value
        let fontSize = sender.value
        //宣告一個常數textFieldSize(必須是CGFloat型別)，並將fontSize轉成CGFloat存入
        let textFieldSize:CGFloat = CGFloat(fontSize)
        
        //滑動slider時，enterTextField字體會放大/縮小
        //withSize為蘋果寫的一個func(如下)，把textFieldSize當作參數回傳UIFont
        //func withSize(_ fontSize: CGFloat) -> UIFont
        enterTextField.font = font?.withSize(textFieldSize)
        
    }
}

