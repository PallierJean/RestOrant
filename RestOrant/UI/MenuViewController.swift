//
//  MenuViewController.swift
//  RestOrant
//
//  Created by Developer on 13/04/2018.
//  Copyright © 2018 Developer. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var articles = [MenuItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        articles.append(MenuItem(name: "Milkshake", description: "Boule de glace avec du bourbon à 3$, c'est du vol !", price: 3.99, category: .boisson, imageURL: #imageLiteral(resourceName: "milkshake")))
        articles.append(MenuItem(name: "Raclette", description: "La bonne raclette de chez marcel, fromage frotté sous l'aiselle, charcuterie, c'est le cochon de ferme qui est roti à la broche...", price: 24.99, category: .plat, imageURL: #imageLiteral(resourceName: "raclette")))
    }
}

// MARK: UITableViewDataSource
extension MenuViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! MenuTableViewCell
        
        
        let article = articles[indexPath.row]
        
        cell.itemName.text = article.name
        cell.itemDescription.text = article.description
        cell.itemPrice.text = String(article.price)+"€"
        cell.itemImagePlat.image = article.imageURL
        
        return cell
    }
}

// MARK: UITableViewDelegate
extension MenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let article = articles[indexPath.row]
        
        self.performSegue(withIdentifier: "showPlatInfo", sender: nil)
    }
}

