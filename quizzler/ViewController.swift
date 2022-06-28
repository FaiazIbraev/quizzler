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
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var mailView: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    
    var questions: [Question] = [.one, .two, .three, .four, .five]
    var userAnswers: [String] = []
    var rightAnswers: [String] = ["yes", "no", "no", "yes", "no"]
    var counter = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setup()
        initialQues()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as! ResultViewController
//    }
    
    @IBAction func answerTapped(_ sender: UIButton) {
        switch sender.tag{
        case 1:
            userAnswers.insert("no", at: counter)
        case 2:
            userAnswers.insert("yes", at: counter)
        default:
            print("Sorry")
        }
        
        if questions.count - 1 == counter{
            print(userAnswers)
        }else {
            counter += 1
            initialQues()
            print(userAnswers)
        }
    }
    
    func initialQues(){
        mainLabel.text = questions[counter].title
        navigationItem.title = "Question #\(counter + 1)"
        changeView()
    }
    

    
    func changeView(){
        switch counter{
        case 0:
            view1.backgroundColor = .green
        case 1:
            view2.backgroundColor = .green
        case 2:
            view3.backgroundColor = .green
        case 3:
            view4.backgroundColor = .green
        case 4:
            view5.backgroundColor = .green
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
        makeCornerView(view: view4, cornerRaduis:5)
        makeCornerView(view: view5, cornerRaduis:5)
        makeCornerView(view: mailView, cornerRaduis: 30)
    
    }
    
    func makeCornerView(view: UIView, cornerRaduis: CGFloat){
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
    }
    
    func result (){
        if userAnswers == rightAnswers{
            print("\(userAnswers)/ \(counter)")
        }
    }
    
}

