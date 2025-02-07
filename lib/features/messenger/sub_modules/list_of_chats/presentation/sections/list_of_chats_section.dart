import 'package:base_structure_bloc/core/theme/theme.dart';
import 'package:base_structure_bloc/features/messenger/presentation/messenger_presentation.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/presentation/blocs/api/list_of_chats_bloc.dart';
import '../../../../core/enums/messenger_routes_enum.dart';
/// [ListOfChatSection] : A widget that displays a list of chat conversations.
///
/// This section fetches chat data from the [ListOfChatsBloc] and displays it
/// as a list of [ListTile] widgets, each representing an individual chat conversation.
///
/// ### UI Components:
///
/// - `BlocBuilder<ListOfChatsBloc, ListOfChatsState>` : Listens to the state of [ListOfChatsBloc] to rebuild the UI.
/// - `ListView.builder` : Renders a scrollable list of chat items.
/// - `ListTile` : Displays each chat's user name, last message, and provides navigation to the chat details screen.
///
/// ### Functionality:
///
/// - Displays a loading indicator (`CircularProgressIndicator`) while chat data is being fetched.
/// - Displays an error message if chat data cannot be loaded.
/// - On tap, navigates to the chat details screen, passing the selected chat data.
///
/// ### Usage:
///
/// This widget is used within a parent widget (like `ChatsScreen`) to display a list of chat conversations.
///
/// #### Example Usage:
///
/// ```dart
/// ListOfChatSection(),
/// ```
///
/// ### Notes:
///
/// - The widget uses [BlocBuilder] to listen for state changes from [ListOfChatsBloc].
/// - It uses [MessengerRoutes.chatDetails.name] for navigation and passes the selected chat to the detail screen.
///
/// ---
class ListOfChatSection extends StatelessWidget {
  const ListOfChatSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ListOfChatsBloc, ListOfChatsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () =>
            const Center(child: CircularProgressIndicator()),
            loaded: (value) {
              return ListView.builder(
                itemCount: value.chatsListModel.chats?.length ?? 0,
                itemBuilder: (context, index) {
                  final chat = value.chatsListModel.chats![index];
                  return ListTile(
                    leading: const Icon(Icons.account_circle_rounded,
                        size: 30),
                    title: Text(chat.userName),
                    subtitle:
                    Text("Last message: ${chat.userMessage.last}"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to the details screen, passing the current chat data
                      context.goNamed(
                        MessengerRoutes.chatDetails.name,
                        extra: [chat], // Only pass the selected chat to details screen
                      );
                    },
                  );
                },
              );
            },
            error: (error) =>
            const Center(child: Text("Error loading chats")),
          );
        },
      ),
    );
  }
}


