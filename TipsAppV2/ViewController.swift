//
//  ViewController.swift
//  TipsAppV2
//
//  Created by Владислав Сизонов on 08.09.2021.
//

import UIKit

class ViewController: UIViewController {
    var total = 0.0
    var doublePersent = 0.0
    var friendsCount = 0
    
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
        
        guard let persent = Double(sender.currentTitle?.dropLast() ?? "") else { return }
        let doublePersent = persent / 100
        self.doublePersent = doublePersent
        print(persent)
        print("Double \(doublePersent)")
        
    }
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        friendsCountLAbel.text = String(format: "%.0f", stepper.value)
        friendsCount = Int(stepper.value)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as? ResultViewController
        resultVC?.result = total
    }
    
    @IBAction func resultButtonPressed(_ sender: UIButton) {
        var enteredDouble: Double?
        let possibleDouble = billTextField.text ?? ""
   
        if let convertedNumber = Double(possibleDouble)  {
            enteredDouble = convertedNumber
        } else {
            showAlert(title: "Ошибка", message: "Введите число")
            return
        }
        
        guard Int(stepper.value) != 0 else {
            showAlert(title: "Упс!", message: "Дрезей не может быть ноль")
            return
        }
        
        guard zeroButton.isSelected || sevenButton.isSelected || twelweButton.isSelected else {
            showAlert(title: "Упс...", message: "Выберите процент чаевых")
            return
        }
        
         total = (enteredDouble ?? 0.0) * (1.0 + doublePersent) / Double(friendsCount)
            
        performSegue(withIdentifier: "go", sender: nil)
        }
     
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
           super.touchesBegan(touches, with: event)
       }
}

