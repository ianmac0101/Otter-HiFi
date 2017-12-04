//
//  MakeNewGoalController.swift
//  Otter
//
//  Created by gustavo chavez on 11/26/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

class MakeNewGoalController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    

    @IBOutlet weak var timeF: UITextField!
    @IBOutlet weak var otterImg: UIImageView!
    @IBOutlet weak var activityField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var detailField: UITextField!
    
    @IBOutlet weak var hourPicker: UIPickerView!
    @IBOutlet weak var minutePicker: UIPickerView!
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
        var newGoal = Goal(activity: activityField.text!, frequency: "Weekly", interval: 1, daysOfWeek: [String](), location: locationField.text!, note: detailField.text!, totalDaysActive: 0, totalDaysCompleted: 0, schedule: schedule, time: Int(timeF.text!)!)
        goalsList.append(newGoal)
        goal_created = true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
