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

 ### NOTE: Setiap titik yang diminta dalam y sebetulnya akan diproses sebagai nilai negatif. Itu sebanya titik y mengarah ke bawah.

 parameter yang digunakan adalah titik x dan titik y (untuk parameter yang di input (x, y)). Misalkan seperti di contoh, maka titik untuk menggabar akan berpindah ke x = 50 dan y = 50.

 Untuk menggambar garis menggubakan `path.lineTo` :    
 ```dart
    path.lineTo(50, 50);
 ```

 ![image](https://user-images.githubusercontent.com/54527045/282809623-ea09d3e7-410b-4e8b-835b-3f70d8bc5c8a.png)

 parameter yang digunakan juga sama (yaitu dengan x dan y). Dan permintaanya juga sama yaitu titik. 

 Misalkan seperti di contoh, maka garis akan digambarkan dari titik gambar sampai titik yang diminta (seperti contoh x = 50 dan y = 50).

 point utama untuk menggunakan `lineTo` adalah jangan sama dengan titik gambarnya. Karena garis tidak akan bergerak jika titik yang diminta sama. Contoh:
 ```dart
    path.moveTo(50, 50);
    path.lineTo(50, 50);
 ```
Dari code di atas artinya titik gambar akan di pindah ke 50,50 (x = 50, dan y = 50) dari tiitk 0,0. Lalu menggambar garis ke titik 50,50. Jika dijalankan tidak akan ada garis yang muncul, karena `lineTo` akan diminta untuk menggabar dari titik awal (yang sudah menjadi 50,50) ke titik tujuannya yang nilainya sama.

###### Melengkungkan garis

Garis bisa dilengkungkan dengan quadratic bezier curves(control 1 titik), cubic bezier curves(control 2 titik), dan arcs

Untuk __quadratic bezier curves__, parameter yang diminta 2 kali lipat dari `moveTo` atau `lineTo`. dimana titik (x,y) pertama untuk mengontrol sudut lengkungnya/ titik tarik lengkungnya, sedangkan titik (x,y) kedua untuk titik akhir nya. 

```dart
    path.moveTo(30, 50);
    path.quadraticBezierTo(30, 120, 90, 120);
```

Jadi alur gambarnya dimulai dari titik gambar (0,0 atau titik moveTo) ditarik ke titik x,y pertama yaitu (30,120) sebagai titik lengkung dan ditarik lagi ke titik akhir yaitu (90,120). Node jika garis lengkung dan garis titik sama, itu hanya akan menghasilkan garis lurus saja dan tidak berguna.
![image](https://user-images.githubusercontent.com/54527045/282810667-6c594e6b-1b0a-4bc5-b8e8-780f804af233.png)

Untuk saran, mungkin tentukan saja dulu titik akhirnya ada dimana, baru titik tarik lengkungnya agar mempermudah menentukan seberapa meleneungnya garis yang dibuat.

Untuk melakukan cek hasil dari garis yang dibuat bisa di test [di sini](https://www.desmos.com/calculator/j3shfjmzt3)

Untuk __cubic bezier curves__, titik tarik lengkungnya ada 2 di titik pertama (x1,y1) dan titik ke-2(x2,y2). Lalu titik akhir sebagai titik ke-3(x,y) nya. Untuk tiap parameternya bisa di deretekan seperti ini `path.cubcTo(x1,y1, x2, y2, x, y)`

```dart
    path.moveTo(0, 0);
    path.cubicTo(30.0, 0.0, 30.0, 40.0, 0.0, 40.0);
```

Penjelasan code di atas, dari titik awal (yaitu 0,0) ditarik oleh titik pertama(yaitu x1,y1 dengan nilai 30.0,0.0) agar lengkung garis muncul. Lengkung tersebut diatur dari titik awal sampai dengan bagian tertentu. Lalu pada bagian titik 2 (x2, y2) akan melakukan hal yang sama tapi mengatur titik akhir (x,y) kebelakang. 

![image](https://user-images.githubusercontent.com/54527045/282818041-ea6d3153-f273-4d08-9184-db0b037d2852.png)

Untuk melakukan cek hasil dari garis yang dibuat bisa di test [di sini](https://www.desmos.com/calculator/ebdtbxgbq0)
###### menggunakan relative.

