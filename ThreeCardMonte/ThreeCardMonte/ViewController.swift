//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var correct = 0
var incorrect = 0
class ViewController: UIViewController {
    
    
    
    
///////Label output
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    //////Buttons
    
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var replayGame: UIButton!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        
        
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
  }
    
    
    

/////Code
    
    @IBAction func flippingCards(_ sender: UIButton) {
      
        let cardArray: [Int] = [0,1,2]
        let randomCard =  cardArray.randomElement()
        //messageLabel.text = "Choose your Card"
        switch sender.tag {
        case 0:
            if randomCard == sender.tag {
            card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "You got me"
                correct += 1
            } else if randomCard == 2  {
                
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "Give me my money please"
                incorrect += 1
            } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "Give me my money please"
                incorrect += 1
            }
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
        case 1:
            if randomCard == sender.tag {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "You got me"
                correct += 1
            } else if randomCard == 2  {
                
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "Give me my money please"
                incorrect += 1
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "Give me my money please"
                incorrect += 1
            }
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
        case 2:
            if randomCard == sender.tag {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "You got me"
                correct += 1
            } else if randomCard == 2  {
                
                card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "Give me my money please"
                incorrect += 1
            } else {
                card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                messageLabel.text = "Give me my money please"
                incorrect += 1
            }
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
        default:
            print("invalid tag")
        }
    }
        @IBAction func resetCards(sender: UIButton){
        card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            card1.isEnabled = true
            card2.isEnabled = true
            card3.isEnabled = true
    }
}


