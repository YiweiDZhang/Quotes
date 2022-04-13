//
//  ViewController.swift
//  Quotes
//
//  Created by Yiwei Zhang on 12/4/2022.
//

import MessageUI
import UIKit

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    private let dataService = DataService()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.loadData()
    }
    
    private func loadData() {
        self.dataService.getQuote(completion: { quote in
            guard let quote = quote else { return }
            
            DispatchQueue.main.async {
                self.sendEmail(quote: quote)
            }
        })
    }
    
    private func sendEmail(quote: Quotes) {
        let recipients = ["thegein@gmail.com", "thegein@hotmail.com"]
        
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(recipients)
            
            if let subject = quote.title {
                mail.setSubject(subject)
            }
            
            let body = [quote.quote, quote.author]
                .compactMap { $0 }
                .joined(separator: "\n\n")
            mail.setMessageBody(body, isHTML: false)
            
            present(mail, animated: true)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }

}

