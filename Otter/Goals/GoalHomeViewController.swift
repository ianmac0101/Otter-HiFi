//
//  GoalHomeViewController.swift
//  Otter
//
//  Created by gustavo chavez on 11/24/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
let list = ["running","breathing","meditating"]
let desList = ["you are doign well", "you are doing ok","Keep on trying"]
var myIndex = 0
class Goal {
    var activity = ""
    var frequency = ""
    var interval = 0
    var daysOfWeek = [String]()
    var totalDaysActive = 0
    var totalDaysCompleted = 0
    var location = ""
    var note = ""
    
    init (activity: String, frequency: String, interval: Int, daysOfWeek: [String], location:String, note: String){
        self.activity = activity
        self.frequency = frequency
        self.interval = interval
        self.daysOfWeek = daysOfWeek
        self.location = location
        self.note = note
    }
    
    func getCompletionRate() -> Int {
        if totalDaysActive != 0 {
            return totalDaysCompleted / totalDaysActive
        } else {
            return 0
        }
    }
}

class GoalHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (list.count)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return (cell)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segueToViewGoal", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
