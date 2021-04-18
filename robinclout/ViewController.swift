//
//  ViewController.swift
//  robinclout
//
//  Created by hellyeah on 4/9/21.
//

import UIKit
import LudoClout

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    let data = ["Creator, Price, Gain", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
        "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
        "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
        "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
        "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 100
        
        print("about to instantiate state manager")
        let stateManager = StateManager()
        stateManager.refresh() { error in
            guard error == nil else { print("uh oh"); return }
            print("about to find ludo creator key")
            let creatorKeyToFind = "BC1YLiWgKXYrpTkUZHyCbhfxU1bgJCQGcBvsQvPWuAwiVWnDFsvxudi" // @ludo
            stateManager.printAllTransactionForCreatorCoins(privateKey: creatorKeyToFind)
        }
        
//        let stateManager = StateManager()
//        stateManager.refresh() { error in
//            guard error == nil else { return }
//            
//            let creatorKeyToFind = "BC1YLiWgKXYrpTkUZHyCbhfxU1bgJCQGcBvsQvPWuAwiVWnDFsvxudi" // @ludo
//            stateManager.printAllTransactionForCreatorCoins(privateKey: creatorKeyToFind)
//        }
        
//        let session = URLSession.shared
//        let url = URL(string: "https://gist.githubusercontent.com/reinder42/932d7671859959f6363b4d9b4e18bb91/raw/306631d79a5166bb0d86b12ac7d8cc42fecb996e/users.json")!
//        
//        let task = session.dataTask(with: url, completionHandler: { data, response, error in
//
//            // Do something...
//        })
//        task.resume()
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "com.robinclout.DemoPrototypeCell", for: indexPath) as! DemoPrototypeCell
        let cityState = data[indexPath.row].components(separatedBy: ", ")
        //print(cityState.first)
        cell.cityLabel.text = cityState.first
        //print(cityState[1])
        cell.stateLabel.text = cityState[1]
        cell.gainLabel.text = cityState.last
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

}

