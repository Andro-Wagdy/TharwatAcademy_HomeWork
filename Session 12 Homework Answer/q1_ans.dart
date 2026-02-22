void main() {
  NotesApp app = NotesApp();

  app.createNote('my hobbies', 'play video game');
  app.createNote('today\'s Achievements', 'finished home work');
  app.createNote('life goals', 'get a job');

  print('--- All Notes ---');
  app.listNotes();

  app.searchByTitle('life goals');
}

class Note {
  final String title;
  final String content;
  final DateTime createdAt;

  Note({required this.title, required this.content})
      : createdAt = DateTime.now();
}

class NotesApp {
  final List<Note> _notes = [];
  void createNote(String title, String content) {
    _notes.add(Note(title: title, content: content));
  }

  void listNotes() {
    if (_notes.isEmpty) {
      print('No notes found');
      return;
    }

    int count = 1;
    for (var note in _notes) {
      print('Note $count:');
      print('title: ${note.title}');
      print('content: ${note.content}');
      print('created at: ${note.createdAt}');
      print('----------------');
      count++;
    }
  }
  void searchByTitle(String title) {
    final result = _notes.where((n) => n.title == title);

    if (result.isEmpty) {
      print('Note not found');
      return;
    }

    for (var note in result) {
      print('Found note:');
      print('title: ${note.title}');
      print('content: ${note.content}');
      print('created at: ${note.createdAt}');
    }
  }
}