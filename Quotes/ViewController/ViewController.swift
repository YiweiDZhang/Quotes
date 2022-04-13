//
//  ViewController.swift
//  Quotes
//
//  Created by Yiwei Zhang on 12/4/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let dataService = DataService()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.loadData()
    }
    
    func loadData() {
        self.dataService.getQuote(completion: { quote in
            guard quote != nil else { return }
            
            
        })
    }

}

