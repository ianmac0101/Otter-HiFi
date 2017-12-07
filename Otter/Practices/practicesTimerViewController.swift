//
//  practicesTimerViewController.swift
//  Otter
//
//  Created by Ian Macato on 11/29/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

class practicesTimerViewController: UIViewController {
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - IBOutlets
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var practiceLabel: UILabel!
    
    var seconds = time_practice
    var timer = Timer()
    
    var isTimerRunning = false
    var resumeTapped = false
    
    //MARK: - IBActions
    @IBAction func startButtonTapped(_ sender: UIButton) {
        if isTimerRunning == false {
            runTimer()
            self.startButton.isEnabled = false
        }
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(practicesTimerViewController.updateTimer)), userInfo: nil, repeats: true)
        isTimerRunning = true
        pauseButton.isEnabled = true
    }
    
    @IBAction func pauseButtonTapped(_ sender: UIButton) {
        if self.resumeTapped == false {
            timer.invalidate()
            isTimerRunning = false
            self.resumeTapped = true
            self.pauseButton.setTitle("Resume",for: .normal)
        } else {
            runTimer()
            self.resumeTapped = false
            isTimerRunning = true
            self.pauseButton.setTitle("Pause",for: .normal)
        }
    }
    //
    //    @IBAction func resetButtonTapped(_ sender: UIButton) {
    //        timer.invalidate()
    //        seconds = 60
    //        timerLabel.text = timeString(time: TimeInterval(seconds))
    //        isTimerRunning = false
    //        pauseButton.isEnabled = false
    //        startButton.isEnabled = true
    //    }
    
    
    @objc func updateTimer() {
        if seconds < 1 {
            timer.invalidate()
            //Send alert to indicate time's up.
        } else {
            time_practice -= 1
            timerLabel.text = timeString(time: TimeInterval(time_practice))
            
            //            timerLabel.text
            //            timerLabel.setTitle(timeString(time: TimeInterval(seconds)), for: UIControlState.normal)
        }
    }
    
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    //MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isEnabled = false
        timerLabel.text = timeString(time: TimeInterval(time_practice))
    }
}


