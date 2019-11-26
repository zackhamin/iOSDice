//
//  ViewControllerTwo.swift
//  DiceGameApp
//
//  Created by Ishaq on 25/11/2019.
//  Copyright © 2019 Ishaq. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
//    MARK:Variables
    var playerOneRoll = false
    var playerOneScore = 0
    var playerTwoScore = 0
    var randomRollIndex = 0
    var dice = [#imageLiteral(resourceName: "Kismet-Ace"),#imageLiteral(resourceName: "Kismet-Deuce"),#imageLiteral(resourceName: "Kismet-Trey"),#imageLiteral(resourceName: "Kismet-Four"),#imageLiteral(resourceName: "Kismet-Five"),#imageLiteral(resourceName: "Kismet-Six")]
//            0   1   2   3   4   5
    
    
    
//    MARK:Outlets
    @IBOutlet weak var scoreLabel1: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    
    
//    MARK:Functions
    @IBAction func buttonFunction(_ sender: Any) {
//        print("I am working!")
        rollLogic()
    }
    
    func rollLogic() {
        if (playerOneRoll) {
//        playerOneScore = 0
//        playerTwoScore = 0
        randomRollIndex = Int.random(in: 0 ... 5)
        diceImage.image = dice[randomRollIndex]
        playerOneScore += randomRollIndex + 1
        scoreLabel1.text = "Player One Score:\(playerOneScore)"
        playerOneRoll = false
        diceLogicOne()
    }
        else {
            randomRollIndex = Int.random(in: 0 ... 5)
            diceImage.image = dice[randomRollIndex]
            playerTwoScore += randomRollIndex + 1
            scoreLabel2.text = "Player Two Score:\(playerTwoScore)"
            playerOneRoll = true
            diceLogicOne()
            
        }
    }
    
    
    func diceLogicOne() {
        if (randomRollIndex == 0) {
            scoreLabel1.text = ("Your rolled 1, you lose!")
            playerOneScore = 0
            playerTwoScore = 0
            rollLogic()
        }
        else if (randomRollIndex == 0) {
            scoreLabel2.text = ("Your rolled 1, you lose!")
            playerOneScore = 0
            playerTwoScore = 0
            rollLogic()
        }
        else if (playerOneScore >= 21){
            print("You won!")
            scoreLabel1.text = ("21 you win!")
            playerOneScore = 0
            playerTwoScore = 0
            rollLogic()
        }
        else if (playerTwoScore >= 21){
            print("You won!")
            scoreLabel2.text = ("21 you win!")
            playerOneScore = 0
            playerTwoScore = 0
            rollLogic()
        }
        else {return
            
        }
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
