//
//  PickTimeViewController.swift
//  Otter
//
//  Created by gustavo chavez on 12/5/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
var time = ""
class PickTimeViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return current_arr.count
        }
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return current_arr[row]
        }
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            print("Selected Item is " + current_arr[row])
            active_textField.text = current_arr[row]
        }
    var timeIndex = "AM"
    @IBAction func PMSelected(_ sender: Any) {
        timeIndex = "PM"
        
    }

    @IBAction func AMSelected(_ sender: Any) {
        timeIndex = "PM"
    }
    @IBAction func saveTime(_ sender: Any) {
        time = hourField.text!+":"+minuteField.text!+" "+timeIndex
    }
    
        var selectedHour = "1"
        var selectedMin = "00"
        @IBOutlet weak var hourField: UITextField!
        @IBOutlet weak var minuteField: UITextField!
        @IBOutlet weak var otterImg: UIImageView!
        let hours = ["1","2","3","4","5","6","7","8","9","10","11","12"]
        let minutes = ["00", "01", "02",  "03",  "04", "5",  "6",  "07",  "08",  "09", "10", "11", "12", "13", "14", "15", "16", "17","18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34","35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"]
        let myPickerView = UIPickerView()
        var current_arr : [String] = []
        var active_textField : UITextField!
        
        var curr_min = 0;
        var active_field =  10;
        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
            active_textField = textField
            switch textField {
            case hourField:
                current_arr = hours
                
            case minuteField:
                current_arr = minutes
            default:
                print("Default")
            }
            myPickerView.reloadAllComponents()
            return true
        }
        
        @IBOutlet weak var hourPicker: UIPickerView!
        var schedule = [String]()

        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.otterImg.image = UIImage(named: "otter_img.png")
            hourField.delegate      = self
            minuteField.delegate    = self
            myPickerView.delegate   = self
            myPickerView.dataSource = self
            hourField.inputView = myPickerView
            minuteField.inputView = myPickerView
            
            // Do any additional setup after loading the view.
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
}
