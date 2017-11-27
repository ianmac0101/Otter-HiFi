//
//  popUpViewController.swift
//  Otter
//
//  Created by gustavo chavez on 11/26/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

class popUpViewController: UIViewController {

    @IBOutlet weak var confirmationText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmationText.text = "Created " + (goalsList.last?.activity)! + "activity!"
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
