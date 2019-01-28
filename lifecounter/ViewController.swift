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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerOneLife.text = String(playerOneLifeCount)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playerOnePlusOne(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount + 1
        playerOneLife.text = String(playerOneLifeCount)
    }
    
    @IBAction func playerOnePlusfive(_ sender: UIButton) {
        playerOneLifeCount = playerOneLifeCount + 5
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
}

