//
//  JokeTableViewController.swift
//  JokeBank
//
//  Created by user154135 on 5/26/20.
//  Copyright © 2020 bawantha. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    
    
    var jokes=["Chicken","Walk in to bar","Razer"];

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  jokes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        // Configure the cell...
        cell.textLabel?.text = jokes[indexPath.row]
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedJoke=indexPath.row;
        performSegue(withIdentifier: "moveToJokeDef", sender: jokes[selectedJoke]);
    
            }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC=segue.destination as? JokeDefViewController{
            
            if let selectedJoke = sender as? String{
                jokeVC.joke=selectedJoke;
            }
        }
    }
}
