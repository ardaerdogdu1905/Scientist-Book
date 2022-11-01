//
//  DetailsViewController.swift
//  scientists
//
//  Created by Arda Erdogdu on 30.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var ImgView: UIImageView!
    
    var ChooseName = ""
    var ChooseImg = ""
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ImgView.image = UIImage(named: ChooseImg)
        lblName.text = ChooseName
        
    }
    


}
