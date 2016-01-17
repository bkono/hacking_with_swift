//
//  DetailViewController.swift
//  Project1
//
//  Created by Bryan Konowitz on 1/16/16.
//  Copyright © 2016 Bryan Konowitz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!


  var detailItem: String? {
    didSet {
        // Update the view.
        self.configureView()
    }
  }

  func configureView() {
    guard let detail = self.detailItem else { return }
    guard let imageView = self.detailImageView else { return }
    imageView.image = UIImage(named: detail)
    self.title = detail
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.configureView()
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewWillDisappear(animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

