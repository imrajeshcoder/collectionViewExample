//
//  ViewController.swift
//  collectionViewExample
//
//  Created by Vijay on 05/02/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout  {
   
    @IBOutlet weak var clctViewUserPhoto: UICollectionView!
    var numberOfSectionInColection = 0
    var cellIdentifierForCollection = "imgImageDisplayCollectionViewCell"
    var arrayImages = ["img01","img02","img03","img04","img05","img06","img07","img08","song01","song01","song02","song03","song04","song05",]
    override func viewDidLoad() {
        super.viewDidLoad()
        clctViewUserPhoto.dataSource = self
        clctViewUserPhoto.delegate = self
        // Do any additional setup after loading the view.
        
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if numberOfSectionInColection == 0
        {
            return 1
        }
        else
        {
            return numberOfSectionInColection
        }
    }
    

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print("\(clctViewUserPhoto.frame.width)")
        var width = (((clctViewUserPhoto.frame.width)) / 3 )
        return CGSize(width: width , height: width)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imgImageDisplayCollectionViewCell", for: indexPath) as! imgImageDisplayCollectionViewCell
        cell.imgUserImage.image = UIImage(named: arrayImages[indexPath.row])
        return cell
        
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("SELECT\(arrayImages[indexPath.row])")
        
        var vc = storyboard?.instantiateViewController(withIdentifier: "DisplayUserImageViewController") as! DisplayUserImageViewController
        vc.strImageName = arrayImages[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    


}

