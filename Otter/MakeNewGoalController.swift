//
//  MakeNewGoalController.swift
//  Otter
//
//  Created by gustavo chavez on 11/26/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

class MakeNewGoalController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return hours.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> Int {
        return hours[row]
    }
  
    
    @IBOutlet weak var timeF: UITextField!
    @IBOutlet weak var otterImg: UIImageView!
    @IBOutlet weak var activityField: UITextField!
    @IBOutlet weak var hourField: UITextField!
    @IBOutlet weak var minuteField: UITextField!
    let hours = [1,2,3,4,5,6,7,8,9,10,11,12]
    let minutes = [ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17,18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34,35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]
    let myPickerView = UIPickerView()
    var curr_hour = 1;
    var curr_min = 0;
    var active_field =  10;
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    @IBAction func doneButton(_ sender: Any) {
        var newGoal = Goal(activity: activityField.text!, frequency: "Weekly", interval: 1, daysOfWeek: [String](), location: " ", note: " ", totalDaysActive: 0, totalDaysCompleted: 0, schedule: schedule, time: Int(timeF.text!)!)
        goalsList.append(newGoal)
        goal_created = true
    }
    
    @IBOutlet weak var hourPicker: UIPickerView!
    var schedule = [String]()
    var activity =  ""
    var location = ""
    var notes = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.otterImg.image = UIImage(named: "otter_img.png")
        
        // Do any additional setup after loading the view.
    }
    @IBAction func suSelected(_ sender: Any) {
        schedule.append("Su")
    }
    @IBAction func MSelected(_ sender: Any) {
        schedule.append("M")
    }
    @IBAction func tuSelected(_ sender: Any) {
        schedule.append("Tu")
    }
    
    @IBAction func wSelected(_ sender: Any) {
        schedule.append("W")
    }
    
    @IBAction func thSelected(_ sender: Any) {
        schedule.append("Th")
    }
    
    @IBAction func fSelected(_ sender: Any) {
        schedule.append("F")
    }
    @IBAction func saSelected(_ sender: Any) {
        schedule.append("Sa")
    }
    @IBAction func createSelected(_ sender: Any) {
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
