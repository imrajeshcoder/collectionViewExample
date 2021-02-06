//
//  DisplayUserImageViewController.swift
//  collectionViewExample
//
//  Created by Vijay on 06/02/21.
//

import UIKit

class DisplayUserImageViewController: UIViewController {

    @IBOutlet weak var imgImage: UIImageView!
    var strImageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        imgImage.image = UIImage(named: strImageName)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
