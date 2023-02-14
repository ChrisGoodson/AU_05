//
//  ViewController.swift
//  AU_05
//
//  Created by Chris on 2/13/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nativage(_ sender: UIButton) {
        let nativateController = NavigationViewController()
        self.present(nativateController, animated: true, completion: nil)
    }
    
}

