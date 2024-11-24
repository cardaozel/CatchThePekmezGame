//
//  ViewController.swift
//  CatchThePekmezGame
//
//  Created by Arda Özel on 24.11.2024.
//

import UIKit

class ViewController: UIViewController {

    //Variables
    
    var score = 0
    var timer = Timer()
    var counter = 0
    var pekmezArray = [UIImageView]()
    var hideTimer = Timer()
    
    
    // Views
    
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
        
        // images
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
        
        pekmezArray = [pekmez1, pekmez2, pekmez3, pekmez4, pekmez5, pekmez6, pekmez7, pekmez8, pekmez9]
        
        //timers
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5 , target: self, selector: #selector(hidePekmez), userInfo: nil, repeats: true)
        
        hidePekmez()
        
    }
    
    @objc func hidePekmez() {
        
        for pekmez in pekmezArray {
            pekmez.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(pekmezArray.count - 1)))
        pekmezArray[random].isHidden = false
        
    }

    @objc func increaseScore() {
        
        score += 1
        scoreLabel.text = "Score: \(score)"
        
    }
    
    @objc func countDown() {
        counter -= 1
        timeLabel.text = "Time: \(counter)"
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            for pekmez in pekmezArray {
                pekmez.isHidden = true
            }
            
            //Alert
            
            let alert = UIAlertController(title: "Time's Up!", message: "Your score is \(score), do you want to replay?", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            let replayButton = UIAlertAction(title: "Replay", style: .default) { (action) in
               
                //replay function
                
                
                
            }
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            
            present(alert, animated: true, completion: nil)
            
        }
        
    }

}

