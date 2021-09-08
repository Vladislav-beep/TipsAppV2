//
//  ResultViewController.swift
//  TipsAppV2
//
//  Created by Владислав Сизонов on 08.09.2021.
//

import UIKit

class ResultViewController: UIViewController {
    var result = 0.0
    
    @IBOutlet var backButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.layer.cornerRadius = 10
        resultLabel.text = String(result)
        
    }
    

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
