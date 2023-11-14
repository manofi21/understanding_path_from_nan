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
###### memindahkan titik dan menggambar garis
 Untuk memindahkan titik menggubakan `path.moveTo` :    
 ```dart
    path.moveTo(50, 50);
 ```
 parameter yang digunakan adalah titik x dan titik y (untuk parameter yang di input (x, y)). Misalkan seperti di contoh, maka titik untuk menggabar akan berpindah ke x = 50 dan y = 50.

 Untuk menggambar garis menggubakan `path.lineTo` :    
 ```dart
    path.lineTo(50, 50);
 ```
 parameter yang digunakan juga sama (yaitu dengan x dan y). Dan permintaanya juga sama yaitu titik. 

 Misalkan seperti di contoh, maka garis akan digambarkan dari titik gambar sampai titik yang diminta (seperti contoh x = 50 dan y = 50).

 point utama untuk menggunakan `lineTo` adalah jangan sama dengan titik gambarnya. Karena garis tidak akan bergerak jika titik yang diminta sama. Contoh:
 ```dart
    path.moveTo(50, 50);
    path.lineTo(50, 50);
 ```
Dari code di atas artinya titik gambar akan di pindah ke 50,50 (x = 50, dan y = 50) dari tiitk 0,0. Lalu menggambar garis ke titik 50,50. Jika dijalankan tidak akan ada garis yang muncul, karena `lineTo` akan diminta untuk menggabar dari titik awal (yang sudah menjadi 50,50) ke titik tujuannya yang nilainya sama.

###### menggunakan relative.

