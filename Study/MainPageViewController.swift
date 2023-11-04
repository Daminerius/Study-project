//
//  ViewController.swift
//  Study
//
//  Created by Mac mini on 18.10.2023.
//

import UIKit

class MainPageViewController: UIViewController {
    
    @IBOutlet weak var infoButton: UIButton!
    
    let image = UIImage(named: "MyPhoto")
    
    override func viewDidLoad() {
        
        infoButton.setTitle("Info", for: .disabled)
        infoButton.setTitle("Information", for: .normal)

        
        infoButton.setImage(image, for: .normal)
        infoButton.setImage(image, for: .highlighted)
        infoButton.setImage(image, for: .selected)
//        infoButton .imageView?.layer.transform = CATransform3DMakeScale(0.1, 0.1, 0.1)
//        infoButton.contentVerticalAlignment = .fill
//        infoButton.contentHorizontalAlignment = .fill
        infoButton.imageView?.contentMode = .scaleAspectFit
//        infoButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        
        
        super.viewDidLoad()
        
    }

//    @IBAction func onInfoButtonTap(_ sender: Any) {
//        let studyInfoViewController = StudyInfoViewController()
//        self.navigationController?.pushViewController(studyInfoViewController, animated: true)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFullPhoto" {
            let dvc = segue.destination as! StudyInfoViewController
            dvc.setImage(image: image)
        }
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard segue.identifier == "showFullPhoto" else { return }
//        guard let destination = segue.destination as? StudyInfoViewController else { return }
//        destination.newImage = image
//    }
    
}

