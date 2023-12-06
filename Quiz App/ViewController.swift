//
//  ViewController.swift
//  Quiz App
//
//  Created by 11k on 12/4/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var checkAnswer: UIButton!
    
    @IBOutlet weak var d: UIButton!
    @IBOutlet weak var c: UIButton!
    @IBOutlet weak var b: UIButton!
    @IBOutlet weak var a: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var score = 0
    var index = 0
    var quiz:[Quiz] = [Quiz(question: "How many minutes are in a year?", answer1: "5437", answer2: "2345", answer3: "9081", answer4: "8760", correct: "8760"), Quiz(question: "What year was the movie Titanic released?", answer1: "1997", answer2: "1987", answer3: "2000", answer4: "2002", correct: "1997"), ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreLabel.text = String(score)
        questionLabel.text = quiz[index].question
        a.setTitle(quiz[index].answer1, for: .normal)
        b.setTitle(quiz[index].answer2, for: .normal)
        c.setTitle(quiz[index].answer3, for: .normal)
       d.setTitle(quiz[index].answer4, for: .normal)
        
    }
    
    @IBAction func next(_ sender: UIButton) {
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        
        if sender.titleLabel?.text ==  quiz[index].correct
        {
            sender.backgroundColor = .green
        }
    }
    

}

