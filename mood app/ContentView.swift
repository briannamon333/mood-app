//
//  ContentView.swift
//  mood app
//
//  Created by FAMU on 4/25/24.
//




import SwiftUI

enum Mood: String, CaseIterable {
    case happy = "😊 Happy"
    case sad = "😢 Sad"
    case excited = "🤩 Excited"
    case angry = "😡 Angry"
    case calm = "😌 Calm"
    case surprised = "😲 Surprised"
    case loving = "😍 Loving"
    case anxious = "😰 Anxious"
}

struct ContentView: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MoodSelectionPage()
                .tabItem {
                    Image(systemName: "face.smiling")
                    Text("Mood")
                }
            CalendarPage()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            DataAnalysisPage()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Analysis")
                }
            SettingsPage()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct HomePage: View {
    var body: some View {
        Text("Welcome to Moody!")
            .font(.title)
            .padding()
    }
}

struct MoodSelectionPage: View {
    @State private var selectedMood: Mood?
    
    var body: some View {
        VStack {
            Text("How are you feeling today?")
                .font(.title)
                .padding()
            
            ForEach(Mood.allCases, id: \.self) { mood in
                Button(action: {
                    self.selectedMood = mood
                }) {
                    Text(mood.rawValue)
                        .font(.headline)
                        .padding()
                        .background(self.selectedMood == mood ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.vertical, 5)
            }
            
            if let selectedMood = selectedMood {
                Text("You selected: \(selectedMood.rawValue)")
                    .font(.title)
                    .padding()
            }
            
            Spacer()
        }
    }
}

struct CalendarPage: View {
    // Mock data for demonstration
    let moodData: [String: Mood] = [
        "2024-04-01": .happy,
        "2024-04-02": .sad,
        "2024-04-03": .excited,
        // Add more mood data...
    ]
    
    var body: some View {
        Text("Calendar Page")
            .font(.title)
            .padding()
    }
}

struct DataAnalysisPage: View {
    var body: some View {
        Text("Data Analysis Page")
            .font(.title)
            .padding()
    }
}

struct SettingsPage: View {
    var body: some View {
        Text("Settings Page")
            .font(.title)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}

hello 
