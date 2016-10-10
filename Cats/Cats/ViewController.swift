//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var animalArray:[String] = ["Abyssinian", "American Shorthair", "Bengal", "Birman", "British Shorthair", "Burmese", "Exotic Shorthair", "Main Coon", "Norwegian Forest", "Persian", "Ragdoll", "Scottish Feld"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //creates the cell and stores it in the memory system
        let cell = tableView.dequeueReusableCell(withIdentifier: "KittyCell", for: indexPath)
        
        //gets the cat name from the animalArray (indexPath is the location of the data for cell)
        let cat = animalArray[indexPath.row]
        
        //assigns the textlabel to the cat name
        cell.textLabel?.text = cat
        return cell
    }
}

