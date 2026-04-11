//
//  DescriptionViewController.swift
//  CompanionAnimals
//
//  Created by Seojihyeon on 4/11/26.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    // MARK: - Properties
    var animalInfo: AnimalInfo!
    
    // MARK: IBOutlets
    @IBOutlet var animalImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = self.animalInfo.name
        self.animalImageView.image = UIImage(named: self.animalInfo.imageName)
        self.nameLabel.text = self.animalInfo.name
        self.descriptionTextView.text = self.animalInfo.animalDescription
    }
}
