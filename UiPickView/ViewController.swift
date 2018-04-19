//
//  ViewController.swift
//  UiPickView
//
//  Created by D7703_23 on 2018. 4. 19..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    

    @IBOutlet weak var myPickerView: UIPickerView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myLabel2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }
    
    // UIPickerViewDataSource delegate method
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        } else {
            return 100
        }
    }
    
    // UIPickerViewDelegate method
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "First \(row)"
        } else {
            return "Second \(row)"
        }
    }
    
    // Picker에 있는 값을 뽑아 오기
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            myLabel.text = "First \(row)"
        } else {
            myLabel2.text = "Second \(row)"
        }
    }
}

