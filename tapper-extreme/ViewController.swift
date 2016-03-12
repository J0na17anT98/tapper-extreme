//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Jonathan Tsistinas on 3/11/16.
//  Copyright © 2016 Techinator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    var maxTaps = 0
    var currentTaps = 0
    
    //outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playbutton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapslabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {

        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImage.hidden = true
            playbutton.hidden = true
            howManyTapsTxt.hidden = true
            
            tapButton.hidden = false
            tapslabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImage.hidden = false
        playbutton.hidden = false
        howManyTapsTxt.hidden = false
        
        tapButton.hidden = true
        tapslabel.hidden = true
    }

    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }else {
            return false
        }
    }
    
    func updateTapsLabel(){
        tapslabel.text = "\(currentTaps) Taps"
    }
    
    
    
    
}

