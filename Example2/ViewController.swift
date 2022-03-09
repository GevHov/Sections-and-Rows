//
//  ViewController.swift
//  Example2
//
//  Created by Gevorg Hovhannisyan on 30.10.21.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: - @IBOutlet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK: - LifeCycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: - MyTableViewCell Register
        
        tableView.register(UINib(nibName: MyTableViewCell.id, bundle: nil), forCellReuseIdentifier: MyTableViewCell.id)
        
    }
    
}

//MARK: - Extensions

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.id, for: indexPath) as! MyTableViewCell

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
    }
    
}

