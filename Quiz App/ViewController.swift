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
    var quiz:[Quiz] = [Quiz(question: "Question", answer1: "1", answer2: "3", answer3: "2", answer4: "4", correct: "4"), ]
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


}

