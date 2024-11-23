//
//  ViewController.swift
//  CatchThePekmezGame
//
//  Created by Arda Özel on 24.11.2024.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var pekmez1: UIImageView!
    @IBOutlet weak var pekmez2: UIImageView!
    @IBOutlet weak var pekmez3: UIImageView!
    @IBOutlet weak var pekmez4: UIImageView!
    @IBOutlet weak var pekmez5: UIImageView!
    @IBOutlet weak var pekmez6: UIImageView!
    @IBOutlet weak var pekmez7: UIImageView!
    @IBOutlet weak var pekmez8: UIImageView!
    @IBOutlet weak var pekmez9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        scoreLabel.text = "Score: \(score)"
        
        pekmez1.isUserInteractionEnabled = true
        pekmez2.isUserInteractionEnabled = true
        pekmez3.isUserInteractionEnabled = true
        pekmez4.isUserInteractionEnabled = true
        pekmez5.isUserInteractionEnabled = true
        pekmez6.isUserInteractionEnabled = true
        pekmez7.isUserInteractionEnabled = true
        pekmez8.isUserInteractionEnabled = true
        pekmez9.isUserInteractionEnabled = true
        
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        pekmez1.addGestureRecognizer(recognizer1)
        pekmez2.addGestureRecognizer(recognizer2)
        pekmez3.addGestureRecognizer(recognizer3)
        pekmez4.addGestureRecognizer(recognizer4)
        pekmez5.addGestureRecognizer(recognizer5)
        pekmez6.addGestureRecognizer(recognizer6)
        pekmez7.addGestureRecognizer(recognizer7)
        pekmez8.addGestureRecognizer(recognizer8)
        pekmez9.addGestureRecognizer(recognizer9)
        
    }

    @objc func increaseScore() {
        
        score += 1
        scoreLabel.text = "Score: \(score)"
        
    }

}

