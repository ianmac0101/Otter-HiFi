//
//  MakeNewGoalController.swift
//  Otter
//
//  Created by gustavo chavez on 11/26/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
var activitySaved = ""
class MakeNewGoalController: UIViewController {
    
    
    var selectedHour = "1"
    var selectedMin = "00"
    @IBOutlet weak var otterImg: UIImageView!
    @IBOutlet weak var activityField: UITextField!

   
    var schedule = [String]()
    var location = ""
    var notes = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.otterImg.image = UIImage(named: "otter_img.png")
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveActivity(_ sender: Any) {
        print(activityField.text!)
        activitySaved = activityField.text!
    }
}
