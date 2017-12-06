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
        confirmationText.text = "Created " + (goalsList.last?.activity)! + " goal!"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
