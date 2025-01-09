//
//  CheckoutView.swift
//  Cupcake Corner
//
//  Created by Rakesh Shrestha on 09/01/2025.
//

import SwiftUI

struct CheckoutView: View {
    
    var order: Order
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: "https://hws.dev/img/cupcakes@3x.jpg"), scale: 3) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 233)
                
                Text("Your total cost is \(order.cost, format: .currency(code: "NPR"))")
                    .font(.title)
                
                Button("Place Order" , action: {
                    
                })
                .padding()
            }
        }
        .navigationTitle(Text("Check out"))
        .navigationBarTitleDisplayMode(.inline)
        .scrollBounceBehavior(.basedOnSize)
    }
}
    
    #Preview {
        CheckoutView(order: Order())
    }