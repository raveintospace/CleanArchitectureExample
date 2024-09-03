//
//  MessageRepository.swift
//  CleanArchictecture
//
//  Created by Uri on 3/9/24.
//

import Foundation

// Interface between the domain and the data layer
protocol MessageRepository {
    func getMessages() -> [Message]
}
