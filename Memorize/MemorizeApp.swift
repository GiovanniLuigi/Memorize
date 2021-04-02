//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Giovanni Luidi Bruno on 02/04/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
