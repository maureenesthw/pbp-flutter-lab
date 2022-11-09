# Tugas 7: Elemen Dasar Flutter

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Widget dapat berupa stateful atau stateless. Jika widget dapat berubah ketika pengguna berinteraksi dengannya, itu adalah stateful widget. Widget stateless tidak pernah berubah, contohnya Icon , IconButton , dan Text.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text: Widget Teks menampilkan string teks dengan gaya tunggal. String mungkin pecah di beberapa baris atau mungkin semua ditampilkan pada baris yang sama tergantung pada batasan layout.
- Floating Action Button: Ini adalah widget yang mengapung di layar di atas widget lain. Itu muncul sebagai ikon melingkar di layar dengan ikon di tengahnya sebagai anaknya. Ini secara default ditempatkan di sudut kanan bawah layar.

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
