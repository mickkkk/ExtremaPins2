//
//  Gebruiker.swift
//  ExtremaPins
//
//  Created by Fhict on 27/11/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import Foundation
import Parse

class Gebruiker
{
    var gebruikersnaam: String
    var woonplaats: String
    var leeftijd: Int32
    var geslacht: String
    var isBeheerder: Bool


    init(gebruikersnaam:String, woonplaats:String, leeftijd:Int32, geslacht:String, isBeheerder:Bool)
    {
        //self.naam = naam!
        self.gebruikersnaam = gebruikersnaam
        self.woonplaats = woonplaats
        self.leeftijd = leeftijd
        self.geslacht = geslacht
        self.isBeheerder = isBeheerder
    }
}
