//
//  ViewController.swift
//  Camera
//
//  Created by Not Tanu on 7/30/20.
//  Copyright © 2020 Ipsita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var newImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }


    @IBAction func takeSelfieTapped(_ sender: Any) {
        
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func chooseLibraryTapped(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //update photo w selected photo
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            newImage.image = selectedImage
        }
        
        
        //go back to view controller
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    
}

