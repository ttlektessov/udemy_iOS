//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Temirlan Tlektessov on 2021/09/14.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let label = UILabel()
        label.backgroundColor = .red
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
    }
}
