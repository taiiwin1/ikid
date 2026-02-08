//
//  GoodViewController.swift
//  ikid
//
//  Created by Tai Nguyen on 2/7/26.
//

import UIKit

class GoodViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var jokes: [(setup: String, punchline: String)] = [
        ("Why do programmers prefer dark mode?", "Because light attracts bugs."),
        ("Why was the computer cold?", "It forgot to close its Windows."),
        ("What do you call cheese that isn’t yours?", "Nacho cheese.")
    ]
    var currentIndex = 0
    var showingPunchline = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = jokes[currentIndex].setup
    }
    

    @IBAction func nextTapped(_ sender: UIButton) {
        if showingPunchline {
            currentIndex = (currentIndex + 1) % jokes.count
            jokeLabel.text = jokes[currentIndex].setup
            showingPunchline = false
        } else {
            jokeLabel.text = jokes[currentIndex].punchline
            showingPunchline = true
        }
    }
}
