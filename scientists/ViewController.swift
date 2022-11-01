//
//  ViewController.swift
//  scientists
//
//  Created by Arda Erdogdu on 30.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    var scientistsname = [String]()
    var scientistsimg = [String]()
    var chooseName = ""
    var chooseImg = ""
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        
        scientistsname.append("Einstein")
        scientistsname.append("Tesla")
        scientistsname.append("Edison")
        scientistsname.append("Hawking")
        scientistsname.append("MarieCurie")
        
        scientistsimg.append("einstein")
        scientistsimg.append("tesla")
        scientistsimg.append("edison")
        scientistsimg.append("hawking")
        scientistsimg.append("marie")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scientistsname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = scientistsname[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)  {
        if editingStyle == .delete{
            scientistsname.remove(at: indexPath.row)
            scientistsimg.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chooseName = scientistsname[indexPath.row]
         chooseImg = scientistsimg[indexPath.row]
        performSegue(withIdentifier:"ToDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue .identifier == "ToDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.ChooseName = chooseName
            destinationVC.ChooseImg = chooseImg
        }
    }
    
}

