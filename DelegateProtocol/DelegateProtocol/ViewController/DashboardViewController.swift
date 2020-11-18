//
//  DashboardViewController.swift
//  DelegateProtocol
//
//  Created by Augusto Rocha on 18/11/20.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var phrase: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func completePhrase(_ sender: UIButton) {
        self.performSegue(withIdentifier: ChooseViewController.segueIdentifier, sender: nil)
    }
}
