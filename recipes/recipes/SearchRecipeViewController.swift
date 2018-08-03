//
//  ViewController.swift
//  recipes
//
//  Created by Ben Amsallem on 02/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class SearchRecipeViewController: UIViewController {

    @IBOutlet weak var savedSearchTable: UITableView!
    
    let savedSearches = ["Omlet", "Egg", "Desserts", "Chicken"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        savedSearchTable.delegate = self
        savedSearchTable.dataSource = self
        //self.savedSearchTable.register(SavedSearchTableViewCell.self, forCellReuseIdentifier: "SavedSearchCell")

        // Do any additional setup after loading the view, typically from a nib.
    }

}


extension SearchRecipeViewController : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedSearches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SavedSearchCell")  as! SavedSearchTableViewCell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "SavedSearchCell", for: indexPath)
        cell.termText?.text = savedSearches[indexPath.row]
//        cell.myText.text = savedSearches[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let recipeDetailsViewController = storyboard?.instantiateViewController(withIdentifier: "RecipeDetails") as! RecipeDetailsViewController
        recipeDetailsViewController.searchTerm = savedSearches[indexPath.row];
        recipeDetailsViewController.modalPresentationStyle = .overCurrentContext
        self.navigationController?.pushViewController(recipeDetailsViewController, animated: true)
    }
    
   
}
