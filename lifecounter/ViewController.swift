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
    
    var history = ""
    
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
            history = history + "\nPlayer 1 loses 1 health"
            if playerOneLifeCount <= 0 {
                loserDisplay.text = "Player 1 LOSES!"
                 history = history + "\nPlayer 1 LOSES!"
            }
            
            break
        case 12:
            playerOneLifeCount = playerOneLifeCount + 1
            playerOneLife.text = String(playerOneLifeCount)
            history = history + "\nPlayer 1 loses 1 health"
            break
        case 13:
            playerOneLifeCount = playerOneLifeCount - Int(textFieldPlayerOne.text!)!
            playerOneLife.text = String(playerOneLifeCount)
            history = history + "\nPlayer 1 loses " + textFieldPlayerFour.text! + " health"
            if playerOneLifeCount <= 0 {
                loserDisplay.text = "Player 1 LOSES!"
                 history = history + "\nPlayer 1 LOSES!"
            }
            
            break
        case 14:
            playerOneLifeCount = playerOneLifeCount + Int(textFieldPlayerOne.text!)!
            playerOneLife.text = String(playerOneLifeCount)
            history = history + "\nPlayer 1 gains " + textFieldPlayerFour.text! + " health"
            break
        case 21:
            playerTwoLifeCount = playerTwoLifeCount - 1
            playerTwoLife.text = String(playerTwoLifeCount)
            history = history + "\nPlayer 2 loses 1 health"
            if playerTwoLifeCount <= 0 {
                loserDisplay.text = "Player 2 LOSES!"
                 history = history + "\nPlayer 2 LOSES!"
            }
            
            break
        case 22:
            playerTwoLifeCount = playerTwoLifeCount + 1
            playerTwoLife.text = String(playerTwoLifeCount)
            history = history + "\nPlayer 2 gains 1 health"
            break
        case 23:
            playerTwoLifeCount = playerTwoLifeCount - Int(textFieldPlayerTwo.text!)!
            playerTwoLife.text = String(playerTwoLifeCount)
            history = history + "\nPlayer 2 loses " + textFieldPlayerFour.text! + " health"
            if playerTwoLifeCount <= 0 {
                loserDisplay.text = "Player 2 LOSES!"
                history = history + "\nPlayer 2 LOSES!"
            }
            
            break
        case 24:
            playerTwoLifeCount = playerTwoLifeCount + Int(textFieldPlayerTwo.text!)!
            playerTwoLife.text = String(playerTwoLifeCount)
            history = history + "\nPlayer 2 gains " + textFieldPlayerFour.text! + " health"
            break
        case 31:
            playerThreeLifeCount = playerThreeLifeCount - 1
            playerThreeLife.text = String(playerThreeLifeCount)
            history = history + "\nPlayer 3 loses 1 health"
            if playerThreeLifeCount <= 0 {
                loserDisplay.text = "Player 3 LOSES!"
                 history = history + "\nPlayer 3 LOSES!"
            }
            
            break
        case 32:
            playerThreeLifeCount = playerThreeLifeCount + 1
            playerThreeLife.text = String(playerThreeLifeCount)
            history = history + "\nPlayer 3 gains 1 health"
            break
        case 33:
            playerThreeLifeCount = playerThreeLifeCount - Int(textFieldPlayerThree.text!)!
            playerThreeLife.text = String(playerThreeLifeCount)
            history = history + "\nPlayer 3 loses " + textFieldPlayerFour.text! + " health"
            if playerThreeLifeCount <= 0 {
                loserDisplay.text = "Player 3 LOSES!"
                 history = history + "\nPlayer 3 LOSES!"
            }
                        break
        case 34:
            playerThreeLifeCount = playerThreeLifeCount + Int(textFieldPlayerThree.text!)!
            playerThreeLife.text = String(playerThreeLifeCount)
            history = history + "\nPlayer 3 gains " + textFieldPlayerFour.text! + " health"
            break
        case 41:
            playerFourLifeCount = playerFourLifeCount - 1
            playerFourLife.text = String(playerFourLifeCount)
            history = history + "\nPlayer 4 loses 1 health"
            if playerFourLifeCount <= 0 {
                loserDisplay.text = "Player 4 LOSES!"
                 history = history + "\nPlayer 4 LOSES!"
            }
            
            break
        case 42:
            playerFourLifeCount = playerFourLifeCount + 1
            playerFourLife.text = String(playerFourLifeCount)
            history = history + "\nPlayer 4 gains 1 health"
            break
        case 43:
            playerFourLifeCount = playerFourLifeCount - Int(textFieldPlayerFour.text!)!
            playerFourLife.text = String(playerFourLifeCount)
            history = history + "\nPlayer 4 loses " + textFieldPlayerFour.text! + " health"
            if playerFourLifeCount <= 0 {
                loserDisplay.text = "Player 4 LOSES!"
                 history = history + "\nPlayer 4 LOSES!"
            }
            
            break
        case 44:
            playerFourLifeCount = playerFourLifeCount + Int(textFieldPlayerFour.text!)!
            playerFourLife.text = String(playerFourLifeCount)
            history = history + "\nPlayer 4 gains " + textFieldPlayerFour.text! + " health"
            break
        case 51:
            playerFiveLifeCount = playerFiveLifeCount - 1
            playerFiveLife.text = String(playerFiveLifeCount)
            history = history + "\nPlayer 5 loses 1 health"
            if playerFiveLifeCount <= 0 {
                loserDisplay.text = "Player 5 LOSES!"
                 history = history + "\nPlayer 5 LOSES!"
            }
            
            break
        case 52:
            playerFiveLifeCount = playerFiveLifeCount + 1
            playerFiveLife.text = String(playerFiveLifeCount)
            history = history + "\nPlayer 5 gains 1 health"
            break
        case 53:
            playerFiveLifeCount = playerFiveLifeCount - Int(textFieldPlayerFive.text!)!
            playerFiveLife.text = String(playerFiveLifeCount)
             history = history + "\nPlayer 5 loses " + textFieldPlayerFour.text! + " health"
            if playerFiveLifeCount <= 0 {
                loserDisplay.text = "Player 5 LOSES!"
                 history = history + "\nPlayer 5 LOSES!"
            }
           
            break
        case 54:
            playerFiveLifeCount = playerFiveLifeCount + Int(textFieldPlayerFive.text!)!
            playerFiveLife.text = String(playerFiveLifeCount)
            history = history + "\nPlayer 5 gains " + textFieldPlayerFour.text! + " health"
            break
        case 61:
            playerSixLifeCount = playerSixLifeCount - 1
            playerSixLife.text = String(playerSixLifeCount)
            history = history + "\nPlayer 6 loses 1 health"
            if playerSixLifeCount <= 0 {
                loserDisplay.text = "Player 6 LOSES!"
                 history = history + "\nPlayer 6 LOSES!"
            }
            
            break
        case 62:
            playerSixLifeCount = playerSixLifeCount + 1
            playerSixLife.text = String(playerSixLifeCount)
            history = history + "\nPlayer 6 gains 1 health"
            break
        case 63:
            playerSixLifeCount = playerSixLifeCount - Int(textFieldPlayerSix.text!)!
            playerSixLife.text = String(playerSixLifeCount)
            history = history + "\nPlayer 6 loses " + textFieldPlayerFour.text! + " health"
            if playerSixLifeCount <= 0 {
                loserDisplay.text = "Player 6 LOSES!"
                 history = history + "\nPlayer 6 LOSES!"
            }
            
            break
        case 64:
            playerSixLifeCount = playerSixLifeCount + Int(textFieldPlayerSix.text!)!
            playerSixLife.text = String(playerSixLifeCount)
            history = history + "\nPlayer 6 gains " + textFieldPlayerFour.text! + " health"
            break
        case 71:
            playerSevenLifeCount = playerSevenLifeCount - 1
            playerSevenLife.text = String(playerSevenLifeCount)
            history = history + "\nPlayer 7 loses 1 health"
            if playerSevenLifeCount <= 0 {
                loserDisplay.text = "Player 7 LOSES!"
                 history = history + "\nPlayer 7 LOSES!"
            }
            
            break
        case 72:
            playerSevenLifeCount = playerSevenLifeCount + 1
            playerSevenLife.text = String(playerSevenLifeCount)
            history = history + "\nPlayer 7 gains 1 health"
            break
        case 73:
            playerSevenLifeCount = playerSevenLifeCount - Int(textFieldPlayerSeven.text!)!
            playerSevenLife.text = String(playerSevenLifeCount)
            history = history + "\nPlayer 7 loses " + textFieldPlayerFour.text! + " health"
            if playerSevenLifeCount <= 0 {
                loserDisplay.text = "Player 7 LOSES!"
                 history = history + "\nPlayer 7 LOSES!"
            }
            
            break
        case 74:
            playerSevenLifeCount = playerSevenLifeCount + Int(textFieldPlayerSeven.text!)!
            playerSevenLife.text = String(playerSevenLifeCount)
            history = history + "\nPlayer 7 gains " + textFieldPlayerFour.text! + " health"
            break
        case 81:
            playerEightLifeCount = playerEightLifeCount - 1
            playerEightLife.text = String(playerEightLifeCount)
            history = history + "\nPlayer 8 loses 1 health"
            if playerEightLifeCount <= 0 {
                loserDisplay.text = "Player 8 LOSES!"
                 history = history + "\nPlayer 8 LOSES!"
            }
            
            break
        case 82:
            playerEightLifeCount = playerEightLifeCount + 1
            playerEightLife.text = String(playerEightLifeCount)
            history = history + "\nPlayer 8 gains 1 health"
            break
        case 83:
            playerEightLifeCount = playerEightLifeCount - Int(textFieldPlayerEight.text!)!
            playerEightLife.text = String(playerEightLifeCount)
            history = history + "\nPlayer 8 loses " + textFieldPlayerFour.text! + " health"
            if playerEightLifeCount <= 0 {
                loserDisplay.text = "Player 8 LOSES!"
                history = history + "\nPlayer 8 LOSES!"
            }
            
            break
        case 84:
            playerEightLifeCount = playerEightLifeCount + Int(textFieldPlayerEight.text!)!
            playerEightLife.text = String(playerEightLifeCount)
            history = history + "\nPlayer 8 gains " + textFieldPlayerFour.text! + " health"
            break
        default:
            break
        }
    }
    
    @IBAction func viewHistory(_ sender: UIButton) {
        performSegue(withIdentifier: "history", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! historyPageViewController
        vc.finalHistory = self.history
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
