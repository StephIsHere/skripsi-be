-- =============================================
-- SEED DATA - DEMO SESI PESERTA
-- 6 Calon (Imanuel, Shawn, Kristiadi, Andrew, Kenneth, Greg) sebagai Peserta
-- Status: 'Seleksi Berkas', id_kelompok = NULL
-- 1 Batch aktif saja
-- =============================================

-- =============================================
-- 1. SISTEM OPERASI
-- =============================================
ALTER SEQUENCE "sistem_operasi_id_so_seq" RESTART WITH 1;
INSERT INTO "sistem_operasi" ("id_so", "nama", "bobot", "createdAt", "updatedAt") VALUES
(1,  'Ubuntu',         2, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(2,  'Arch Linux',     5, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(3,  'Linux Mint',     1, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(4,  'CentOS',         3, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(5,  'Rocky Linux',    3, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(6,  'Fedora',         3, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(7,  'Debian',         4, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(8,  'openSUSE',       3, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(9,  'Windows 11',     2, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(10, 'Windows Server', 4, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(11, 'macOS Ventura',  2, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(12, 'Kali Linux',     4, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(13, 'Manjaro',        2, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(14, 'Alpine Linux',   5, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07'),
(15, 'Pop!_OS',        2, '2026-01-06 00:00:00+07', '2026-01-06 00:00:00+07');

-- =============================================
-- 2. SOAL
-- =============================================
ALTER SEQUENCE "soal_id_soal_seq" RESTART WITH 1;
INSERT INTO "soal" ("id_soal", "judul", "deskripsi", "bobot", "createdAt", "updatedAt") VALUES
(1, 'LAMP Stack',
  '<ul><li>Pelajari LAMP Stack (Linux, Apache, MySQL, PHP)</li><li>Instalasi Linux, Apache, MySQL, PHP</li><li>Running web server</li><li>Testing web server dengan koneksi database PHP sederhana</li></ul>',
  2, '2026-02-01 08:12:45+07', '2026-02-01 08:12:45+07'),
(2, 'File Sharing Samba',
  '<ul><li>Pelajari Samba</li><li>Instalasi dan konfigurasi</li><li>Membuat drive Z mahasiswa (kuota 200MB tiap user)</li><li>Membuat folder untuk grup tertentu</li><li>Membuat folder public</li><li>Testing akses Samba dari PC berbeda</li></ul>',
  3, '2026-02-01 09:21:10+07', '2026-02-01 09:21:10+07'),
(3, 'Reverse Proxy dengan Nginx',
  '<ul><li>Install dua VM menggunakan KVM/Proxmox/Openstack</li><li>Instalasi Nginx pada host OS</li><li>Instalasi Apache pada kedua VM</li><li>Membuat dua website sederhana</li><li>Konfigurasi reverse proxy Nginx dan DNS</li><li>Akses website menggunakan domain</li></ul>',
  4, '2026-02-01 13:05:44+07', '2026-02-01 13:05:44+07'),
(4, 'Active Directory (AD)',
  '<ul><li>Pelajari Windows Server</li><li>Instalasi Windows Server</li><li>Konfigurasi Forest</li><li>Konfigurasi Active Directory (AD)</li><li>Konfigurasi Profile</li><li>Konfigurasi Group Policy Objects (GPO)</li><li>Konfigurasi DNS</li><li>Konfigurasi NTP</li><li>Membuat dokumentasi</li></ul>',
  4, '2026-02-01 07:55:12+07', '2026-02-01 07:55:12+07'),
(5, 'DNS dan FTP',
  '<ul><li>Pelajari DNS dan FTP</li><li>Instalasi DNS dan FTP</li><li>Konfigurasi DNS dan FTP</li><li>Menjalankan DNS dan FTP</li><li>Testing FTP upload dan download</li><li>Testing akses FTP melalui domain</li></ul>',
  3, '2026-02-01 10:10:10+07', '2026-02-01 10:10:10+07'),
(6, 'Jaringan Mikrotik',
  '<ul><li>Reset router dan switch ke default configuration</li><li>Konfigurasi switch (IP, VLAN, port access & trunk)</li><li>Konfigurasi router (IP gateway)</li><li>Set semua IP static</li><li>Konfigurasi PC (IP dan gateway)</li><li>Testing koneksi jaringan menggunakan ping</li></ul>',
  4, '2026-02-01 08:40:55+07', '2026-02-01 08:40:55+07'),
(7, 'Server Monitoring dengan Cacti',
  '<ul><li>Install Apache Web Server</li><li>Konfigurasi firewall</li><li>Install Cacti</li><li>Membuat user monitoring</li><li>Konfigurasi server Cacti</li><li>Konfigurasi SNMP</li><li>Testing akses web Cacti</li><li>Membuat dashboard monitoring</li></ul>',
  4, '2026-02-01 14:00:00+07', '2026-02-01 14:00:00+07'),
(8, 'Microsoft SQL Server',
  '<ul><li>Pelajari Microsoft SQL Server</li><li>Instalasi SQL Server</li><li>Konfigurasi SQL Server</li><li>Import database AdventureWorks</li><li>Membuat beberapa user</li><li>Isolasi database per user</li><li>Membatasi delete database</li><li>Membuat script otomatis user dan database berdasarkan NPM</li></ul>',
  3, '2026-02-01 09:09:09+07', '2026-02-01 09:09:09+07'),
(9, 'Monitoring dengan Prometheus dan Grafana',
  '<ul><li>Install Prometheus</li><li>Membuat user monitoring</li><li>Konfigurasi server Prometheus</li><li>Menjadikan Prometheus sebagai service (systemd)</li><li>Install Grafana</li><li>Tambahkan Prometheus sebagai datasource</li><li>Membuat dashboard monitoring</li><li>Import dashboard dari komunitas</li><li>Konfigurasi node exporter</li><li>Monitoring di Grafana</li></ul>',
  4, '2026-02-01 07:30:45+07', '2026-02-01 07:30:45+07'),
(10, 'Docker dan Judge System',
  '<ul><li>Install Docker</li><li>Install MariaDB</li><li>Install PhpMyAdmin</li><li>Konfigurasi Reverse Proxy</li><li>Install Judge (semua fitur harus berjalan)</li></ul>',
  4, '2026-02-01 11:11:11+07', '2026-02-01 11:11:11+07'),
(11, 'Gitlab dengan Docker',
  '<ul><li>Install Docker</li><li>Install Gitlab Server dalam Docker</li><li>Membuat user (admin dan user)</li><li>Test create repository</li><li>Test clone, pull, push</li><li>Create runner CI/CD</li><li>Test CI/CD</li></ul>',
  4, '2026-02-01 15:20:10+07', '2026-02-01 15:20:10+07'),
(12, 'VPN Server dengan WireGuard',
  '<ul><li>Pelajari konsep VPN dan WireGuard</li><li>Instalasi WireGuard pada server Ubuntu/Debian</li><li>Generate public dan private key untuk server dan client</li><li>Konfigurasi interface server dan IP forwarding</li><li>Membuat file konfigurasi untuk peer (client)</li><li>Testing koneksi VPN dari client ke server (ping IP lokal)</li></ul>',
  3, '2026-02-01 09:00:00+07', '2026-02-01 09:00:00+07'),
(13, 'CI/CD Pipeline dengan Jenkins',
  '<ul><li>Pelajari konsep Continuous Integration & Deployment (CI/CD)</li><li>Instalasi Jenkins menggunakan Docker Container</li><li>Konfigurasi akses Docker dari dalam container Jenkins</li><li>Membuat Git repository sederhana berisi aplikasi web</li><li>Membuat Jenkinsfile untuk mendefinisikan tahapan pipeline</li><li>Testing otomatisasi build dan push Docker image ke registry lokal</li></ul>',
  4, '2026-02-01 10:30:15+07', '2026-02-01 10:30:15+07'),
(14, 'Load Balancing dengan HAProxy',
  '<ul><li>Pelajari konsep Load Balancing dan High Availability</li><li>Install dua VM sebagai backend server</li><li>Instalasi HAProxy pada node/VM utama</li><li>Konfigurasi backend dan frontend pada file haproxy.cfg</li><li>Setup algoritma Round Robin</li><li>Testing distribusi traffic web ke kedua backend server</li></ul>',
  4, '2026-02-01 13:15:00+07', '2026-02-01 13:15:00+07'),
(15, 'Centralized Logging dengan ELK Stack',
  '<ul><li>Pelajari arsitektur Elasticsearch, Logstash, dan Kibana</li><li>Instalasi ELK Stack menggunakan Docker Compose</li><li>Instalasi Filebeat pada target server (VM terpisah)</li><li>Konfigurasi Filebeat untuk mengirim log system/Nginx ke Logstash</li><li>Membuat index pattern pada dashboard Kibana</li><li>Membuat visualisasi dan monitoring log secara realtime di Kibana</li></ul>',
  4, '2026-02-01 08:45:30+07', '2026-02-01 08:45:30+07'),
(16, 'Container Orchestration dengan Docker Swarm',
  '<ul><li>Pelajari konsep Container Orchestration</li><li>Siapkan 3 VM Docker (1 Manager, 2 Worker)</li><li>Inisialisasi Docker Swarm pada node Manager</li><li>Join Worker node ke dalam kluster Swarm menggunakan token</li><li>Deploy service web server ke dalam kluster</li><li>Scale up replica menjadi 5 instance</li><li>Testing failover dengan mematikan salah satu node worker</li></ul>',
  4, '2026-02-01 11:10:00+07', '2026-02-01 11:10:00+07');

-- =============================================
-- 3. BATCH (1 batch aktif)
-- =============================================
ALTER SEQUENCE "batch_id_batch_seq" RESTART WITH 1;
INSERT INTO "batch" ("id_batch", "nama_batch", "status", "tanggal_mulai", "tanggal_selesai", "createdAt", "updatedAt") VALUES
(1, 'Batch 2026 Ganjil', true, '2026-02-01 00:00:00', '2026-08-31 23:59:59', '2026-01-20 08:00:00', '2026-01-20 08:00:00');

-- =============================================
-- 4. USERS
--   id_user 1     : SA (Steven Febrian) - super admin
--   id_user 2     : Kalab (Raymond)
--   id_user 3     : Admin
--   id_user 4-9   : 6 calon sebagai Peserta
-- =============================================
ALTER SEQUENCE "users_id_user_seq" RESTART WITH 1;
INSERT INTO "users" ("id_user", "nama", "email", "google_id", "foto", "role", "nomor_identitas", "createdAt", "updatedAt") VALUES
(1, 'Steven Febrian',        '6182201084@student.unpar.ac.id', '7777777', NULL, 'SA',      '7777777',    '2024-01-05 07:00:00', '2024-01-05 07:00:00'),
(2, 'Raymond Chandra',       'raymond.chandra@unpar.ac.id',    NULL,      NULL, 'Kalab',   '1241301',    '2024-01-05 07:05:00', '2024-01-05 07:05:00'),
(3, 'Fabrianus Pujanugraha', '6181901075@unpar.ac.id',         NULL,      NULL, 'Admin',   '6181901075', '2024-01-05 07:20:00', '2024-01-05 07:20:00'),

-- 6 calon sebagai Peserta
(4, 'Imanuel Alexander',     '6182201013@unpar.ac.id',         NULL, NULL, 'Peserta', '6182201013', '2026-01-22 09:00:00', '2026-01-22 09:00:00'),
(5, 'Shawn Jonathan',        '6182201021@unpar.ac.id',         NULL, NULL, 'Peserta', '6182201021', '2026-01-22 09:05:00', '2026-01-22 09:05:00'),
(6, 'Benediktus Kristiadi',  '6182201032@unpar.ac.id',         NULL, NULL, 'Peserta', '6182201032', '2026-01-22 09:10:00', '2026-01-22 09:10:00'),
(7, 'Andrew',                '6187701002@unpar.ac.id',         NULL, NULL, 'Peserta', '18223002',   '2026-01-22 09:15:00', '2026-01-22 09:15:00'),
(8, 'Kenneth',               '6187701005@unpar.ac.id',         NULL, NULL, 'Peserta', '18223005',   '2026-01-22 09:20:00', '2026-01-22 09:20:00'),
(9, 'Gregorius',             '6187701004@unpar.ac.id',         NULL, NULL, 'Peserta', '18223004',   '2026-01-22 09:25:00', '2026-01-22 09:25:00');

-- =============================================
-- 5. KELOMPOK (kosong - belum ada kelompok karena masih Seleksi Berkas)
-- =============================================
ALTER SEQUENCE "kelompok_id_kelompok_seq" RESTART WITH 1;

-- =============================================
-- 6. PESERTA
--   Semua 6 calon: status='Seleksi Berkas', id_kelompok=NULL
-- =============================================
ALTER SEQUENCE "peserta_id_peserta_seq" RESTART WITH 1;
INSERT INTO "peserta" ("id_peserta", "id_user", "id_batch", "id_kelompok", "status", "tanggal_daftar", "createdAt", "updatedAt") VALUES
(1, 4, 1, NULL, 'Seleksi Berkas', '2026-01-22 10:00:00', '2026-01-22 10:00:00', '2026-01-22 10:00:00'),
(2, 5, 1, NULL, 'Seleksi Berkas', '2026-01-22 10:05:00', '2026-01-22 10:05:00', '2026-01-22 10:05:00'),
(3, 6, 1, NULL, 'Seleksi Berkas', '2026-01-22 10:10:00', '2026-01-22 10:10:00', '2026-01-22 10:10:00'),
(4, 7, 1, NULL, 'Seleksi Berkas', '2026-01-22 10:15:00', '2026-01-22 10:15:00', '2026-01-22 10:15:00'),
(5, 8, 1, NULL, 'Seleksi Berkas', '2026-01-22 10:20:00', '2026-01-22 10:20:00', '2026-01-22 10:20:00'),
(6, 9, 1, NULL, 'Seleksi Berkas', '2026-01-22 10:25:00', '2026-01-22 10:25:00', '2026-01-22 10:25:00');

-- =============================================
-- 7. PENGUMUMAN
-- =============================================
ALTER SEQUENCE "pengumuman_id_pengumuman_seq" RESTART WITH 1;
INSERT INTO "pengumuman" ("id_pengumuman", "judul", "isi", "tanggal_pengumuman", "id_batch", "id_user", "is_broadcast", "createdAt", "updatedAt") VALUES
(1, 'Lowongan Magang sebagai Admin Labkom 2026',
 '<p>Selamat sore, Berikut saya informasikan mengenai lowongan magang sebagai tenaga admin di labkomp FS bagi mahasiswa informatika angkatan 2024. Silahkan membaca keterangan lebih lanjut pada lampiran berikut. Dan saya tunggu kabar baiknya dari kalian yang tertarik dengan lowongan ini. Jika ada yang mau tanya-tanya dahulu atau ada kendala tertentu boleh langsung menghubungi saya. Terimakasih.</p>',
 '2026-01-20 16:08:00', 1, 2, false, '2026-01-20 16:08:00', '2026-01-20 16:08:00'),

(2, 'Pelengkapan Dokumen Administrasi',
 '<p>Selamat pagi, Diinformasikan kepada seluruh peserta yang telah berhasil login ke dalam sistem untuk segera melengkapi dokumen pada halaman profil untuk melanjutkan proses seleksi pendaftaran. Mohon dilengkapi sebelum tanggal 5 Februari 2026. Terima kasih.</p>',
 '2026-01-25 16:08:00', 1, 2, true, '2026-01-25 16:08:00', '2026-01-25 16:08:00'),

(3, 'Tata Cara Seleksi Berkas',
 '<p>Selamat siang, Berikut saya informasikan tata cara seleksi berkas untuk Batch 2026 Ganjil:<br>1. Lengkapi seluruh dokumen pada halaman profil (KTM, Transkrip, CV, Foto, Motivation Letter).<br>2. Pastikan format file PDF dan ukuran maksimal 2MB per file.<br>3. Hasil seleksi berkas akan diumumkan paling lambat 10 Februari 2026.<br>Apabila ada pertanyaan, silakan ditanyakan melalui kolom komentar pengumuman ini. Terima kasih.</p>',
 '2026-01-26 10:00:00', 1, 1, true, '2026-01-26 10:00:00', '2026-01-26 10:00:00'),

(4, 'Reminder Deadline Pengumpulan Dokumen',
 '<p>Halo semuanya, Reminder bahwa deadline pengumpulan dokumen administrasi adalah tanggal 5 Februari 2026 pukul 23:59 WIB. Mohon untuk segera melengkapi dokumen yang masih kurang pada halaman profil. Bagi yang sudah lengkap, terima kasih atas kerjasamanya. Salam, Adminus Labkominus.</p>',
 '2026-02-02 14:00:00', 1, 3, true, '2026-02-02 14:00:00', '2026-02-02 14:00:00'),

(5, 'Verifikasi Dokumen Andrew dan Kenneth',
 '<p>Untuk Andrew dan Kenneth, dokumen Motivation Letter yang kalian upload kurang jelas terbacanya. Mohon untuk re-upload dengan kualitas scan yang lebih baik. Terima kasih.</p>',
 '2026-02-03 09:30:00', 1, 3, false, '2026-02-03 09:30:00', '2026-02-03 09:30:00');

-- =============================================
-- 8. PENERIMA PENGUMUMAN
-- =============================================
ALTER SEQUENCE "penerima_pengumuman_id_penerima_pengumuman_seq" RESTART WITH 1;
INSERT INTO "penerima_pengumuman" ("id_penerima_pengumuman", "id_pengumuman", "id_user", "createdAt", "updatedAt") VALUES
-- Pengumuman 2: Pelengkapan Dokumen (broadcast - semua peserta)
(1, 2, 4, '2026-01-25 16:08:00', '2026-01-25 16:08:00'),
(2, 2, 5, '2026-01-25 16:08:00', '2026-01-25 16:08:00'),
(3, 2, 6, '2026-01-25 16:08:00', '2026-01-25 16:08:00'),
(4, 2, 7, '2026-01-25 16:08:00', '2026-01-25 16:08:00'),
(5, 2, 8, '2026-01-25 16:08:00', '2026-01-25 16:08:00'),
(6, 2, 9, '2026-01-25 16:08:00', '2026-01-25 16:08:00'),

-- Pengumuman 3: Tata Cara Seleksi Berkas (broadcast)
(7,  3, 4, '2026-01-26 10:00:00', '2026-01-26 10:00:00'),
(8,  3, 5, '2026-01-26 10:00:00', '2026-01-26 10:00:00'),
(9,  3, 6, '2026-01-26 10:00:00', '2026-01-26 10:00:00'),
(10, 3, 7, '2026-01-26 10:00:00', '2026-01-26 10:00:00'),
(11, 3, 8, '2026-01-26 10:00:00', '2026-01-26 10:00:00'),
(12, 3, 9, '2026-01-26 10:00:00', '2026-01-26 10:00:00'),

-- Pengumuman 4: Reminder Deadline (broadcast)
(13, 4, 4, '2026-02-02 14:00:00', '2026-02-02 14:00:00'),
(14, 4, 5, '2026-02-02 14:00:00', '2026-02-02 14:00:00'),
(15, 4, 6, '2026-02-02 14:00:00', '2026-02-02 14:00:00'),
(16, 4, 7, '2026-02-02 14:00:00', '2026-02-02 14:00:00'),
(17, 4, 8, '2026-02-02 14:00:00', '2026-02-02 14:00:00'),
(18, 4, 9, '2026-02-02 14:00:00', '2026-02-02 14:00:00'),

-- Pengumuman 5: Verifikasi Dokumen (NON-broadcast - hanya Andrew & Kenneth)
(19, 5, 7, '2026-02-03 09:30:00', '2026-02-03 09:30:00'),  -- Andrew
(20, 5, 8, '2026-02-03 09:30:00', '2026-02-03 09:30:00');  -- Kenneth

-- =============================================
-- 9. KOMENTAR PENGUMUMAN
-- =============================================
ALTER SEQUENCE "komentar_pengumuman_id_komentar_pengumuman_seq" RESTART WITH 1;
INSERT INTO "komentar_pengumuman" ("id_komentar_pengumuman", "id_pengumuman", "id_user", "isi_komentar", "createdAt", "updatedAt") VALUES
-- Pengumuman 2: Pelengkapan Dokumen
(1, 2, 4, 'Siap min, segera dilengkapi',                             '2026-01-26 08:30:00', '2026-01-26 08:30:00'),
(2, 2, 6, 'Baik min',                                                '2026-01-26 09:00:00', '2026-01-26 09:00:00'),
(3, 2, 9, 'Oke min, terima kasih informasinya',                      '2026-01-26 10:15:00', '2026-01-26 10:15:00'),

-- Pengumuman 3: Tata Cara
(4, 3, 5, 'Pak, untuk motivation letter ada minimum jumlah katanya tidak?',  '2026-01-26 11:00:00', '2026-01-26 11:00:00'),
(5, 3, 1, 'Tidak ada minimum spesifik, tapi usahakan minimal 1 halaman A4 agar isinya cukup substansial.', '2026-01-26 13:00:00', '2026-01-26 13:00:00'),
(6, 3, 7, 'Pak, kalau transkrip nilai versi sementara (belum semester ini) boleh tidak?',                  '2026-01-26 14:30:00', '2026-01-26 14:30:00'),
(7, 3, 1, 'Boleh, yang penting transkrip terbaru yang valid dari sistem akademik.', '2026-01-26 15:00:00', '2026-01-26 15:00:00'),

-- Pengumuman 4: Reminder
(8, 4, 8, 'Siap min, sedang dalam proses pengumpulan',               '2026-02-02 15:00:00', '2026-02-02 15:00:00'),
(9, 4, 4, 'Sudah lengkap pak, terima kasih remindernya',             '2026-02-02 16:30:00', '2026-02-02 16:30:00'),

-- Pengumuman 5: Verifikasi (Andrew & Kenneth)
(10, 5, 7, 'Baik pak, akan saya scan ulang dan upload kembali',      '2026-02-03 10:00:00', '2026-02-03 10:00:00'),
(11, 5, 8, 'Mohon maaf pak, akan segera saya perbaiki',              '2026-02-03 10:30:00', '2026-02-03 10:30:00'),
(12, 5, 3, 'Oke, ditunggu paling lambat besok ya. Terima kasih.',    '2026-02-03 11:00:00', '2026-02-03 11:00:00');

-- =============================================
-- 10. KEHADIRAN (kosong - peserta belum masuk Pelatihan)
-- =============================================
ALTER SEQUENCE "kehadiran_id_kehadiran_seq" RESTART WITH 1;

-- =============================================
-- 11. PENUGASAN (kosong - peserta belum masuk Pelatihan)
-- =============================================
ALTER SEQUENCE "penugasan_id_penugasan_seq" RESTART WITH 1;

-- =============================================
-- 12. KOMENTAR TUGAS (kosong)
-- =============================================
ALTER SEQUENCE "komentar_tugas_id_komentar_tugas_seq" RESTART WITH 1;

-- =============================================
-- 13. DOKUMEN
--   Sebagian peserta sudah upload dokumen, sebagian belum
-- =============================================
ALTER SEQUENCE "dokumen_id_dokumen_seq" RESTART WITH 1;
INSERT INTO "dokumen" ("id_dokumen", "id_peserta", "ktm", "transkrip", "cv", "foto", "motivation_letter", "createdAt", "updatedAt") VALUES
-- Imanuel - lengkap
(1, 1, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-23 10:00:00', '2026-02-01 10:00:00'),
-- Shawn - lengkap
(2, 2, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-23 10:15:00', '2026-02-01 10:15:00'),
-- Kristiadi - hanya KTM, Transkrip, CV (motivation_letter & foto belum)
(3, 3, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', NULL, NULL, '2026-01-24 09:00:00', '2026-01-24 09:00:00'),
-- Andrew - lengkap (tapi motivation letter perlu re-upload per pengumuman 5)
(4, 4, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-25 09:00:00', '2026-02-02 14:00:00'),
-- Kenneth - lengkap
(5, 5, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-25 11:00:00', '2026-02-02 16:00:00');
-- Greg (id_peserta=6): belum upload dokumen sama sekali

-- =============================================
-- 14. LOG (kosong)
-- =============================================
ALTER SEQUENCE "log_id_log_seq" RESTART WITH 1;

-- =============================================
-- 15. RESET SEQUENCE
-- =============================================
SELECT setval('"sistem_operasi_id_so_seq"',                       (SELECT MAX("id_so")                   FROM "sistem_operasi"));
SELECT setval('"soal_id_soal_seq"',                               (SELECT MAX("id_soal")                 FROM "soal"));
SELECT setval('"batch_id_batch_seq"',                             (SELECT MAX("id_batch")                FROM "batch"));
SELECT setval('"users_id_user_seq"',                              (SELECT MAX("id_user")                 FROM "users"));
SELECT setval('"peserta_id_peserta_seq"',                         (SELECT MAX("id_peserta")              FROM "peserta"));
SELECT setval('"pengumuman_id_pengumuman_seq"',                   (SELECT MAX("id_pengumuman")           FROM "pengumuman"));
SELECT setval('"penerima_pengumuman_id_penerima_pengumuman_seq"', (SELECT MAX("id_penerima_pengumuman")  FROM "penerima_pengumuman"));
SELECT setval('"komentar_pengumuman_id_komentar_pengumuman_seq"', (SELECT MAX("id_komentar_pengumuman")  FROM "komentar_pengumuman"));
SELECT setval('"dokumen_id_dokumen_seq"',                         (SELECT MAX("id_dokumen")              FROM "dokumen"));