//
//  ViewController.swift
//  SchereSteinPapierEchseSpock
//
//  Created by Clemens Pfister on 04/08/2016.
//  Copyright © 2016 Clemens Pfister. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var computerResultLabel: UILabel!
    @IBOutlet weak var winLoseLabel: UILabel!
    
    var computer = Computer()
    let winColor = UIColor(red: 39.0/255, green: 174.0/255, blue: 96.0/255, alpha: 1.0)
    let loseColor = UIColor(red: 231.0/255, green: 76.0/255, blue: 60.0/255, alpha: 1.0)
    let drawColor = UIColor(red: 1.0/255, green: 2.0/255, blue: 1.0/255, alpha: 1.0)
    func changeComputerResultLabel(){
        let computerOption = computer.getComputerOption()
        computerResultLabel.text = computerOption
        
    }
    
    func didWin(){
        winLoseLabel.text = "You Won!"
        winLoseLabel.textColor = winColor
        winLoseLabel.shadowColor = winColor.withAlphaComponent(0.5)
    }
    
    func didLose(){
        winLoseLabel.text = "You Lost!"
        winLoseLabel.textColor = loseColor
        winLoseLabel.shadowColor = loseColor.withAlphaComponent(0.5)
    }
    
    func didDraw(){
        winLoseLabel.text = "Draw!"
        winLoseLabel.textColor = drawColor
        winLoseLabel.shadowColor = drawColor.withAlphaComponent(0.5)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseSchere() {
        changeComputerResultLabel()
        if computerResultLabel.text == "Papier" || computerResultLabel.text == "Echse"{
            didWin()//win
        } else if computerResultLabel.text == "Spock" || computerResultLabel.text == "Stein"{
            didLose()//loose
        } else {
            didDraw()//draw
        }
    }
    
    @IBAction func chooseStein() {
        changeComputerResultLabel()
        if computerResultLabel.text == "Echse" || computerResultLabel.text == "Schere"{
           didWin()//win
        } else if computerResultLabel.text == "Papier" || computerResultLabel.text == "Spock"{
            didLose()//lose
        } else {
            didDraw()//draw
        }
    }

    @IBAction func choosePapier() {
        changeComputerResultLabel()
        if computerResultLabel.text == "Stein" || computerResultLabel.text == "Spock"{
            didWin()//win
        } else if computerResultLabel.text == "Schere" || computerResultLabel.text == "Echse"{
            didLose() //loose
        } else {
            didDraw() //draw
        }
    }

    @IBAction func chooseEchse() {
        changeComputerResultLabel()
        if computerResultLabel.text == "Spock" || computerResultLabel.text == "Papier"{
            didWin()//win
        } else if computerResultLabel.text == "Stein" || computerResultLabel.text == "Schere"{
            didLose()//loose
        } else {
            didDraw()//draw
        }
    }
    
    @IBAction func chooseSpock() {
        changeComputerResultLabel()
        if computerResultLabel.text == "Schere" || computerResultLabel.text == "Stein"{
           didWin()//win
        } else if computerResultLabel.text == "Echse" || computerResultLabel.text == "Papier"{
            didLose()//loose
        } else {
            didDraw()//draw
        }
    }
    
}

