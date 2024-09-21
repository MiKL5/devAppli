//
//  ViewController.swift
//  howToInteract
//
//  Created by MiKL on 21/09/2024.
//


// Les id en-ête en haut et les id action en bas


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dareBtn: UIButton!
    @IBOutlet weak var viewMiddle: UIView!
    @IBOutlet var colorsBtn: [UIButton]!
    
    var backgroundColor: UIColor = .systemBackground
    var centerView: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        centerView = viewMiddle.center
        updateBg()
        viewMiddle.isUserInteractionEnabled = true // Le carré est défini
        let gesture: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(roundView))  // Définition d'une gesture
        viewMiddle.addGestureRecognizer(gesture)
        
    }
    
    func isView(_ touches: Set<UITouch>) -> Bool {
        guard let touch = touches.first else { return false}
        guard let view = touch.view else { return false}
        guard view == viewMiddle else { return false}
        return true
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else { return }
        print("It's done")
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else { return }
        let newCenter = touches.first!.location(in: self.view) // Centrer au doigt
        viewMiddle.center = newCenter // Revenir au centre
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else { return }
        viewMiddle.center = centerView
        
    }
    
    func updateBg() {
        //view.backgroundColor = backgroundColor
        UIView.animate(withDuration: 0.5) {
            self.view.backgroundColor = self.backgroundColor
        }

    }
    
    @objc func roundView() { // Arrondir le carré
        print("Tapped")
        let corner = viewMiddle.layer.cornerRadius
        let newValue: CGFloat = corner == 0 ? 100 : 0 // 25
        viewMiddle.layer.cornerRadius = newValue
    }
    
    @IBAction func dareBtnPressed(_ sender: UIButton) {
        print("Bouton appuyé")
        backgroundColor = (backgroundColor == .systemBackground)
        ? .systemOrange
        : .systemBackground
        updateBg()
    }
    
    @IBAction func colorsbtnPressed(_ sender: UIButton) {
//        print(sender.titleLabel)
        switch sender.tag {
        case 0: viewMiddle.backgroundColor = .systemGreen // 0, 1 et 2 sont des tags pour identifier les boutons
        case 1: viewMiddle.backgroundColor = .systemPurple
        case 2: viewMiddle.backgroundColor = .systemIndigo
        default: break
        }
    }
    
    
    
}

