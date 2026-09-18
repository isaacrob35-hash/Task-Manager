//
//  ContentView.swift
//  Task Manager
//
//  Created by Isaac Luke on 9/18/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            background
            VStack {
                Text("Task Manager")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.bottom, 100)
            }
        }
        
        private var background: some View {
            LinearGradient(colors: [.blue, .white],
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
        }
        
        #Preview {
            ContentView()
        }
    }
