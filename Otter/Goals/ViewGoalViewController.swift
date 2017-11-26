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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textlabel.text = "This is your goal " + "\(list[myIndex])"
        self.otterImage.image = UIImage(named: "otter_img.png")
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
