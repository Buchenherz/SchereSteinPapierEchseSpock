//
//  ComputerPlayerModel.swift
//  SchereSteinPapierEchseSpock
//
//  Created by Clemens Pfister on 04/08/2016.
//  Copyright © 2016 Clemens Pfister. All rights reserved.
//

import Foundation
import GameKit

struct Computer {
    let options = ["Schere", "Stein", "Papier", "Echse", "Spock"]
    func getComputerOption() -> String{
        var randomNumber = 0
        randomNumber = GKRandomSource.sharedRandom().nextInt(withUpperBound: 5)
        return options[randomNumber]
    }
    /*
     Schere schneidet Papier
     Papier bedeckt Stein
     Stein zerquetscht Echse
     Echse vergiftet Spock
     Spock zertrümmert Schere
     Schere köpft Echse
     Echse frisst Papier
     Papier widerlegt Spock
     Spock verdampft Stein
     Stein zertrümmert Schere
     */
    
}
