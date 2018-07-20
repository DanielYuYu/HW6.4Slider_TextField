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

    @IBOutlet weak var textFieldLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
   
    var sliderValue1:Float = 0.0
    
    @IBAction func enterTextField(_ sender: UITextField) {
        
        // 處理字數
        let len = sender.text!
        
        // 處理文字大小
        let font = sender.font!
        let sliderValue2: CGFloat = CGFloat(sliderValue1)
        sender.font! = font.withSize(sliderValue2)
        
        textFieldLabel.text = "字數:\(len.count)"
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        // 處理sender.value的型態轉換，最後輸出
        sliderValue1 = Float(sender.value)
        let sliderValue2: CGFloat = CGFloat(sliderValue1)
        let numberString = String(format: "%.2f", sliderValue2)
        sliderLabel.text = "文字大小: \(numberString)"
        
       
        
    }
}

