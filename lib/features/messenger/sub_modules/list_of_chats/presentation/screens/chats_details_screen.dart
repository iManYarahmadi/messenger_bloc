import 'package:base_structure_bloc/features/messenger/presentation/messenger_presentation.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/models/list_of_chats_model.dart';
import 'package:flutter/material.dart';

/// [ChatDetailScreen] : A screen displaying the details of a chat conversation.
///
/// This screen retrieves a list of [Chat] objects passed through the `extra` parameter in [GoRouterState].
/// It displays the chat messages of the first user in the list.
///
/// ### Parameters:
///
/// - `chats` : A list of [Chat] objects, retrieved from the navigation state.
///
/// ### UI Components:
///
/// - `AppBar` : Displays the chat title using the first user's name.
/// - `ListView.builder` : Renders a list of chat messages from the first chat entry.
///
/// ### Usage:
///
/// This screen should be used to display a detailed conversation when navigating from a chat list.
///
/// #### Example Navigation:
///
/// ```dart
/// context.push('/chatDetail', extra: chatList);
/// ```
///
/// ### Notes:
///
/// - This implementation assumes that the `extra` parameter always contains a valid list of [Chat] objects.
/// - It currently only displays messages from the first chat in the list.
///
/// ---
class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Retrieve the list of chats passed through the `extra` parameter
    List<Chat> chats = GoRouterState.of(context).extra as List<Chat>;

    return Scaffold(
      appBar: AppBar(title: Text("Chat with ${chats.first.userName}")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: chats.first.userMessage.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      chats.first.userMessage[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

