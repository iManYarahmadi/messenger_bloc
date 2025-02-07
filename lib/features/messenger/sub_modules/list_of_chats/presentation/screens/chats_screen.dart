import 'package:base_structure_bloc/core/theme/theme.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/presentation/blocs/api/list_of_chats_bloc.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/presentation/sections/input_section.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/presentation/sections/list_of_chats_section.dart';
import '../../data/params/list_of_chats_params.dart';
/// [ChatsScreen] : A screen displaying a list of chat conversations.
///
/// This screen contains an input section for user interaction and a list of chats
/// retrieved from the [ListOfChatsBloc].
///
/// ### UI Components:
///
/// - `AppBar` : Displays the title "Chat List".
/// - `InputSection` : A section for user input.
/// - `ListOfChatSection` : Displays the list of available chat conversations.
///
/// ### State Management:
///
/// - Uses [ListOfChatsBloc] to fetch chat data when the screen is initialized.
/// - Calls `ListOfChatsEvent.getResponse()` with [ListOfChatsParams] to retrieve chat data.
///
/// ### Usage:
///
/// This screen should be used as the main chat list screen, where users can see available chats and interact with them.
///
/// #### Example Navigation:
///
/// ```dart
/// context.push('/chats');
/// ```
///
/// ### Notes:
///
/// - The API request is triggered in `initState()` to load chat data when the screen is first displayed.
/// - `ListOfChatsParams(userNumber: 0)` is passed to fetch chat data for all users.
///
/// ---
class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chat List")),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            InputSection(),
            /// Chat List
            ListOfChatSection(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<ListOfChatsBloc>().add(
        ListOfChatsEvent.getResponse(params: ListOfChatsParams(userNumber: 0)));
  }
}