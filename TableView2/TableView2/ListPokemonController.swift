//
//  ListPokemonController.swift
//  TableView2
//
//  Created by Johanes Vincent Fernando on 13/09/19.
//  Copyright © 2019 SpaceColony. All rights reserved.
//

import UIKit



class ListPokemonController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let pokedex = ["Bulbasaur","Ivysaur","Venusaur","Charmender","Charmeleon","Charizard","Squirtle","Wartortle","Blastoise"]
    
    @IBOutlet weak var PokemonTable: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokedex.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell")
        cell?.textLabel?.text = pokedex[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(pokedex[indexPath.row] + " choosen")
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PokemonTable.dataSource = self
        PokemonTable.delegate = self
       
    }


}
