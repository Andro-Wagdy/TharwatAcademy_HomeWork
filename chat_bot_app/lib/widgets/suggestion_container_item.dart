import 'package:flutter/widgets.dart';

class SuggestionContainerItem extends StatelessWidget {
  const SuggestionContainerItem({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final ValueChanged<String> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(text),
      child: Container(
        width: double.infinity,
        padding: .symmetric(vertical: 10.5),
        margin: .symmetric(vertical: 8),
        decoration: ShapeDecoration(
          color: const Color(0xFFF4F4F4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF3D3D3D),
            fontSize: 14,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
