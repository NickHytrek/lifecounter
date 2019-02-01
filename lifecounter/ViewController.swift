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
    @IBOutlet weak var textFieldPlayerOne: UITextField!
    var playerOneLifeCount = 20
    
    @IBOutlet weak var playerTwoLife: UILabel!
    @IBOutlet weak var textFieldPlayerTwo: UITextField!
    var playerTwoLifeCount = 20
    
    @IBOutlet weak var playerThreeLife: UILabel!
    @IBOutlet weak var textFieldPlayerThree: UITextField!
    var playerThreeLifeCount = 20
    
    @IBOutlet weak var playerFourLife: UILabel!
    @IBOutlet weak var textFieldPlayerFour: UITextField!
    var playerFourLifeCount = 20
    
    @IBOutlet weak var playerFiveLife: UILabel!
    @IBOutlet weak var textFieldPlayerFive: UITextField!
    var playerFiveLifeCount = 20
    
    @IBOutlet weak var playerSixLife: UILabel!
    @IBOutlet weak var textFieldPlayerSix: UITextField!
    var playerSixLifeCount = 20
    
    @IBOutlet weak var playerSevenLife: UILabel!
    @IBOutlet weak var textFieldPlayerSeven: UITextField!
    var playerSevenLifeCount = 20
    
    @IBOutlet weak var playerEightLife: UILabel!
    @IBOutlet weak var textFieldPlayerEight: UITextField!
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
        playerFiveLife.text = String(playerFiveLifeCount)
        playerSixLife.text = String(playerSixLifeCount)
        playerSevenLife.text = String(playerSevenLifeCount)
        playerEightLife.text = String(playerEightLifeCount)
        
        configureTextFields()
        configureTapGesture()
    }

    
    @IBAction func addPlayerPressed(_ sender: UIButton) {
        if playerOneLifeCount != 20 || playerTwoLifeCount != 20 || playerThreeLifeCount != 20 || playerFourLifeCount != 20 || playerFiveLifeCount != 20 || playerSixLifeCount != 20 || playerSevenLifeCount != 20 || playerEightLifeCount != 20 {
            sender.isEnabled = false
        }
        else {
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
        case 13:
            playerOneLifeCount = playerOneLifeCount - Int(textFieldPlayerOne.text!)!
            playerOneLife.text = String(playerOneLifeCount)
            break
        case 14:
            playerOneLifeCount = playerOneLifeCount + Int(textFieldPlayerOne.text!)!
            playerOneLife.text = String(playerOneLifeCount)
            break
        case 21:
            playerTwoLifeCount = playerTwoLifeCount - 1
            playerTwoLife.text = String(playerTwoLifeCount)
            break
        case 22:
            playerTwoLifeCount = playerTwoLifeCount + 1
            playerTwoLife.text = String(playerTwoLifeCount)
            break
        case 23:
            playerTwoLifeCount = playerTwoLifeCount - Int(textFieldPlayerTwo.text!)!
            playerTwoLife.text = String(playerTwoLifeCount)
            break
        case 24:
            playerTwoLifeCount = playerTwoLifeCount + Int(textFieldPlayerTwo.text!)!
            playerTwoLife.text = String(playerTwoLifeCount)
            break
        default:
            break
        }
    }
    
    private func configureTextFields() {
        textFieldPlayerOne.delegate = self
        textFieldPlayerTwo.delegate = self
        textFieldPlayerThree.delegate = self
        textFieldPlayerFour.delegate = self
        textFieldPlayerFive.delegate = self
        textFieldPlayerSix.delegate = self
        textFieldPlayerSeven.delegate = self
        textFieldPlayerEight.delegate = self
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func handleTap() {
        view.endEditing(true)
        
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
