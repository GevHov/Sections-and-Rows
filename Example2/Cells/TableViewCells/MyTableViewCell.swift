//
//  MyTableViewCell.swift
//  Example2
//
//  Created by Gevorg Hovhannisyan on 30.10.21.
//
import UIKit

class MyTableViewCell: UITableViewCell {

    
    //MARK: - ID
    static let id = "MyTableViewCell"
    
    //MARK: - @IBOutlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    //MARK: - LifeCycle Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        //MARK: - MyCollectionViewCell Register
        
        collectionView.register(UINib(nibName: MyCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: MyCollectionViewCell.id)
        
    }
    
}

//MARK: - Extensions

extension MyTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width / 2, height: self.collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 8
        
    }
    
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.id, for: indexPath) as! MyCollectionViewCell
            
            return cell
    }

}
