//
//  historyPageViewController.swift
//  lifecounter
//
//  Created by Nicholas S. Hytrek on 1/30/19.
//  Copyright © 2019 Nicholas S. Hytrek. All rights reserved.
//

import UIKit

class historyPageViewController: UIViewController {

    @IBOutlet weak var historyLabel: UILabel!
    var finalHistory = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(finalHistory + " 5")
        historyLabel.text = finalHistory
        print(historyLabel.text! + " 6")
        historyLabel.text = finalHistory
        // Do any additional setup after loading the view.
    }
    

}
