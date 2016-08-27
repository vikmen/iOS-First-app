//
//  ViewController.swift
//  Multiples-app
//
//  Created by Vikrant on 25/07/16.
//  Copyright © 2016 Vikrant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLogo: UIImageView!
  
    @IBOutlet weak var enterNumTxt: UITextField!
    
    @IBOutlet weak var playButton: UIButton!
    
    
    
    @IBOutlet weak var finalLabel: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    
    
    var numEntered = 0
    var leftCounter = 0
    var rightCounter = 0
    
    

    @IBAction func onPlayButtonPressed(sender: AnyObject){
        
        if enterNumTxt.text != nil && enterNumTxt.text != "" {
            mainLogo.hidden = true
            enterNumTxt.hidden = true
            playButton.hidden = true
            
            finalLabel.hidden = false
            addButton.hidden = false
            
            numEntered = Int(enterNumTxt.text!)!
            
        }
        
    }
    
    
    @IBAction func onAddButtonPressed(sender: UIButton){
        //updteLabel()
        
        maths()
      
        
        updteLabel()
            
        if isGameOver(){
            
        restartGame()
        }
        
    }
    
    func updteLabel(){
        
        finalLabel.text = "\(leftCounter) + \(numEntered) = \(rightCounter)"
        
    }
    
    func restartGame(){
        mainLogo.hidden = false
        enterNumTxt.hidden = false
        playButton.hidden = false
        
        finalLabel.hidden = true
        addButton.hidden = true
        
        enterNumTxt.text = ""
    }
    
    func maths(){
        leftCounter = rightCounter
        rightCounter = leftCounter + numEntered
    //  leftCounter = 0
        
    }
    
    
    
    func isGameOver () -> Bool{
        if rightCounter == 11 * numEntered{
            return true
        }else{
            return false
        }
    }


}

