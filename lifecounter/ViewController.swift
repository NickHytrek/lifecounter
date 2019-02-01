//
//  ViewController.swift
//  lifecounter
//
//  Created by Nicholas S. Hytrek on 1/28/19.
//  Copyright © 2019 Nicholas S. Hytrek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameStarted = false
    @IBOutlet weak var playerOneLife: UILabel!
    var playerOneLifeCount = 20
    var playerOneXButton = 5
    
    @IBOutlet weak var playerTwoLife: UILabel!
    var playerTwoLifeCount = 20
    
    @IBOutlet weak var playerThreeLife: UILabel!
    var playerThreeLifeCount = 20
    
    @IBOutlet weak var playerFourLife: UILabel!
    var playerFourLifeCount = 20
    
    @IBOutlet weak var playerFiveLife: UILabel!
    var playerFiveLifeCount = 20
    
    @IBOutlet weak var playerSixLife: UILabel!
    var playerSixLifeCount = 20
    
    @IBOutlet weak var playerSevenLife: UILabel!
    var playerSevenLifeCount = 20
    
    @IBOutlet weak var playerEightLife: UILabel!
    var playerEightLifeCount = 20
    
    @IBOutlet weak var loserDisplay: UILabel!
    
    @IBOutlet weak var player5View: UIStackView!
    @IBOutlet weak var player6View: UIStackView!
    @IBOutlet weak var player7View: UIStackView!
    @IBOutlet weak var player8View: UIStackView!
    var addedPlayer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerOneLife.text = String(playerOneLifeCount)
        playerTwoLife.text = String(playerTwoLifeCount)
        playerThreeLife.text = String(playerTwoLifeCount)
        playerFourLife.text = String(playerFourLifeCount)
    }
    
    @IBAction func addPlayerPressed(_ sender: UIButton) {
        if addedPlayer == 0 {
            player5View.isHidden = false
            addedPlayer = addedPlayer + 1
        }
        else if addedPlayer == 1 {
            player6View.isHidden = false
            addedPlayer = addedPlayer + 1
        }
        else if addedPlayer == 2 {
            player7View.isHidden = false
            addedPlayer = addedPlayer + 1
        }
        else if addedPlayer == 3 {
            player8View.isHidden = false
            addedPlayer = addedPlayer + 1
        }
        else {
            addedPlayer = -1
        }
    }
    
    @IBAction func changeXLife(_ sender: UITextField) {
        /*switch sender.tag {
        case 1:
           playerOneXButton
        default:
            <#code#>
        }*/
    }
    
    @IBAction func lifeModifiedPressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 11:
            playerOneLifeCount = playerOneLifeCount - 1
            playerOneLife.text = String(playerOneLifeCount)
            break
        case 12:
            playerOneLifeCount = playerOneLifeCount + 1
            playerOneLife.text = String(playerOneLifeCount)
            break
        default:
            print("default")
        }
    }
}


