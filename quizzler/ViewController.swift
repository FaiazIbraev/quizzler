//
//  ViewController.swift
//  quizzler
//
//  Created by Student on 25/6/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var mailView: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    
    var Questions: [Question] = [.one, .two, .three]
    var userAnswers: [String] = []
    var counter = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setup()
        initialQues()
    }
    


    
    @IBAction func answerTapped(_ sender: UIButton) {
        switch sender.tag{
        case 1:
            userAnswers.insert("yes", at: counter)
        case 2:
            userAnswers.insert("no", at: counter)
        default:
            print("Sorry")
        }
        
        if Questions.count - 1 == counter{
            print(userAnswers)
        }else{
            counter += 1
            initialQues()
        }
    }
    
    func initialQues(){
        mainLabel.text = Questions[counter].title
        navigationItem.title = "Question #\(counter + 1)"
        changeView()
    }
    
    func changeView(){
        switch counter{
        case 0:
            view1.backgroundColor = .black
        case 1:
            view2.backgroundColor = .black
        case 2:
            view3.backgroundColor = .black
        default:
            print("Hello")
        }
    }
    
    func setup(){
        makeCornerView(view: noButton, cornerRaduis: 15)
        makeCornerView(view: yesButton, cornerRaduis: 15)
        makeCornerView(view: view1, cornerRaduis: 5)
        makeCornerView(view: view2, cornerRaduis: 5)
        makeCornerView(view: view3, cornerRaduis:5)
        makeCornerView(view: mailView, cornerRaduis: 30)
    
    }
    
    func makeCornerView(view: UIView, cornerRaduis: CGFloat){
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
    }
    
    
}

