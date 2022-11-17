<details> 
<summary>Tugas 7: Elemen Dasar Flutter</summary>
<pre>
# Tugas 7: Elemen Dasar Flutter

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Widget dapat berupa stateful atau stateless. Jika widget dapat berubah ketika pengguna berinteraksi dengannya, itu adalah stateful widget. Widget stateless tidak pernah berubah, contohnya Icon , IconButton , dan Text.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text: Widget Teks menampilkan string teks dengan gaya tunggal. String mungkin pecah di beberapa baris atau mungkin semua ditampilkan pada baris yang sama tergantung pada batasan layout.
- Floating Action Button: Ini adalah widget yang mengapung di layar di atas widget lain. Itu muncul sebagai ikon melingkar di layar dengan ikon di tengahnya sebagai anaknya. Ini secara default ditempatkan di sudut kanan bawah layar.
- Stack: Stack widget adalah widget yang memungkinkan kita untuk membuat widget-widget saling bertumpuk.
- Positioned: Positioned widget memposisikan widget di atas satu sama lain. Biasanya digunakan untuk memposisikan children widget di widget Stack atau semacamnya.
- Column: Column widget ini memungkinkan untuk align children secara horizontal dan vertikal sesuai kebutuhan.
- Center: Center widget menengahkan children-nya di dalam dirinya sendiri.
- App Bar: AppBar biasanya merupakan komponen paling atas dari aplikasi (atau terkadang paling bawah), ini berisi toolbar dan beberapa action buttons umum lainnya.
- Scafold: Scaffold adalah class dalam flutter yang menyediakan banyak widget seperti Drawer, SnackBar, BottomNavigationBar, FloatingActionButton, AppBar, dll.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() yang akan bertugas untuk memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada Widget tersebut.

## Jelaskan perbedaan antara const dengan final.
Nilai dari const harus sudah diketahui saat compile-time, sedangkan nilai final dapat ditetapkan saat runtime dan setelah diinitialize tidak dapat diubah.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat flutter project dengan menjalankan command flutter create counter_7
2. Membuat variabel untuk menyimpan color, string 'GANJIL' atau 'GENAP'.
3. Membuat function untuk decrement dan counter.
4. Menambahkan if statement pada set state di dalam function increment dan decrement untuk menganti string dan color.
5. Menambahkan floatingActionButton untuk fungsi decrement.
6. Membuat if statement untuk menampilkan button decrement hanya jika counter tidak nol.


</pre>
</details>

<details> 
<summary>Tugas 8: Flutter Form</summary>
<pre>
# Tugas 8: Flutter Form

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push akan menambahkan route ke dalam navigator stack dan dapat kembali ke route sebelumnya dengan menggunakan Navigator.pop. Di sisi lain, Navigator.pushReplacement akan menambahkan route baru dan menghapus route sebelum-sebelumnya. 

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Drawer: layar samping yang tidak terlihat. Ini adalah menu geser ke kiri yang umumnya berisi tautan penting dalam aplikasi dan menempati setengah layar saat ditampilkan.
- ListTile: Widget ListTile digunakan untuk mengisi ListView di Flutter. Ini berisi judul serta ikon awal atau akhir.
- SingleChildScrollView: Sebuah kotak di mana satu widget dapat di-scroll.
- DropdownButtonFormField: widget yang membungkus widget Dropdown dan memungkinkan untuk mengubah estetika visual dan menambahkan validasi pada tombol dropdown.
- TextFormField: membungkus TextField dan mengintegrasikannya dengan Formulir terlampir. Ini menyediakan fungsionalitas tambahan, seperti validasi dan integrasi dengan widget FormField lainnya.
- Container: widget yang menggabungkan common painting, positioning, dan widgets sizing. 
- Column: Column widget ini memungkinkan untuk align children secara horizontal dan vertikal sesuai kebutuhan.
- Row: memungkinkan untuk meng-align childs secara horizontal atau vertikal sesuai dengan kebutuhan.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed
- onTap
- onChange

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator mengelola stack dari objek-objek Route dan menyediakan dua cara untuk mengelola stack, Navigator.pages atau Navigator.push dan Navigator.pop.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat objek budget pada file budget.dart
2. Membuat page add budget
3. membuat page data budget
4. Membuat objek drawer berisi navigator untuk pindah dari satu page ke yang lain pada file drawer.dart

</pre>
</details>
