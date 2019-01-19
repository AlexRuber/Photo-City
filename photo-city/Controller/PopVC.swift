//
//  PopVC.swift
//  photo-city
//
//  Created by Mihai Ruber on 1/18/19.
//  Copyright © 2019 Mihai Ruber. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    // Outlets
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage ) {
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the default view
        popImageView.image = passedImage
        addDoubleTap()

    }
    
    // Functions
    private func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(dismissVC))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc private func dismissVC() {
        dismiss(animated: true, completion: nil)
    }


}
