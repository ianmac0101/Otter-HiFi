//
//  GoalHomeViewController.swift
//  Otter
//
//  Created by gustavo chavez on 11/24/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

//Create pre-filled variables for user, ie user will have already running and meditating goals
var runningGoal = Goal(activity: "Running", frequency: "weekly", interval: 1, daysOfWeek: ["M","Tu"], location:"", note: "",totalDaysActive: 2, totalDaysCompleted: 2, schedule:  ["M","Tu"])

var meditatingGoal = Goal(activity: "Meditating", frequency: "weekly", interval: 1, daysOfWeek: ["M","Tu"], location:"", note: "", totalDaysActive: 4, totalDaysCompleted: 2, schedule:  ["M","Tu","Th","F"])
//Currently storing the goals as global variables (not great, but ok for now//
//TODO: REplace global variables
var goalsList = [runningGoal,meditatingGoal]
var myIndex = 0

class GoalHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var imageViewOtter: UIImageView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (goalsList.count)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = goalsList[indexPath.row].activity
        return (cell)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segueToViewGoal", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageViewOtter.image = UIImage(named: "otter_img.png")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class Goal {
    var activity = ""
    var frequency = ""
    var interval = 0
    var daysOfWeek = [String]()
    var totalDaysActive = 0 // Ie how many days has goal been possible to meet? Eg patient created 2 weeks ago, a 3/week goal so totalDaysACtive = 2*3 = 6
    var totalDaysCompleted = 0
    var location = ""
    var note = ""
    var schedule = [String]()
    
    init (activity: String, frequency: String, interval: Int, daysOfWeek: [String], location:String, note: String, totalDaysActive: Int, totalDaysCompleted: Int, schedule: [String]){
        self.activity = activity
        self.frequency = frequency
        self.interval = interval
        self.daysOfWeek = daysOfWeek
        self.location = location
        self.note = note
        self.totalDaysActive = totalDaysActive
        self.totalDaysCompleted = totalDaysCompleted
        self.schedule = schedule
    }
    func getCompletionRate() -> String {
        if totalDaysActive != 0 {
            var completion_rate = Float (totalDaysCompleted) / Float (totalDaysActive)
            completion_rate = round( completion_rate * 100)
            return "\(completion_rate)" + "%"
        } else {
            return "0" + "%"
        }
    }
}
