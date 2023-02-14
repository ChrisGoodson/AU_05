//
//  ViewController.swift
//  AU_05
//
//  Created by Chris on 2/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var canSlider: UIStackView!
    @IBOutlet weak var mexSlider: UISwitch!
    @IBOutlet weak var ukSlider: UISwitch!
    @IBOutlet weak var euroSlider: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nativage(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "toNavigation", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toNavigation" {
            let navigation = segue.destination as! NavigationViewController
        }
    }
    
}

