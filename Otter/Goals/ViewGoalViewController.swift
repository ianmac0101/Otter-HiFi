//
//  ViewGoalViewController.swift
//  Otter
//
//  Created by gustavo chavez on 11/25/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

class ViewGoalViewController: UIViewController {
    @IBOutlet weak var textlabel: UITextView!
    @IBOutlet weak var otterImage: UIImageView!

    @IBOutlet weak var suImage: UIImageView!
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var tuImage: UIImageView!
    @IBOutlet weak var wImage: UIImageView!
    @IBOutlet weak var thImage: UIImageView!
    @IBOutlet weak var fImage: UIImageView!
    @IBOutlet weak var saImage: UIImageView!
    
    @IBOutlet weak var timeField: UILabel!
    @IBOutlet weak var percentField: UITextField!
    
    @IBOutlet weak var percentCommentField: UITextField!
    
    @IBAction func weekPressed(_ sender: Any) {
        self.percentField.text = goalsList[myIndex].getWeekRate()
        self.percentCommentField.text = "within last week"

    }
    @IBAction func monthPressed(_ sender: Any) {
        self.percentField.text = goalsList[myIndex].getMonthRate()
        self.percentCommentField.text = "within last month"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textlabel.text = "Your Goal " + "\(goalsList[myIndex].activity)"
        self.otterImage.image = UIImage(named: "otter_img.png")
        self.timeField.text = "Usually around " + goalsList[myIndex].getTime()
        self.percentField.text = goalsList[myIndex].getCompletionRate()
        self.percentCommentField.text = "within last week"
        
        if goalsList[myIndex].schedule.contains("Su") {
            if goalsList[myIndex].daysOfWeek.contains("Su"){
                self.suImage.image = UIImage(named: "check.png")
            } else {
                self.suImage.image = UIImage(named: "x.png")
            }
        } else{
            self.suImage.image = UIImage(named: "-.png")
        }
        if goalsList[myIndex].schedule.contains("M") {
            if goalsList[myIndex].daysOfWeek.contains("M"){
                self.mImage.image = UIImage(named: "check.png")
            } else {
                self.mImage.image = UIImage(named: "x.png")
            }
        } else{
            self.mImage.image = UIImage(named: "-.png")
        }
        if goalsList[myIndex].schedule.contains("Tu") {
            if goalsList[myIndex].daysOfWeek.contains("Tu"){
                self.tuImage.image = UIImage(named: "check.png")
            } else {
                self.tuImage.image = UIImage(named: "x.png")
            }
        } else{
            self.tuImage.image = UIImage(named: "-.png")
        }
        if goalsList[myIndex].schedule.contains("W") {
            if goalsList[myIndex].daysOfWeek.contains("W"){
                self.wImage.image = UIImage(named: "check.png")
            } else {
                self.wImage.image = UIImage(named: "x.png")
            }
        } else{
            self.wImage.image = UIImage(named: "-.png")
        }
        if goalsList[myIndex].schedule.contains("Th") {
            if goalsList[myIndex].daysOfWeek.contains("Th"){
                self.thImage.image = UIImage(named: "check.png")
            } else {
                self.thImage.image = UIImage(named: "x.png")
            }
        } else {
            self.thImage.image = UIImage(named: "-.png")
        }
        if goalsList[myIndex].schedule.contains("F") {
            if goalsList[myIndex].daysOfWeek.contains("F"){
                self.fImage.image = UIImage(named: "check.png")
            } else {
                self.fImage.image = UIImage(named: "x.png")
            }        } else{
            self.fImage.image = UIImage(named: "-.png")
        }
        if goalsList[myIndex].schedule.contains("Sa") {
            if goalsList[myIndex].daysOfWeek.contains("Sa"){
                self.saImage.image = UIImage(named: "check.png")
            } else {
                self.saImage.image = UIImage(named: "x.png")
            }
        } else{
            self.saImage.image = UIImage(named: "-.png")
        }
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
