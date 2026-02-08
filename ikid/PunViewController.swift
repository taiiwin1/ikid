//
//  PunViewController.swift
//  ikid
//
//  Created by Tai Nguyen on 2/7/26.
//

import UIKit

class PunViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var jokes: [(setup: String, punchline: String)] = [
        ("I’m reading a book about anti-gravity.", "It’s impossible to put down."),
        ("Why did the programmer quit his job?", "Because he didn’t get arrays."),
        ("I tried to catch fog yesterday.", "Mist.")
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
