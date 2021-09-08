//
//  ViewController.swift
//  TipsAppV2
//
//  Created by Владислав Сизонов on 08.09.2021.
//

import UIKit

class ViewController: UIViewController {
    var total = 0
    
    @IBOutlet var billTextField: UITextField!
    
    @IBOutlet var friendsCountLAbel: UILabel!
    
    @IBOutlet var resultButton: UIButton!
    @IBOutlet var twelweButton: UIButton!
    @IBOutlet var sevenButton: UIButton!
    @IBOutlet var zeroButton: UIButton!
    
    @IBOutlet var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        friendsCountLAbel.text = "0"
        billTextField.font = .boldSystemFont(ofSize: 30)
        resultButton.layer.cornerRadius = 10
    }


    @IBAction func tipButtonPressed(_ sender: UIButton) {
        zeroButton.isSelected = false
        sevenButton.isSelected = false
        twelweButton.isSelected = false
        
        sender.isSelected = true
    }
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        friendsCountLAbel.text = String(format: "%.0f", stepper.value)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as? ResultViewController
        resultVC?.result = total
        
    }
}

