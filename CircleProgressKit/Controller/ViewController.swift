//
//  ViewController.swift
//  CircleProgressKit
//
//  Created by Jaydeep Godhani on 17/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var progressView: CircleProgressView!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    
    // MARK: - Properties
    
    var total = 5
    var progress = 3
    
    // MARK: - View Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.initialConfig()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    // MARK: - Selectors
    
    // Total Minus Button Action
    @IBAction func totalMinusButtonAction(_ sender: UIButton) {
        self.view.endEditing(true)
        if self.total > 1 {
            self.total -= 1
            self.totalLabel.text = "\(self.total)"
        }
        self.progressView.total = total
        if self.total < self.progress {
            self.progress = self.total - 1
            self.progressLabel.text = "\(self.progress)"
            self.progressView.setProgress(progress: CGFloat(self.progress), animated: true)
        }
    }
    
    // Total Plus Button Action
    @IBAction func totalPlusButtonAction(_ sender: UIButton) {
        self.view.endEditing(true)
        self.total += 1
        self.totalLabel.text = "\(self.total)"
        self.progressView.total = total
    }
    
    // Progress Minus Button Action
    @IBAction func progressMinusButtonAction(_ sender: UIButton) {
        self.view.endEditing(true)
        if self.progress > 0 {
            self.progress -= 1
            self.progressLabel.text = "\(self.progress)"
        }
        self.progressView.setProgress(progress: CGFloat(self.progress), animated: true)
    }
    
    // Progress Plus Button Action
    @IBAction func progressPlusButtonAction(_ sender: UIButton) {
        self.view.endEditing(true)
        if self.progress < self.total {
            self.progress += 1
            self.progressLabel.text = "\(self.progress)"
            self.progressView.setProgress(progress: CGFloat(self.progress), animated: true)
        }
    }
    
    // MARK: - Helper Functions
    
    // Initial Config
    func initialConfig() {
        self.setupCircleProgressView()
    }
    
    // Setup Circle Progress View
    func setupCircleProgressView() {
        self.progressView.total = self.total
        self.progressView.setProgress(progress: CGFloat(self.progress), animated: true)
    }
    
}
