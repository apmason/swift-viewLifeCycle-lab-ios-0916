//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var die1: UIView!
    
    @IBOutlet weak var die2: UIView!
    
    @IBOutlet weak var die3: UIView!
    
    @IBOutlet weak var die4: UIView!
    
    @IBOutlet weak var die5: UIView!
    
    @IBOutlet weak var die6: UIView!
    
    @IBOutlet weak var die7: UIView!
    
    @IBOutlet weak var die8: UIView!
    
    @IBOutlet weak var die9: UIView!
    
    @IBOutlet weak var score1: UIView!
    
    @IBOutlet weak var score2: UIView!
    
    @IBOutlet weak var score3: UIView!
    
    @IBOutlet weak var score4: UIView!
    
    @IBOutlet weak var score5: UIView!
    
    @IBOutlet weak var score6: UIView!
    
    @IBOutlet weak var numberScore1: UILabel!
    
    @IBOutlet weak var numberScore2: UILabel!
    
    @IBOutlet weak var numberScore3: UILabel!
    
    @IBOutlet weak var numberScore4: UILabel!
    
    @IBOutlet weak var numberScore5: UILabel!
    
    @IBOutlet weak var numberScore6: UILabel!
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        count += 1
        if count > 6 {
          count += 1
        } else {
            let score = randomDiceRoll()
            print(score)
            displayDiePattern(score: score)
            updateScore(roll: score)
        }
    }
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        die1.isHidden = true
        die2.isHidden = true
        die3.isHidden = true
        die4.isHidden = true
        die5.isHidden = true
        die6.isHidden = true
        die7.isHidden = true
        die8.isHidden = true
        die9.isHidden = true
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateScore(roll: Int) {
        if score1.isHidden == true {
            numberScore1.text = String(roll)
            score1.isHidden = false
        } else if score2.isHidden == true {
            numberScore2.text = String(roll)
            score2.isHidden = false
        } else if score3.isHidden == true {
            numberScore3.text = String(roll)
            score3.isHidden = false
        } else if score4.isHidden == true {
            numberScore4.text = String(roll)
            score4.isHidden = false
        } else if score5.isHidden == true {
            numberScore5.text = String(roll)
            score5.isHidden = false
        } else if score6.isHidden == true {
            numberScore6.text = String(roll)
            score6.isHidden = false
        }
    }
    
    func displayDiePattern(score: Int) {
        if score == 1 {
            die1.isHidden = true
            die2.isHidden = true
            die3.isHidden = true
            die4.isHidden = true
            die5.isHidden = false
            die6.isHidden = true
            die7.isHidden = true
            die8.isHidden = true
            die9.isHidden = true
        }
        else if score == 2 {
            die1.isHidden = false
            die2.isHidden = true
            die3.isHidden = true
            die4.isHidden = true
            die5.isHidden = true
            die6.isHidden = true
            die7.isHidden = true
            die8.isHidden = true
            die9.isHidden = false
        }
        else if score == 3 {
            die1.isHidden = false
            die2.isHidden = true
            die3.isHidden = true
            die4.isHidden = true
            die5.isHidden = false
            die6.isHidden = true
            die7.isHidden = true
            die8.isHidden = true
            die9.isHidden = false
        }
        else if score == 4 {
            die1.isHidden = false
            die2.isHidden = true
            die3.isHidden = false
            die4.isHidden = true
            die5.isHidden = true
            die6.isHidden = true
            die7.isHidden = false
            die8.isHidden = true
            die9.isHidden = false
        }
        else if score == 5 {
            die1.isHidden = false
            die2.isHidden = true
            die3.isHidden = false
            die4.isHidden = true
            die5.isHidden = false
            die6.isHidden = true
            die7.isHidden = false
            die8.isHidden = true
            die9.isHidden = false
        }
        else if score == 6 {
            die1.isHidden = false
            die2.isHidden = true
            die3.isHidden = false
            die4.isHidden = false
            die5.isHidden = true
            die6.isHidden = false
            die7.isHidden = false
            die8.isHidden = true
            die9.isHidden = false
        }
    }
    
}
