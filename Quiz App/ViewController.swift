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
    var quiz:[Quiz] = [Quiz(question: "How many minutes are in a year?", answer1: "5437", answer2: "2345", answer3: "9081", answer4: "8760", correct: "8760"), Quiz(question: "What year was the movie Titanic released?", answer1: "1997", answer2: "1987", answer3: "2000", answer4: "2002", correct: "1997"), Quiz(question: "Whats 1+1", answer1: "2", answer2: "3", answer3: "16", answer4: "0", correct: "2"), Quiz(question: "The line \"To be or not to be comes from which Shakespeare play?", answer1:"Hamlet", answer2: "Romeo and Juliet", answer3: "Othello", answer4: "King Lear", correct: "Hamlet"), Quiz(question: " In the alphabet song, how many letters are between L and S?", answer1: "10", answer2: "6", answer3: "9", answer4: "5", correct: "6"), Quiz(question: "Which South American country has the capital city of Quito?", answer1: "Argentina", answer2: "Chile", answer3: "Ecuador", answer4: "Peru", correct: "Ecuador"), Quiz(question: "What continent do açai berries grow on?", answer1: "North America", answer2: "South America", answer3: "Africa", answer4: "Asia", correct: "South America"), Quiz(question: "How many times did Ross Geller marry and divorce on Friends?", answer1: "3", answer2: "6", answer3: "2", answer4: "1", correct: "3"), Quiz(question: " If you tipped 20% on a $15 bill, how much would the tip be?", answer1: "2", answer2: "5", answer3: "3", answer4: "6", correct: "3")]
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
        index += 1
        if index < quiz.count{
            questionLabel.text = quiz[index].question
            a.setTitle(quiz[index].answer1, for: .normal)
            b.setTitle(quiz[index].answer2, for: .normal)
            c.setTitle(quiz[index].answer3, for: .normal)
           d.setTitle(quiz[index].answer4, for: .normal)
            a.backgroundColor = .white
            b.backgroundColor = .white
            c.backgroundColor = .white
            d.backgroundColor = .white

            
        }
       

        
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        
        if sender.titleLabel?.text ==  quiz[index].correct
        {
            sender.backgroundColor = .green
            score += 1
            scoreLabel.text = String(score)
        }
        else if sender.titleLabel?.text !=  quiz[index].correct
        {
            sender.backgroundColor = .red
        }
        else{
            sender.backgroundColor = .white
        }
    }
    

}

