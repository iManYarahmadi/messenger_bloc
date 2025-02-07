import 'package:base_structure_bloc/core/theme/theme.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/presentation/blocs/api/list_of_chats_bloc.dart';
/// [InputSection] : A widget providing input fields for sending chat messages.
///
/// This section contains input fields for user ID and message input,
/// along with a button to send the message to the chat list.
///
/// ### UI Components:
///
/// - `TextField` (User ID) : Allows the user to input a numeric user ID.
/// - `TextField` (Message) : Allows the user to enter a message.
/// - `ElevatedButton` : Sends the entered message to the chat list.
///
/// ### Functionality:
///
/// - Retrieves user input from `TextEditingController`.
/// - Validates input to ensure a numeric user ID and a non-empty message.
/// - Dispatches [ListOfChatsEvent.addChat] to [ListOfChatsBloc] when the button is pressed.
///
/// ### Usage:
///
/// This widget should be placed within a parent widget, such as `ChatsScreen`,
/// to provide an interface for sending new messages.
///
/// #### Example Usage:
///
/// ```dart
/// InputSection(),
/// ```
///
/// ### Notes:
///
/// - The user ID must be a valid integer, or the message will not be sent.
/// - Clears input fields after sending a message.
///
/// ---
class InputSection extends StatelessWidget {
  const InputSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userIdController = TextEditingController();
    final TextEditingController messageController = TextEditingController();

    return Column(
      children: [
        /// User ID Input
        TextField(
          style: const TextStyle(color: Colors.black),
          controller: userIdController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: "User ID",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),

        /// Message Input
        TextField(
          style: const TextStyle(color: Colors.black),
          controller: messageController,
          decoration: const InputDecoration(
            labelText: "Enter Message",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),

        /// Send Message Button
        ElevatedButton(
          onPressed: () {
            int? userId = int.tryParse(userIdController.text.trim());
            String message = messageController.text.trim();

            if (userId != null && message.isNotEmpty) {
              context.read<ListOfChatsBloc>().add(
                ListOfChatsEvent.addChat(
                  userNumber: userId,
                  userName: "Guest $userId", // Placeholder name
                  message: message,
                ),
              );

              userIdController.clear();
              messageController.clear();
            }
          },
          child: const Text("Send Message"),
        ),
        const SizedBox(height: 20),

      ],
    );
  }
}



