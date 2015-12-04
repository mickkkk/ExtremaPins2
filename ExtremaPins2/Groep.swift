//
//  Groep.swift
//  ExtremaPins
//
//  Created by Fhict on 27/11/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import Foundation
import Parse


class Groep
{
    var groepsNr:Int32
    var aantal: Int32
    var naam: String
    
    init(groepsNr:Int32, aantal:Int32, naam:String)
    {
        //self.naam = naam!
        self.groepsNr = groepsNr
        self.aantal = aantal
        self.naam = naam
    }
}