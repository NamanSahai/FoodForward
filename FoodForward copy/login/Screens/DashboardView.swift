//
//  DashboardView.swift
//  login
//
//  Created by Meghna Vyas on 16/02/24.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        
        NavigationView {
           
            VStack(alignment: .leading, spacing: 20) {
                Text("What would you like to do today?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
                
                Spacer()

                NavigationLink(destination: FoodCategoryView().navigationBarHidden(true),
            label: {
                    DashboardItemView(imageName: "paperplane", title: "Donate Food")
                        .background(Color("AccentColor"))
                        .foregroundColor(Color("BgColor"))
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                })
                
                NavigationLink(destination: RequestView().navigationBarHidden(true),
            label: {
                    DashboardItemView(imageName: "map", title: "View Request")
                        .background(Color("AccentColor"))
                        .foregroundColor(Color("BgColor"))
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                })
                
                NavigationLink(destination: ProfileView().navigationBarHidden(true),
            label: {
                    DashboardItemView(imageName: "pencil.and.outline", title: "Profile")
                        .background(Color("AccentColor"))
                        .foregroundColor(Color("BgColor"))
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                    
                })
            }
            .padding()
            .navigationTitle("Welcome Tattva!")
        }
    }
}

struct DashboardItemView: View {
    var imageName: String
    var title: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(Color("BgColor"))
            
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .previewDevice("iPhone 15 Pro")
    }
}
