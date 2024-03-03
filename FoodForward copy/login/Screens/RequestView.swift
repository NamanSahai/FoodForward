//
//  FoodCategoryView.swift
//  login
//
//  Created by Meghna Vyas on 17/02/24.
//

import SwiftUI

struct RequestView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var agreedToTerms: Bool = false 
    // New state for checkbox

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("")) {
                    TextField("Name", text: $username)
                    TextField("Contact no: ", text: $email)
                }
                Section(header: Text("Food category")) {
                    Toggle("Jain Food", isOn: $agreedToTerms)
                }
                
                Section {
                    Button(action: {
                        // Perform action when button is tapped
                    }) {
                        Text("Submit")
                    }
                }
            }
            .navigationTitle("Food Description")
        }
    }
}

struct RequestView_preview: PreviewProvider {
    static var previews: some View {
        RequestView()
    }
}
