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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ChooseViewController.segueIdentifier {
            if let nextViewController: ChooseViewController = segue.destination as? ChooseViewController {
                nextViewController.delegate = self
            }
        }
    }
}

extension DashboardViewController: ChooseViewControllerDelegate {
    func setPhrase(song: Song?) {
        if let _song = song {
            self.phrase.text = _song.phrase
        }
    }
}
