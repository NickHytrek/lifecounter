//
//  ViewController.swift
//  lifecounter
//
//  Created by Nicholas S. Hytrek on 1/28/19.
//  Copyright © 2019 Nicholas S. Hytrek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playerOneLife: UILabel!
    var playerOneLifeCount = 20
    
    @IBOutlet weak var playerTwoLife: UILabel!
    var playerTwoLifeCount = 20
    
    @IBOutlet weak var playerThreeLife: UILabel!
    var playerThreeLifeCount = 20
    
    @IBOutlet weak var playerFourLife: UILabel!
    var playerFourLifeCount = 20
    
    @IBOutlet weak var loserDisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerOneLife.text = String(playerOneLifeCount)
        playerTwoLife.text = String(playerTwoLifeCount)
        playerThreeLife.text = String(playerTwoLifeCount)
        playerFourLife.text = String(playerFourLifeCount)

        // Do any additional setup after loading the view, typically from a nib.
    }
    /*Player One Buttons */
    @IBAction func playerOneAddFive(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount + 5
        playerOneLife.text = String(playerOneLifeCount)
        if playerOneLifeCount <= 0 {
            loserDisplay.text = "Player 1 LOSES!"
        }
    }
    
    @IBAction func playerOneAddOne(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount + 1
        playerOneLife.text = String(playerOneLifeCount)
        if playerOneLifeCount <= 0 {
            loserDisplay.text = "Player 1 LOSES!"
        }
    }
    
    @IBAction func playerOneSubtractOne(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount - 1
        playerOneLife.text = String(playerOneLifeCount)
        if playerOneLifeCount <= 0 {
            loserDisplay.text = "Player 1 LOSES!"
        }
 
    }
    
    @IBAction func playerOneSubtractFive(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount - 5
        playerOneLife.text = String(playerOneLifeCount)
        if playerOneLifeCount <= 0 {
            loserDisplay.text = "Player 1 LOSES!"
        }
 
    }
    /************************************************************/
    
    /*Player Two Buttons */
    @IBAction func playerTwoAddFive(_ sender: UIButton) {
        playerTwoLifeCount = playerTwoLifeCount + 5
        playerTwoLife.text = String(playerTwoLifeCount)
        if playerTwoLifeCount <= 0 {
            loserDisplay.text = "Player 2 LOSES!"
        }

    }
    
    @IBAction func playerTwoAddOne(_ sender: UIButton) {
        playerTwoLifeCount = playerTwoLifeCount + 1
        playerTwoLife.text = String(playerTwoLifeCount)
        if playerTwoLifeCount <= 0 {
            loserDisplay.text = "Player 2 LOSES!"
        }

    }

    @IBAction func playerTwoSubtractOne(_ sender: UIButton) {
        playerTwoLifeCount = playerTwoLifeCount - 1
        playerTwoLife.text = String(playerTwoLifeCount)
        if playerTwoLifeCount <= 0 {
            loserDisplay.text = "Player 2 LOSES!"
        }
  
    }
    
    @IBAction func playerTwoSubtractFive(_ sender: UIButton) {
        playerTwoLifeCount = playerTwoLifeCount - 5
        playerTwoLife.text = String(playerTwoLifeCount)
        if playerTwoLifeCount <= 0 {
            loserDisplay.text = "Player 2 LOSES!"
        }

    }
    /************************************************************/
    
    /*Player Three Buttons */
    @IBAction func playerThreeAddFive(_ sender: UIButton) {
        playerThreeLifeCount = playerThreeLifeCount + 5
        playerThreeLife.text = String(playerThreeLifeCount)
        if playerThreeLifeCount <= 0 {
            loserDisplay.text = "Player 3 LOSES!"
        }

    }
    
    @IBAction func playerThreeAddOne(_ sender: UIButton) {
        playerThreeLifeCount = playerThreeLifeCount + 1
        playerThreeLife.text = String(playerThreeLifeCount)
        if playerThreeLifeCount <= 0 {
            loserDisplay.text = "Player 3 LOSES!"
        }

    }
    
    @IBAction func playerThreeSubtractOne(_ sender: UIButton) {
        playerThreeLifeCount = playerThreeLifeCount - 1
        playerThreeLife.text = String(playerThreeLifeCount)
        if playerThreeLifeCount <= 0 {
            loserDisplay.text = "Player 3 LOSES!"
        }

    }
    
    @IBAction func playerThreeSubtractFive(_ sender: UIButton) {
        playerThreeLifeCount = playerThreeLifeCount - 5
        playerThreeLife.text = String(playerThreeLifeCount)
        if playerThreeLifeCount <= 0 {
            loserDisplay.text = "Player 3 LOSES!"
        }

    }
    /************************************************************/
    
    /*Player Four Buttons */
    @IBAction func playerFourAddFive(_ sender: UIButton) {
        playerFourLifeCount = playerFourLifeCount + 5
        playerFourLife.text = String(playerFourLifeCount)
        if playerFourLifeCount <= 0 {
            loserDisplay.text = "Player 4 LOSES!"
        }

    }
    
    @IBAction func playerFourAddOne(_ sender: UIButton) {
        playerFourLifeCount = playerFourLifeCount + 1
        playerFourLife.text = String(playerFourLifeCount)
        if playerFourLifeCount <= 0 {
            loserDisplay.text = "Player 4 LOSES!"
        }

    }
    
    @IBAction func playerFourSubtractOne(_ sender: UIButton) {
        playerFourLifeCount = playerFourLifeCount - 1
        playerFourLife.text = String(playerFourLifeCount)
        if playerFourLifeCount <= 0 {
            loserDisplay.text = "Player 4 LOSES!"
        }

    }
    
    @IBAction func playerFourSubtractFive(_ sender: UIButton) {
        playerFourLifeCount = playerFourLifeCount - 5
        playerFourLife.text = String(playerFourLifeCount)
        if playerFourLifeCount <= 0 {
            loserDisplay.text = "Player 4 LOSES!"
        }

    }
    /************************************************************/
    

}


