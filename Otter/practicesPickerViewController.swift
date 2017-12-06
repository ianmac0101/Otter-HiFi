//
//  practicesPickerViewController.swift
//  Otter
//
//  Created by Ian Macato on 11/29/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

class practicesPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var timesPicker: UIPickerView!
    var time_picked = ""
    
    
    let times = ["1 minute","5 minutes","10 minutes", "15 minutes", "30 minutes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timesPicker.selectRow(2, inComponent:0, animated:true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        time_picked = times[row]
        return times[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return times.count
    }
    
//    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let identifier = segue.identifier {
//            switch identifier {
//            case “Show Graph”:
//                if let vc = segue.destination as? GraphController {
//                    vc.property1 = ...
//                        vc.callMethodToSetItUp(...)
//                }
//            default: break
//            }
//        } }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
