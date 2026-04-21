import SwiftUI

struct Message {
    var sender: String
    var text: String
    var isCurrentUser: Bool
}

struct ChatView: View {
    @State private var newMessage = ""
    
    // Sample chat messages
    @State private var messages: [Message] = [
        Message(sender: "Alice", text: "Hello!", isCurrentUser: false),
        Message(sender: "You", text: "Hi there!", isCurrentUser: true),
        Message(sender: "Charlie", text: "How are you?", isCurrentUser: false),
        Message(sender: "Alice", text: "I'm good, thanks!", isCurrentUser: false),
        Message(sender: "You", text: "That's great to hear!", isCurrentUser: true),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List(messages, id: \.text) { message in
                    HStack {
                        if !message.isCurrentUser {
                            VStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.green)
                                
                                Text(message.sender)
                                    .font(.caption)
                                    .foregroundColor(.green)
                            }
                            .padding(.trailing, 10)
                        } else {
                            Spacer()
                        }
                        
                        Text(message.text)
                            .padding(10)
                            .background(message.isCurrentUser ? Color.green : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                
                HStack {
                    TextField("Type a message...", text: $newMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(10)
                    
                    Button(action: {
                        if !newMessage.isEmpty {
                            // Add a new message to the chat
                            messages.append(Message(sender: "You", text: newMessage, isCurrentUser: true))
                            newMessage = ""
                        }
                    }) {
                        Text("Send")
                            .font(.headline)
                            .padding(10)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Chat")
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
