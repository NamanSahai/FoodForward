//
//  FoodCategoryView.swift
//  login
//
//  Created by Meghna Vyas on 17/02/24.
//

import SwiftUI

struct FoodCategoryView: View {
    @State private var Name: String = ""
    @State private var ContactNumber: String = ""
    @State private var DonateAs: Bool = false
    // New state for checkbox

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("")) {
                    TextField("Name", text: $Name)
                    TextField("Contact Number", text: $ContactNumber)
                }
                
                Section(header: Text("Donate AS AN")) {
                        Toggle("Individual", isOn: $DonateAs)
                        Toggle("Organisation", isOn: $DonateAs)
                        }
                
                        
                Section(header: Text("Select Category")) {
                        Toggle("Vegetarian", isOn: $DonateAs)
                        Toggle("Non-Vegetarian", isOn: $DonateAs)
                        }
                        
                        
                        Section {
                            Button(action: {
                                // Perform action when button is tapped
                            }) {
                                Text("Submit and Proceed")
                            }
                        }
                    }
                    .navigationTitle("Food Donation")
                }
            }
        }
        
        struct FoodCategoryView_preview: PreviewProvider {
            static var previews: some View {
                FoodCategoryView()
            }
        }
