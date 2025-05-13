//
//  main.swift
//  pokedexCodecademy
//
//  Created by Rafael Ribeiro on 5/12/25.
//

import Foundation

class Pokemon {
    var num = 0
    var name = ""
    var type = [""]
    var ability = [""]
    
    init(num: Int, name: String, type: [String], ability: [String]){
        self.num = num
        self.name = name
        self.type = type
        self.ability = ability
    }
    
    // This will be responsible for printing the info of the pokemon
    func displayInfo() {
        print("Number: \(num)")
        print("Name: \(name)")
        print("Type: \(type)")
        print("Ability: \(ability)")
        print("===================================")
    }
}
    
    // This is where we store all the pokemon info (I'm only doing these three so the code isn't lines long)
    var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass"], ability: ["Overgrow"])
    var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire"], ability: ["Blaze"])
    var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water"], ability: ["Torrent"])

    // These are the pokemons I wanna use:
    bulbasaur.displayInfo()
    charmander.displayInfo()
    squirtle.displayInfo()


class GigantamaxPokemon: Pokemon {
    var location = ""
    
    init(num: Int, name: String, type: [String], ability: [String], location: String) {
        self.location = location
        super.init(num: num, name: name, type: type, ability: ability)
    }
    // Had to copy the same func and override it to add the location
    override func displayInfo() {
        print("Number: \(num)")
        print("Name: \(name)")
        print("Type: \(type)")
        print("Ability: \(ability)")
        print("Location : \(location)")
        print("===================================")
    }
}

var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire"], ability: ["blaze"], location: "Lake of Outrage")

    // These are the GigantamaxPokemon I wanna use:
    charizard.displayInfo()
