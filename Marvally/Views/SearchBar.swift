//
//  SearchBar.swift
//  Marvally
//
//  Created by MacBook on 29/06/22.
//

import SwiftUI

struct SearchBar: View {
    var textFieldPlaceholder: String
    
    @Binding var text: String
    
    @State private var isEditing = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                TextField(textFieldPlaceholder, text: $text)
                    .keyboardType(.webSearch)
                    .frame(height: 43)
                    .padding(8)
                    .padding(.leading, 8)
                    .foregroundColor(.white)
                    .background(Color(hexString: "33353F"))
                    .cornerRadius(27)
                    .overlay(
                        HStack {
                            if isEditing {
                                Button {
                                    withAnimation {
                                        self.text = ""
                                    }
                                } label: {
                                    Image(systemName: "multiply.circle.fill")
                                        .foregroundColor(Color(hexString: "ADAEB2"))
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, 16)
                                }
                            } else {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color(hexString: "ADAEB2"))
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing, 16)
                            }
                        }
                    )
                    .onTapGesture {
                        withAnimation {
                            self.isEditing = true
                        }
                    }
                
                if isEditing {
                    Button {
                        withAnimation {
                            self.isEditing = false
                            self.text = ""
                            hideKeyboard()
                        }
                    } label: {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                }
            }
            
            if !isEditing {
                Text(textFieldPlaceholder)
                    .foregroundColor(Color.white.opacity(0.6))
                    .padding()
            }
        }
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(textFieldPlaceholder: "Search anything...", text: .constant(""))
    }
}
