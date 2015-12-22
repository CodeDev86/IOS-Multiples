//
//  ViewController.swift
//  Multiples
//
//  Created by David McCaslin on 12/20/15.
//  Copyright © 2015 David McCaslin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bannerImg: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var deskImg: UIImageView!
    @IBOutlet weak var multipleTxt: UITextField!
    
    @IBOutlet weak var chalkBoardImg: UIImageView!
    @IBOutlet weak var currentMultiple: UILabel!
    @IBOutlet weak var mutipleBtn: UIButton!
    
    var multiple:Int? = nil
    var nextMultiple:Int = 0
    let maxMultiple:Int = 10

    @IBAction func PlayBtnPressed(sender: UIButton) {
        
        multiple = Int(multipleTxt.text!)
        
        if(multiple != nil) {
            multiple = Int(multipleTxt.text!)!
            NextMultiple()
        
            HideHomeScreen(true)
            HideGameScreen(false)
        }
    }
    
    @IBAction func MultipleBtnPressed(sender: UIButton) {
        if(nextMultiple <= 10) {
            NextMultiple()
        } else {
            ResetGame()
        }
    }
    
    func NextMultiple(){
        currentMultiple.text = "\(multiple!) X \(nextMultiple) = " + "\(multiple! * nextMultiple)"
        nextMultiple++
    }
    
    func ResetGame() {
        HideGameScreen(true)
        HideHomeScreen(false)
        
        multipleTxt.text = ""
        currentMultiple.text = ""
        multiple = nil
        nextMultiple = 0
    }
    
    func HideHomeScreen(isHidden:Bool) {
        bannerImg.hidden = isHidden
        playBtn.hidden = isHidden
        deskImg.hidden = isHidden
        multipleTxt.hidden = isHidden
    }
    
    func HideGameScreen(isHidden:Bool) {
        chalkBoardImg.hidden = isHidden
        currentMultiple.hidden = isHidden
        mutipleBtn.hidden = isHidden
    }

}

