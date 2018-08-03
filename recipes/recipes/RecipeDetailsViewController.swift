//
//  RecipeDetailsViewController.swift
//  recipes
//
//  Created by Ben Amsallem on 02/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit


class RecipeDetailsViewController: UIViewController {
    

    @IBOutlet var details: UITextView!
    
    var searchTerm:String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.details.text = self.searchTerm;
    }
    
 
    
    
}
