//
//  ViewController.swift
//  Concentration
//
//  Created by welai on 2019-12-05.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    //stopped at 55 mins
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🤬", "😤", "🤔", "🥱"]

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            print("\(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }else{
            print("not set")
        }
    }
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    
    
    func flipCard(withEmoji emoji:String, on button:UIButton){
        if(button.currentTitle == emoji){
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8057073951, blue: 0, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

