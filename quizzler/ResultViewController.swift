//
//  ResultViewController.swift
//  quizzler
//
//  Created by Student on 25/6/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var repeatButton: UIButton!
    
    var result: (correctAnswers: String, totalQuestions: String) = ("", "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Question"
        setup()
        getData()

    }
    
    func setup(){
        adviceLabel.layer.cornerRadius = 15
        adviceLabel.layer.masksToBounds = true
        repeatButton.layer.cornerRadius = 15
        repeatButton.layer.masksToBounds = true
    }
    
    func getData (){
        resultLabel.text = "\(result.correctAnswers) / \(result.totalQuestions)"
        if let number = Int (result.correctAnswers), let questions = Int (result.totalQuestions){
            if number == 0{
                adviceLabel.text = "Нужно записаться на курсы"
            } else if number > 0 && number < 3 {
                adviceLabel.text = "Нужно еще поучиться"
            } else if number >= 3 && number < questions {
                adviceLabel.text = "Неплохо, но есть куда расти"
            } else if number == questions{
                adviceLabel.text = "Супер! Вы талант!"
            }
        }
    }
    
    @IBAction func repeatButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    


}
