//
//  ViewController.swift
//  I am Poor
//
//  Created by 오현호 on 2021/06/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var changeButton: UIButton!
    
    var isPoor = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeButton.layer.cornerRadius = changeButton.frame.height / 2
    }

    @IBAction func changeButtonPressed(_ sender: Any) {
        if isPoor == true {
            self.view.backgroundColor = UIColor(named: K.Color.richColor)
            imageView.image = UIImage(named: K.Image.richImage)
            changeButton.backgroundColor = UIColor(named: K.Color.richLightColor)
            changeButton.tintColor = UIColor(named: K.Color.richColor)
            textLabel.text = K.richString
            changeButton.setTitle(K.richButton, for: .normal)
            isPoor = false
        } else {
            self.view.backgroundColor = UIColor(named: K.Color.poorColor)
            imageView.image = UIImage(named: K.Image.poorImage)
            changeButton.backgroundColor = UIColor(named: K.Color.poorLightColor)
            changeButton.tintColor = UIColor(named: K.Color.poorColor)
            textLabel.text = K.poorString
            changeButton.setTitle(K.poorButton, for: .normal)
            isPoor = true
        }
    }
    
}

