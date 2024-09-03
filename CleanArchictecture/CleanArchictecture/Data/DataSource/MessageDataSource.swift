//
//  MessageDataSource.swift
//  CleanArchictecture
//
//  Created by Uri on 3/9/24.
//

import Foundation

// Contract that defines how we want to get the message from a source (local, network...)
protocol MessageDataSource {
    func getMessages() -> [Message]
}
