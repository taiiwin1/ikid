//
//  KnockKnockViewController.swift
//  ikid
//
//  Created by Tai Nguyen on 2/7/26.
//

import UIKit

class KnockKnockViewController: UIViewController {

    
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var lines = [ "Knock knock", "Who's there?", "Lettuce", "Lettuce who?", "Lettuce in, it's cold out here!" ]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = lines[index]
    }
    
    @IBAction func nextTapped(_ sender: UIButton) {
        index += 1
        if index >= lines.count {
            index = 0
        }
        jokeLabel.text = lines[index]
    }
    
}
