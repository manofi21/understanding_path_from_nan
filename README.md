# :rocket: Stater Project

Location: --\path_practice

After clone : `flutter pub get`

For running project : `flutter run`

----

# :paperclip: Started with CustomPaint 

 ###### For drawing a line from a point to another, write the code inside `paint`'s environtment from a class (extended one with `CustomPainter`). Then for show the line and the point, place the class CustomPainter in widget `CustomPaint`.

 ### :indonesia:
 ###### Untuk menggambar sebuah garis dari 1 titik ke titik lain, tiliskan code dalam sebuah class (yang di extends `CustomPainter`) pada lingkungan `paint`. Lalu untuk menampilkan garis dan titik bisa dengan menempatkan class CustomPainter tadi di widget `CustomPaint`.

 ###### Didalam lingkungan paint, yang akan menggerakkan titik dan menggambar garis adalah class `Path` dan yang mengubah variasi garisnya adalah class `Paint`

 ###### contoh penggunaanya sebagai berikut:
 ```dart
    // Path for drawing
    final path = Path();

    // Paint for styling path
    final paint = Paint()
        ..color = Colors.black
        ..strokeWidth = 1.3
        ..style = PaintingStyle.stroke;

    // lakukan semua eksekusi dalam drawPath
    canvas.drawPath(path, paint);
 ```