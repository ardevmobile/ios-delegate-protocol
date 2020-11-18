//
//  ChooseTeamViewController.swift
//  DelegateProtocol
//
//  Created by Augusto Rocha on 18/11/20.
//

import UIKit

class ChooseViewController: UIViewController {
    
    static var segueIdentifier = "segueChooseTeam"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseBryanAdams(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chooseVictoriaJustice(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chooseScorpions(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
