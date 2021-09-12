//
//  ResultViewController.swift
//  TipsAppV2
//
//  Created by Владислав Сизонов on 08.09.2021.
//

import UIKit

class ResultViewController: UIViewController {
    var result: Double!
    
    @IBOutlet var backButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.layer.cornerRadius = 10
        resultLabel.text = String(format: "%.2f",result)
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
