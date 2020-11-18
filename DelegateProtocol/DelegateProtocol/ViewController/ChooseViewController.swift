//
//  ChooseTeamViewController.swift
//  DelegateProtocol
//
//  Created by Augusto Rocha on 18/11/20.
//

import UIKit

protocol ChooseViewControllerDelegate: class {
    func setPhrase(song: Song?)
}

class ChooseViewController: UIViewController {
    
    var delegate: ChooseViewControllerDelegate?
    
    static var segueIdentifier = "segueChooseTeam"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseBryanAdams(_ sender: UIButton) {
        self.delegate?.setPhrase(song: Song(phrase: "This is me"))
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chooseVictoriaJustice(_ sender: UIButton) {
        self.delegate?.setPhrase(song: Song(phrase: "Once again"))
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chooseScorpions(_ sender: UIButton) {
        self.delegate?.setPhrase(song: Song(phrase: "Rock you like a hurricane"))
        self.dismiss(animated: true, completion: nil)
    }
}
