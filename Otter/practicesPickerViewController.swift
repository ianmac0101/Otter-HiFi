//
//  practicesPickerViewController.swift
//  Otter
//
//  Created by Ian Macato on 11/29/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

class practicesPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var practicesPicker: UIPickerView!
    
    
    let practices = ["Meditate","Breathe","Nap"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        practicesPicker.selectRow(2, inComponent:0, animated:true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return practices[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return practices.count
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
