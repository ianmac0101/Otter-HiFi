//
//  practicesPickerViewController.swift
//  Otter
//
//  Created by Ian Macato on 11/29/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
var time_practice = 10
class practicesPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var timesPicker: UIPickerView!
    var time_picked = ""
    
    var time_selected = 10
    
    
    let times = ["1 minute","5 minutes","10 minutes", "15 minutes", "30 minutes"]
    let times_int = [60,300,600,900,1800]
    override func viewDidLoad() {
        super.viewDidLoad()
        timesPicker.selectRow(2, inComponent:0, animated:true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        time_selected = times_int[row]
        return times[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return times.count
    }
    
    @IBAction func meditateButton(_ sender: Any) {
        time_practice = time_selected
    }
    
    @IBAction func breatheButton(_ sender: Any) {
        time_practice = time_selected
    }
    
    @IBAction func napButton(_ sender: Any) {
        time_practice = time_selected
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
