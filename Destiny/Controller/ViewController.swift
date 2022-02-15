//
//  ViewController.swift
//  Destiny
//
//  Created by Raúl Pavón on 04/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyManager = StoryManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyManager.nextStory(userChoice: sender.currentTitle ?? "")
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyManager.getStoryTitle()
        choice1Button.setTitle(storyManager.getChoice1(), for: .normal)
        choice2Button.setTitle(storyManager.getChoice2(), for: .normal)
    }
}

