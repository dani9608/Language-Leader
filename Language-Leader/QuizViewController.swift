//
//  QuizViewController.swift
//  Language-Leader
//
//  Created by Daniela Bernal on 11/23/22.
//

import UIKit
import Parse

var count = 0

class QuizViewController: UIViewController {
    
    
    //Main View Outlets
    @IBOutlet weak var quesLabel: UILabel!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var lastScreen: UIButton!
    
    var ques:[Int] = []
    var queCnt = 0
    
    // To keep track of current Question Number
    var quesNumber = 0
    // Temporarily used to see the correct answers
    override func viewDidLoad() {
        lastScreen.isHidden = true
        super.viewDidLoad()
        question_selection()
        print(ques)
        
        NextQuestion(quesNumber: ques[0])
        //quesLabel.displayLbel()
        btn0.display()
        btn1.display()
        btn2.display()
        btn3.display()
        lastScreen.display()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    //All Questions in questions array
    var questions = ["The English word for casa is:",
                     "What does Piso stand for?",
                     "What is the correct translation for cocina?",
                     "What does ¿Cuándo? mean?",
                     "How do you say snow in Spanish?",
                     "What does Perro stand for?",
                     "What is the correct translation for Red color?",
                     "What does Sister stand for?",
                     "How do you say tomorrow in Spanish?",
                     "What is the correct translation for Mar?"]
    //All Anssers in allAnswers array
    var allAnswers = [["Train", "Mountain", "House", "Car"],
                      ["Fridge", "Floor", "Butterfly", "Girl"],
                      ["Kitchen", "Dessert", "Chef", "Cookie"],
                      ["Why?", "How?", "Who?", "When?"],
                      ["Frio", "Gato", "Carro", "Nieve"],
                      ["Bear", "Dog", "Cat", "Crab"],
                      ["Rojo", "Azul", "Verde", "Morado"],
                      ["Tia", "Madre", "Hermana", "Abuelo"],
                      ["Hoy", "Luego", "Mañana", "Ayer"],
                      ["Sand", "Sun", "Sick", "Sea"]]
    //corrent answer index for each question
    var correctAnswer = [2,1,0,3,3,1,0,2,2,3]
    
    func question_selection(){
        
        var randomQuestion = Int(arc4random_uniform(UInt32(11) - 1 ))
        for _ in 0...4 {
            if ques.contains(randomQuestion) {
                while ques.contains(randomQuestion) {
                    randomQuestion = Int(arc4random_uniform(UInt32(11) - 1 ))
                }
                ques.append(randomQuestion)
            } else {
                ques.append(randomQuestion)
                randomQuestion = Int(arc4random_uniform(UInt32(11) - 1 ))
            }
        }
    }
    
    
    // Method used to ask the next question to user
    func NextQuestion(quesNumber: Int) {
        
        quesLabel.text = questions[quesNumber]
        btn0.setTitle(allAnswers[quesNumber][0], for: .normal)
        btn1.setTitle(allAnswers[quesNumber][1], for: .normal)
        btn2.setTitle(allAnswers[quesNumber][2], for: .normal)
        btn3.setTitle(allAnswers[quesNumber][3], for: .normal)
        
        //  questions.remove(at: quesNumber)
        // allAnswers.remove(at: quesNumber)
        
        btn0.backgroundColor = UIColor(red:0.33, green:0.51, blue:1.00, alpha:1.0)
        btn1.backgroundColor = UIColor(red:0.33, green:0.51, blue:1.00, alpha:1.0)
        btn2.backgroundColor = UIColor(red:0.33, green:0.51, blue:1.00, alpha:1.0)
        btn3.backgroundColor = UIColor(red:0.33, green:0.51, blue:1.00, alpha:1.0)
        
        //
    }
    
    
    @IBAction func btnpres0(_ sender: UIButton)
    {
        let bt = sender.tag
        if(bt == correctAnswer[ques[queCnt]]) //Modified
        {
            count = count + 1
            sender.backgroundColor = UIColor.green
            queCnt += 1
        }
        else
        {
            sender.backgroundColor = UIColor.red
            queCnt += 1
        }
        
        /* Checking If 5 questions are asked or not. If yes then hiding the elements of screen.
         If no then calling the NextQuestion method */
        if(queCnt <= 4 ){ //Modified
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.NextQuestion(quesNumber: self.ques[self.queCnt])
            }
        }
        else {
            lastScreen.isHidden = false
            quesLabel.text = "Done!"
            btn0.isHidden = true
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
        }
    }
}

