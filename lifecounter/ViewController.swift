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
    }
    
    @IBAction func playerOneAddOne(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount + 1
        playerOneLife.text = String(playerOneLifeCount)
    }
    
    @IBAction func playerOneSubtractOne(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount - 1
        playerOneLife.text = String(playerOneLifeCount)
    }
    
    @IBAction func playerOneSubtractFive(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount - 5
        playerOneLife.text = String(playerOneLifeCount)
    }
    /************************************************************/
    
    /*Player Two Buttons */
    @IBAction func playerTwoAddFive(_ sender: UIButton) {
        playerTwoLifeCount = playerTwoLifeCount + 5
        playerTwoLife.text = String(playerTwoLifeCount)
    }
    
    @IBAction func playerTwoAddOne(_ sender: UIButton) {
        playerTwoLifeCount = playerTwoLifeCount + 1
        playerTwoLife.text = String(playerTwoLifeCount)
    }

    @IBAction func playerTwoSubtractOne(_ sender: UIButton) {
        playerTwoLifeCount = playerTwoLifeCount - 1
        playerTwoLife.text = String(playerTwoLifeCount)
    }
    
    @IBAction func playerTwoSubtractFive(_ sender: UIButton) {
        playerTwoLifeCount = playerTwoLifeCount - 5
        playerTwoLife.text = String(playerTwoLifeCount)
    }
    /************************************************************/
    
}


