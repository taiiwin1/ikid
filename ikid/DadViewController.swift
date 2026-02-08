//
//  DadViewController.swift
//  ikid
//
//  Created by Tai Nguyen on 2/7/26.
//

import UIKit

class DadViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var jokes: [(setup: String, punchline: String)] = [    ("Why did the dad bring a ladder to the bar?", "Because the drinks were on the house."),
        ("Why do programmers hate nature?", "It has too many bugs."),
        ("Why did the math book look sad?", "Because it had too many problems.")
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
