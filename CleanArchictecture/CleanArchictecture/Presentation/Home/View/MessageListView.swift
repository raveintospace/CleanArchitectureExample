//
//  MessageListView.swift
//  CleanArchictecture
//
//  Created by Uri on 3/9/24.
//

import SwiftUI

struct MessageListView: View {
    
    @State private var viewModel = MessageListViewModel()
    
    var body: some View {
        VStack {
            Text("Messages: ")
            List(viewModel.messages) { message in
                Text(message.text)
            }
        }
        .task {
            viewModel.getMessages()
        }
    }
}

#Preview {
    MessageListView()
}
