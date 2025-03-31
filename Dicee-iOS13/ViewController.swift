//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var leftDicenumber = Int.random(in: 0...5)
    var rightDicenumber = Int.random(in: 0...5)
    
    let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageViewOne.image = diceArray[leftDicenumber]
        diceImageViewTwo.image = diceArray[rightDicenumber]

    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        
        diceImageViewOne.image = diceArray[leftDicenumber]
        diceImageViewTwo.image = diceArray.randomElement()
        
        leftDicenumber = Int.random(in: 0...5)

        
        
        
    }
    
}

