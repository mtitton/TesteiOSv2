//
//  StatementModels.swift
//  BankApp
//
//  Created by Marcus Titton on 19/09/19.
//  Copyright (c) 2019 Marcus Titton. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Statement
{
    // MARK: Use cases
    enum StatementApi
    {
        struct Request
        {
            var userId: Int
        }
        struct Response
        {
            var statement: [StatementUser]
        }
        struct ViewModel
        {
            var statement: [StatementUser]
        }
    }
}