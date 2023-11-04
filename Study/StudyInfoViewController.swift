//
//  StudyInfoViewController.swift
//  Study
//
//  Created by Mac mini on 22.10.2023.
//

import UIKit

class StudyInfoViewController: UIViewController {
    
    
    @IBOutlet weak var myPhotoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .cyan
    }
    
    func setImage(image: UIImage?) {
        myPhotoImage.image = image
    }
}

