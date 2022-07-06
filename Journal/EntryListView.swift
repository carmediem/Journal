//
//  EntryListView.swift
//  Journal
//
//  Created by Carmen Chiu on 7/6/22.
//

import SwiftUI



struct EntryListView: View {
    
    @State var viewModel = EntryListViewModel()
    

    var body: some View {
        NavigationView { //this is what shows up in the screen
            List {
                Section("My Entries") {
                    ForEach(viewModel.entries) { entry in  //for each will iterate over the entries above in the var entries
                        
                        NavigationLink {
                            //Destination
                            DetailView(entry: entry)
                            
                        } label: {
                            //What our navigation link looks like
                            VStack (alignment: .leading, spacing: 8) {
                                Text(entry.title)
                                    .fontWeight(.bold)  //could also use .bold()
                                    .font(.headline)
                                Text(entry.body)
                                // Text("This is my body. All of the details about my dream will be written here.")
                                    .font(.system(size: 14))
                            }.padding() //this will put adding in the entire VStack. COuld also say .top, .bottom
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Dream Journal")   //title has to be on the navigation view
            //  .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        //Destination
                        Text("hello!")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct EntryListView_Previews: PreviewProvider {
    static var previews: some View {
        EntryListView()
    }
}
