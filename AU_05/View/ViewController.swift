//
//  ViewController.swift
//  AU_05
//
//  Created by Chris on 2/13/23.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var canSwitch: UISwitch!
    @IBOutlet weak var mexSwitch: UISwitch!
    @IBOutlet weak var ukSwitch: UISwitch!
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var usdField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdField.keyboardType = .decimalPad
    }
    
    @IBAction func navigate(_ sender: UIButton) {
        if canSwitch.isOn || mexSwitch.isOn || ukSwitch.isOn || euroSwitch.isOn {
            guard let amount = Int(usdField.text ?? "") else {
                let alert = UIAlertController(title: "Not an INT", message: "Please enter a valid integer.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
                    self.usdField.text = ""}))
                self.present(alert, animated: true, completion: nil)
                return
            }
            
            self.performSegue(withIdentifier: "toNavigation", sender: amount)
        } else {
            let alert = UIAlertController(title: "Error", message: "No switches were selected.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNavigation" {
            let navigation = segue.destination as! NavigationViewController
            navigation.currencies = [canSwitch.isOn ? CAD : nil, mexSwitch.isOn ? MXN : nil,                ukSwitch.isOn ? GBP : nil, euroSwitch.isOn ? EUR : nil,].compactMap { $0 }
            navigation.amount = sender as! Double
        }
    }
}


