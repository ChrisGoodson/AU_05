//
//  NavigationViewController.swift
//  AU_05
//
//  Created by Chris on 2/13/23.
//

import UIKit

class NavigationViewController: UIViewController {
    
    @IBOutlet weak var canDollar: UILabel!
    @IBOutlet weak var mexPeso: UILabel!
    @IBOutlet weak var ukPound: UILabel!
    @IBOutlet weak var euro: UILabel!
    @IBOutlet weak var canSwitch: UISwitch!
    @IBOutlet weak var mexSwitch: UISwitch!
    @IBOutlet weak var ukSwitch: UISwitch!
    @IBOutlet weak var euroSwitch: UISwitch!
    
    var currencies: [Currency] = []
    var amount: Double = 0
    var showRestartPopup: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for currency in currencies {
            switch currency {
            case CAD:
                canDollar.text = "\(currency.abbreviation) \(String(format: "%.2f", amount * currency.rateToUSD))"
                canSwitch.isOn = true
            case MXN:
                mexPeso.text = "\(currency.abbreviation) \(String(format: "%.2f", amount * currency.rateToUSD))"
                mexSwitch.isOn = true
            case GBP:
                ukPound.text = "\(currency.abbreviation) \(String(format: "%.2f", amount * currency.rateToUSD))"
                ukSwitch.isOn = true
            case EUR:
                euro.text = "\(currency.abbreviation) \(String(format: "%.2f", amount * currency.rateToUSD))"
                euroSwitch.isOn = true
            default:
                break
            }
        }
    }

}
