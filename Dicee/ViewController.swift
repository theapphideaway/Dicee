//
//  ViewController.swift
//  Dicee
//
//  Created by ian schoenrock on 11/6/18.
//  Copyright © 2018 ian schoenrock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5",
                     "dice6"]
    
    var randomDiceIndexLeft: Int = 0
    var randomDiceIndexRight: Int = 0
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateDice()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        generateDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateDice()
    }
    
    func generateDice()
    {
        randomDiceIndexLeft = Int.random(in: 0 ... 5)
        randomDiceIndexRight = Int.random(in: 0 ... 5)
        
        diceImageViewLeft.image = UIImage(named: diceArray[randomDiceIndexLeft])
        diceImageViewRight.image = UIImage(named: diceArray[randomDiceIndexRight])
    }
}
