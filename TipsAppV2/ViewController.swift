//
//  ViewController.swift
//  TipsAppV2
//
//  Created by Владислав Сизонов on 08.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billTextField: UITextField!
    @IBOutlet var friendsCountLAbel: UILabel!
    @IBOutlet var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsCountLAbel.text = "0"
    }


    @IBAction func tipButtonPressed(_ sender: Any) {
    }
    
    
    @IBAction func stepperPressed(_ sender: Any) {
        friendsCountLAbel.text = String(format: "%.0f", stepper.value)
    }
}

