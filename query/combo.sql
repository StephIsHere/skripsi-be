-- =============================================
-- SEED DATA - ALL TABLES
-- Urutan: sistem_operasi → soal → batch → users
--       → kelompok → peserta → pengumuman
--       → penerima_pengumuman → komentar_pengumuman
--       → kehadiran → penugasan → komentar_tugas
--       → dokumen → log → setval
-- =============================================

-- =============================================
-- 1. SISTEM OPERASI
-- =============================================
ALTER SEQUENCE "sistem_operasi_id_so_seq" RESTART WITH 1;
INSERT INTO "sistem_operasi" ("id_so", "nama", "bobot", "createdAt", "updatedAt") VALUES
(1,  'Ubuntu',         2, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(2,  'Arch Linux',     5, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(3,  'Linux Mint',     1, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(4,  'CentOS',         3, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(5,  'Rocky Linux',    3, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(6,  'Fedora',         3, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(7,  'Debian',         4, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(8,  'openSUSE',       3, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(9,  'Windows 11',     2, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(10, 'Windows Server', 4, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(11, 'macOS Ventura',  2, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(12, 'Kali Linux',     4, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(13, 'Manjaro',        2, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(14, 'Alpine Linux',   5, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07'),
(15, 'Pop!_OS',        2, '2025-01-06 00:00:00+07', '2025-01-06 00:00:00+07');

-- =============================================
-- 2. SOAL
-- =============================================
ALTER SEQUENCE "soal_id_soal_seq" RESTART WITH 1;
INSERT INTO "soal" ("id_soal", "judul", "deskripsi", "bobot", "createdAt", "updatedAt") VALUES
(1, 'LAMP Stack',
  '<ul><li>Pelajari LAMP Stack (Linux, Apache, MySQL, PHP)</li><li>Instalasi Linux, Apache, MySQL, PHP</li><li>Running web server</li><li>Testing web server dengan koneksi database PHP sederhana</li></ul>',
  2, '2025-03-01 08:12:45+07', '2025-03-02 10:15:20+07'),
(2, 'File Sharing Samba',
  '<ul><li>Pelajari Samba</li><li>Instalasi dan konfigurasi</li><li>Membuat drive Z mahasiswa (kuota 200MB tiap user)</li><li>Membuat folder untuk grup tertentu</li><li>Membuat folder public</li><li>Testing akses Samba dari PC berbeda</li></ul>',
  3, '2025-03-03 09:21:10+07', '2025-03-04 11:45:33+07'),
(3, 'Reverse Proxy dengan Nginx',
  '<ul><li>Install dua VM menggunakan KVM/Proxmox/Openstack</li><li>Instalasi Nginx pada host OS</li><li>Instalasi Apache pada kedua VM</li><li>Membuat dua website sederhana</li><li>Konfigurasi reverse proxy Nginx dan DNS</li><li>Akses website menggunakan domain</li></ul>',
  4, '2025-03-05 13:05:44+07', '2025-03-06 14:22:18+07'),
(4, 'Active Directory (AD)',
  '<ul><li>Pelajari Windows Server</li><li>Instalasi Windows Server</li><li>Konfigurasi Forest</li><li>Konfigurasi Active Directory (AD)</li><li>Konfigurasi Profile</li><li>Konfigurasi Group Policy Objects (GPO)</li><li>Konfigurasi DNS</li><li>Konfigurasi NTP</li><li>Membuat dokumentasi</li></ul>',
  4, '2025-03-07 07:55:12+07', '2025-03-08 09:30:40+07'),
(5, 'DNS dan FTP',
  '<ul><li>Pelajari DNS dan FTP</li><li>Instalasi DNS dan FTP</li><li>Konfigurasi DNS dan FTP</li><li>Menjalankan DNS dan FTP</li><li>Testing FTP upload dan download</li><li>Testing akses FTP melalui domain</li></ul>',
  3, '2025-03-09 10:10:10+07', '2025-03-10 12:20:25+07'),
(6, 'Jaringan Mikrotik',
  '<ul><li>Reset router dan switch ke default configuration</li><li>Konfigurasi switch (IP, VLAN, port access & trunk)</li><li>Konfigurasi router (IP gateway)</li><li>Set semua IP static</li><li>Konfigurasi PC (IP dan gateway)</li><li>Testing koneksi jaringan menggunakan ping</li></ul>',
  4, '2025-03-11 08:40:55+07', '2025-03-12 11:11:11+07'),
(7, 'Server Monitoring dengan Cacti',
  '<ul><li>Install Apache Web Server</li><li>Konfigurasi firewall</li><li>Install Cacti</li><li>Membuat user monitoring</li><li>Konfigurasi server Cacti</li><li>Konfigurasi SNMP</li><li>Testing akses web Cacti</li><li>Membuat dashboard monitoring</li></ul>',
  4, '2025-03-13 14:00:00+07', '2025-03-14 16:25:30+07'),
(8, 'Microsoft SQL Server',
  '<ul><li>Pelajari Microsoft SQL Server</li><li>Instalasi SQL Server</li><li>Konfigurasi SQL Server</li><li>Import database AdventureWorks</li><li>Membuat beberapa user</li><li>Isolasi database per user</li><li>Membatasi delete database</li><li>Membuat script otomatis user dan database berdasarkan NPM</li></ul>',
  3, '2025-03-15 09:09:09+07', '2025-03-16 10:10:10+07'),
(9, 'Monitoring dengan Prometheus dan Grafana',
  '<ul><li>Install Prometheus</li><li>Membuat user monitoring</li><li>Konfigurasi server Prometheus</li><li>Menjadikan Prometheus sebagai service (systemd)</li><li>Install Grafana</li><li>Tambahkan Prometheus sebagai datasource</li><li>Membuat dashboard monitoring</li><li>Import dashboard dari komunitas</li><li>Konfigurasi node exporter</li><li>Monitoring di Grafana</li></ul>',
  4, '2025-03-17 07:30:45+07', '2025-03-18 08:45:50+07'),
(10, 'Docker dan Judge System',
  '<ul><li>Install Docker</li><li>Install MariaDB</li><li>Install PhpMyAdmin</li><li>Konfigurasi Reverse Proxy</li><li>Install Judge (semua fitur harus berjalan)</li></ul>',
  4, '2025-03-19 11:11:11+07', '2025-03-20 13:13:13+07'),
(11, 'Gitlab dengan Docker',
  '<ul><li>Install Docker</li><li>Install Gitlab Server dalam Docker</li><li>Membuat user (admin dan user)</li><li>Test create repository</li><li>Test clone, pull, push</li><li>Create runner CI/CD</li><li>Test CI/CD</li></ul>',
  4, '2025-03-21 15:20:10+07', '2025-03-22 17:30:25+07'),
(12, 'VPN Server dengan WireGuard',
  '<ul><li>Pelajari konsep VPN dan WireGuard</li><li>Instalasi WireGuard pada server Ubuntu/Debian</li><li>Generate public dan private key untuk server dan client</li><li>Konfigurasi interface server dan IP forwarding</li><li>Membuat file konfigurasi untuk peer (client)</li><li>Testing koneksi VPN dari client ke server (ping IP lokal)</li></ul>',
  3, '2025-03-23 09:00:00+07', '2025-03-24 10:00:00+07'),
(13, 'CI/CD Pipeline dengan Jenkins',
  '<ul><li>Pelajari konsep Continuous Integration & Deployment (CI/CD)</li><li>Instalasi Jenkins menggunakan Docker Container</li><li>Konfigurasi akses Docker dari dalam container Jenkins</li><li>Membuat Git repository sederhana berisi aplikasi web</li><li>Membuat Jenkinsfile untuk mendefinisikan tahapan pipeline</li><li>Testing otomatisasi build dan push Docker image ke registry lokal</li></ul>',
  4, '2025-03-25 10:30:15+07', '2025-03-26 12:45:20+07'),
(14, 'Load Balancing dengan HAProxy',
  '<ul><li>Pelajari konsep Load Balancing dan High Availability</li><li>Install dua VM sebagai backend server</li><li>Instalasi HAProxy pada node/VM utama</li><li>Konfigurasi backend dan frontend pada file haproxy.cfg</li><li>Setup algoritma Round Robin</li><li>Testing distribusi traffic web ke kedua backend server</li></ul>',
  4, '2025-03-27 13:15:00+07', '2025-03-28 15:20:10+07'),
(15, 'Centralized Logging dengan ELK Stack',
  '<ul><li>Pelajari arsitektur Elasticsearch, Logstash, dan Kibana</li><li>Instalasi ELK Stack menggunakan Docker Compose</li><li>Instalasi Filebeat pada target server (VM terpisah)</li><li>Konfigurasi Filebeat untuk mengirim log system/Nginx ke Logstash</li><li>Membuat index pattern pada dashboard Kibana</li><li>Membuat visualisasi dan monitoring log secara realtime di Kibana</li></ul>',
  4, '2025-03-29 08:45:30+07', '2025-03-30 09:55:40+07'),
(16, 'Container Orchestration dengan Docker Swarm',
  '<ul><li>Pelajari konsep Container Orchestration</li><li>Siapkan 3 VM Docker (1 Manager, 2 Worker)</li><li>Inisialisasi Docker Swarm pada node Manager</li><li>Join Worker node ke dalam kluster Swarm menggunakan token</li><li>Deploy service web server ke dalam kluster</li><li>Scale up replica menjadi 5 instance</li><li>Testing failover dengan mematikan salah satu node worker</li></ul>',
  4, '2025-03-31 11:10:00+07', '2025-04-01 13:25:35+07');

-- =============================================
-- 3. BATCH
-- =============================================
ALTER SEQUENCE "batch_id_batch_seq" RESTART WITH 1;
INSERT INTO "batch" ("id_batch", "nama_batch", "status", "tanggal_mulai", "tanggal_selesai", "createdAt", "updatedAt") VALUES
(1, 'Batch 2024',      false, '2024-02-01 00:00:00', '2024-08-31 23:59:59', '2024-01-15 08:00:00', '2024-09-01 00:00:00'),
(2, 'Batch 2025',      true,  '2025-02-01 00:00:00', '2025-08-31 23:59:59', '2025-01-15 08:00:00', '2025-02-01 00:00:00'),
(3, 'Batch 2026 Ganjil',false,'2026-02-01 00:00:00', '2026-08-31 23:59:59', '2026-01-20 08:00:00', '2026-01-20 08:00:00'),
(4, 'Batch 2026 Genap', false,'2026-09-01 00:00:00', '2027-02-28 23:59:59', '2026-04-10 08:00:00', '2026-04-10 08:00:00');

-- =============================================
-- 4. USERS
-- =============================================
ALTER SEQUENCE "users_id_user_seq" RESTART WITH 1;
INSERT INTO "users" ("id_user", "nama", "email", "google_id", "foto", "role", "nomor_identitas", "createdAt", "updatedAt") VALUES
(1,  'Steven Febrian',    '6182201084@student.unpar.ac.id', '7777777',             NULL, 'Kalab', 'https://lh3.googleusercontent.com/a/ACg8ocLXsoVyHIh48AXAZuhQHtAadDshe2aDnvF30M42egKeJzllGw=s96-c', '2024-01-05 07:00:00', '2024-01-05 07:00:00'),
(2,  'Siti Nurhaliza',    'siti.nurhaliza@lab.ac.id',       'google_100000000002', NULL, 'Admin',       '197502152000032001', '2024-01-05 07:05:00', '2024-01-05 07:05:00'),
(3,  'Ahmad Dahlan',      'ahmad.dahlan@lab.ac.id',         'google_100000000003', NULL, 'Admin',       '198003202005011002', '2024-01-05 07:10:00', '2024-01-05 07:10:00'),
(4,  'Joko Prasetyo',     'joko.prasetyo@lab.ac.id',        'google_100000000004', NULL, 'Admin',       '198506102010121003', '2024-01-05 07:15:00', '2024-01-05 07:15:00'),
(5,  'Dewi Lestari',      'dewi.lestari@lab.ac.id',         'google_100000000005', NULL, 'Admin',       '198811252015042004', '2024-01-05 07:20:00', '2024-01-05 07:20:00'),
(6,  'Rizky Pratama',     'rizky.pratama@student.ac.id',    'google_100000000006', NULL, 'Peserta',     '18223001', '2024-01-20 09:00:00', '2024-01-20 09:00:00'),
(7,  'Aisyah Putri',      'aisyah.putri@student.ac.id',     'google_100000000007', NULL, 'Peserta',     '18223002', '2024-01-20 09:05:00', '2024-01-20 09:05:00'),
(8,  'Bambang Sutrisno',  'bambang.sutrisno@student.ac.id', 'google_100000000008', NULL, 'Peserta',     '18223003', '2024-01-20 09:10:00', '2024-01-20 09:10:00'),
(9,  'Citra Dewi',        'citra.dewi@student.ac.id',       'google_100000000009', NULL, 'Peserta',     '18223004', '2024-01-20 09:15:00', '2024-01-20 09:15:00'),
(10, 'Dian Wijaya',       'dian.wijaya@student.ac.id',      'google_100000000010', NULL, 'Peserta',     '18223005', '2024-01-20 09:20:00', '2024-01-20 09:20:00'),
(11, 'Eka Saputra',       'eka.saputra@student.ac.id',      'google_100000000011', NULL, 'Peserta',     '18223006', '2024-01-20 09:25:00', '2024-01-20 09:25:00'),
(12, 'Fitri Handayani',   'fitri.handayani@student.ac.id',  'google_100000000012', NULL, 'Peserta',     '18223007', '2024-01-20 09:30:00', '2024-01-20 09:30:00'),
(13, 'Galih Ramadhan',    'galih.ramadhan@student.ac.id',   'google_100000000013', NULL, 'Peserta',     '18224001', '2025-01-18 09:00:00', '2025-01-18 09:00:00'),
(14, 'Hana Permata',      'hana.permata@student.ac.id',     'google_100000000014', NULL, 'Peserta',     '18224002', '2025-01-18 09:05:00', '2025-01-18 09:05:00'),
(15, 'Indra Maulana',     'indra.maulana@student.ac.id',    'google_100000000015', NULL, 'Peserta',     '18224003', '2025-01-18 09:10:00', '2025-01-18 09:10:00'),
(16, 'Jihan Safira',      'jihan.safira@student.ac.id',     'google_100000000016', NULL, 'Peserta',     '18224004', '2025-01-18 09:15:00', '2025-01-18 09:15:00'),
(17, 'Krisna Aditya',     'krisna.aditya@student.ac.id',    'google_100000000017', NULL, 'Peserta',     '18224005', '2025-01-18 09:20:00', '2025-01-18 09:20:00'),
(18, 'Lia Anggraini',     'lia.anggraini@student.ac.id',    'google_100000000018', NULL, 'Peserta',     '18224006', '2025-01-18 09:25:00', '2025-01-18 09:25:00'),
(19, 'Mochamad Rizal',    'mochamad.rizal@student.ac.id',   'google_100000000019', NULL, 'Peserta',     '18224007', '2025-01-18 09:30:00', '2025-01-18 09:30:00'),
(20, 'Nadia Khairunnisa', 'nadia.khairunnisa@student.ac.id','google_100000000020', NULL, 'Peserta',     '18224008', '2025-01-18 09:35:00', '2025-01-18 09:35:00');

-- =============================================
-- 5. KELOMPOK
-- =============================================
ALTER SEQUENCE "kelompok_id_kelompok_seq" RESTART WITH 1;
INSERT INTO "kelompok" ("id_kelompok", "nama_kelompok", "id_batch", "createdAt", "updatedAt") VALUES
(1, 'Kelompok A - Infrastruktur',       1, '2024-02-05 08:00:00', '2024-02-05 08:00:00'),
(2, 'Kelompok B - Keamanan',            1, '2024-02-05 08:10:00', '2024-02-05 08:10:00'),
(3, 'Kelompok Alpha - Networking',      2, '2025-02-05 08:00:00', '2025-02-05 08:00:00'),
(4, 'Kelompok Beta - Server Management',2, '2025-02-05 08:10:00', '2025-02-05 08:10:00');

-- =============================================
-- 6. PESERTA
-- =============================================
ALTER SEQUENCE "peserta_id_peserta_seq" RESTART WITH 1;
INSERT INTO "peserta" ("id_peserta", "id_user", "id_batch", "id_kelompok", "status", "tanggal_daftar", "createdAt", "updatedAt") VALUES
(1,  6,  1, 1,    'Seleksi Berkas', '2024-01-22 10:00:00', '2024-01-22 10:00:00', '2024-09-01 00:00:00'),
(2,  7,  1, 1,    'Seleksi Berkas', '2024-01-22 10:05:00', '2024-01-22 10:05:00', '2024-09-01 00:00:00'),
(3,  8,  1, 1,    'Seleksi Berkas', '2024-01-22 10:10:00', '2024-01-22 10:10:00', '2024-09-01 00:00:00'),
(4,  9,  1, 2,    'Seleksi Berkas', '2024-01-22 10:15:00', '2024-01-22 10:15:00', '2024-09-01 00:00:00'),
(5,  10, 1, 2,    'Seleksi Berkas', '2024-01-22 10:20:00', '2024-01-22 10:20:00', '2024-09-01 00:00:00'),
(6,  11, 1, 2,    'Seleksi Berkas', '2024-01-22 10:25:00', '2024-01-22 10:25:00', '2024-05-10 00:00:00'),
(7,  12, 1, NULL, 'Seleksi Berkas', '2024-01-22 10:30:00', '2024-01-22 10:30:00', '2024-09-01 00:00:00'),
(8,  13, 2, 3,    'Seleksi Berkas', '2025-01-20 10:00:00', '2025-01-20 10:00:00', '2025-02-01 00:00:00'),
(9,  14, 2, 3,    'Seleksi Berkas', '2025-01-20 10:05:00', '2025-01-20 10:05:00', '2025-02-01 00:00:00'),
(10, 15, 2, 3,    'Seleksi Berkas', '2025-01-20 10:10:00', '2025-01-20 10:10:00', '2025-02-01 00:00:00'),
(11, 16, 2, 4,    'Seleksi Berkas', '2025-01-20 10:15:00', '2025-01-20 10:15:00', '2025-02-01 00:00:00'),
(12, 17, 2, 4,    'Seleksi Berkas', '2025-01-20 10:20:00', '2025-01-20 10:20:00', '2025-02-01 00:00:00'),
(13, 18, 2, 4,    'Seleksi Berkas', '2025-01-20 10:25:00', '2025-01-20 10:25:00', '2025-02-01 00:00:00'),
(14, 19, 2, NULL, 'Seleksi Berkas', '2025-01-20 10:30:00', '2025-01-20 10:30:00', '2025-02-01 00:00:00'),
(15, 20, 2, NULL, 'Seleksi Berkas', '2025-01-20 10:35:00', '2025-01-20 10:35:00', '2025-04-15 00:00:00');

-- =============================================
-- 7. PENGUMUMAN
-- =============================================
ALTER SEQUENCE "pengumuman_id_pengumuman_seq" RESTART WITH 1;
INSERT INTO "pengumuman" ("id_pengumuman", "judul", "isi", "tanggal_pengumuman", "id_batch", "id_user", "is_broadcast", "createdAt", "updatedAt") VALUES
(1, 'Pembukaan Asistensi Batch 2024',     '<p>Selamat datang para asisten Batch 2024. Asistensi resmi dimulai tanggal 1 Februari 2024.</p>',         '2024-02-01 08:00:00', 1, 2, true,  '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(2, 'Jadwal Minggu Pertama Batch 2024',   '<p>Minggu pertama fokus pada instalasi dasar dan pengenalan lingkungan Linux.</p>',                        '2024-02-05 07:30:00', 1, 2, true,  '2024-02-05 07:30:00', '2024-02-05 07:30:00'),
(3, 'Reminder Pengumpulan Laporan Khusus','<p>Bagi peserta yang namanya tercantum, mohon segera kumpulkan laporan susulan.</p>',                      '2024-05-10 09:00:00', 1, 4, false, '2024-05-10 09:00:00', '2024-05-10 09:00:00'),
(4, 'Pembukaan Asistensi Batch 2025',     '<p>Selamat datang di Batch 2025. Silakan cek jadwal asistensi di portal masing-masing.</p>',               '2025-02-01 08:00:00', 2, 3, true,  '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(5, 'Pembagian Kelompok Batch 2025',      '<p>Pembagian kelompok telah dilakukan. Cek halaman profil untuk melihat kelompok Anda.</p>',               '2025-02-06 10:00:00', 2, 3, true,  '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(6, 'Deadline Laporan Akhir Batch 2025',  '<p>Deadline pengumpulan laporan akhir adalah 25 Agustus 2025 pukul 23.59 WIB.</p>',                       '2025-07-20 08:00:00', 2, 5, true,  '2025-07-20 08:00:00', '2025-07-20 08:00:00');

-- =============================================
-- 8. PENERIMA PENGUMUMAN
-- =============================================
ALTER SEQUENCE "penerima_pengumuman_id_penerima_pengumuman_seq" RESTART WITH 1;
INSERT INTO "penerima_pengumuman" ("id_penerima_pengumuman", "id_pengumuman", "id_user", "createdAt", "updatedAt") VALUES
(1,  1, 6,  '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(2,  1, 7,  '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(3,  1, 8,  '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(4,  1, 9,  '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(5,  1, 10, '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(6,  1, 11, '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(7,  1, 12, '2024-02-01 08:00:00', '2024-02-01 08:00:00'),
(8,  2, 6,  '2024-02-05 07:30:00', '2024-02-05 07:30:00'),
(9,  2, 7,  '2024-02-05 07:30:00', '2024-02-05 07:30:00'),
(10, 2, 8,  '2024-02-05 07:30:00', '2024-02-05 07:30:00'),
(11, 2, 9,  '2024-02-05 07:30:00', '2024-02-05 07:30:00'),
(12, 2, 10, '2024-02-05 07:30:00', '2024-02-05 07:30:00'),
(13, 2, 11, '2024-02-05 07:30:00', '2024-02-05 07:30:00'),
(14, 2, 12, '2024-02-05 07:30:00', '2024-02-05 07:30:00'),
(15, 3, 11, '2024-05-10 09:00:00', '2024-05-10 09:00:00'),
(16, 3, 9,  '2024-05-10 09:00:00', '2024-05-10 09:00:00'),
(17, 3, 10, '2024-05-10 09:00:00', '2024-05-10 09:00:00'),
(18, 4, 13, '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(19, 4, 14, '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(20, 4, 15, '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(21, 4, 16, '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(22, 4, 17, '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(23, 4, 18, '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(24, 4, 19, '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(25, 4, 20, '2025-02-01 08:00:00', '2025-02-01 08:00:00'),
(26, 5, 13, '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(27, 5, 14, '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(28, 5, 15, '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(29, 5, 16, '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(30, 5, 17, '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(31, 5, 18, '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(32, 5, 19, '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(33, 5, 20, '2025-02-06 10:00:00', '2025-02-06 10:00:00'),
(34, 6, 13, '2025-07-20 08:00:00', '2025-07-20 08:00:00'),
(35, 6, 14, '2025-07-20 08:00:00', '2025-07-20 08:00:00'),
(36, 6, 15, '2025-07-20 08:00:00', '2025-07-20 08:00:00'),
(37, 6, 16, '2025-07-20 08:00:00', '2025-07-20 08:00:00'),
(38, 6, 17, '2025-07-20 08:00:00', '2025-07-20 08:00:00'),
(39, 6, 18, '2025-07-20 08:00:00', '2025-07-20 08:00:00'),
(40, 6, 19, '2025-07-20 08:00:00', '2025-07-20 08:00:00'),
(41, 6, 20, '2025-07-20 08:00:00', '2025-07-20 08:00:00');

-- =============================================
-- 9. KOMENTAR PENGUMUMAN
-- =============================================
ALTER SEQUENCE "komentar_pengumuman_id_komentar_pengumuman_seq" RESTART WITH 1;
INSERT INTO "komentar_pengumuman" ("id_komentar_pengumuman", "id_pengumuman", "id_user", "isi_komentar", "createdAt", "updatedAt") VALUES
(1,  1, 6,  'Terima kasih Bu Siti, siap mengikuti asistensi.',                                                   '2024-02-01 09:15:00', '2024-02-01 09:15:00'),
(2,  1, 7,  'Baik, apakah ada pre-reading yang harus disiapkan?',                                                '2024-02-01 10:20:00', '2024-02-01 10:20:00'),
(3,  1, 2,  'Silakan cek modul minggu pertama di Google Drive lab.',                                              '2024-02-01 11:00:00', '2024-02-01 11:00:00'),
(4,  2, 8,  'Apakah sesi daring atau luring ya?',                                                                '2024-02-05 08:00:00', '2024-02-05 08:00:00'),
(5,  2, 2,  'Hybrid. Detail ruangan menyusul di grup WA.',                                                       '2024-02-05 08:30:00', '2024-02-05 08:30:00'),
(6,  4, 13, 'Siap Pak Ahmad, terima kasih atas arahannya.',                                                      '2025-02-01 09:00:00', '2025-02-01 09:00:00'),
(7,  5, 14, 'Apakah susunan kelompok bisa diubah?',                                                              '2025-02-06 11:00:00', '2025-02-06 11:00:00'),
(8,  5, 3,  'Tidak bisa diubah kecuali ada alasan khusus. Silakan hubungi saya langsung.',                       '2025-02-06 11:30:00', '2025-02-06 11:30:00'),
(9,  6, 16, 'Apakah template laporan akhir sudah bisa diakses?',                                                 '2025-07-20 10:00:00', '2025-07-20 10:00:00'),
(10, 6, 5,  'Template sudah diupload di menu dokumen batch.',                                                    '2025-07-20 10:45:00', '2025-07-20 10:45:00');

-- =============================================
-- 10. KEHADIRAN
-- =============================================
ALTER SEQUENCE "kehadiran_id_kehadiran_seq" RESTART WITH 1;
INSERT INTO "kehadiran" ("id_kehadiran", "id_peserta", "laporan", "is_verified", "jam_datang", "jam_pulang", "createdAt", "updatedAt") VALUES
(1,  1,  'Hari ini mempelajari dasar instalasi Ubuntu 22.04 pada VirtualBox.',             true,  '2024-02-05 08:00:00', '2024-02-05 12:00:00', '2024-02-05 12:00:00', '2024-02-05 14:00:00'),
(2,  1,  'Melanjutkan konfigurasi partisi dan instalasi OpenSSH server.',                  true,  '2024-02-12 08:05:00', '2024-02-12 12:10:00', '2024-02-12 12:10:00', '2024-02-12 14:00:00'),
(3,  2,  'Mengikuti sesi pengenalan command line dan file system hierarchy Linux.',        true,  '2024-02-05 08:02:00', '2024-02-05 12:00:00', '2024-02-05 12:00:00', '2024-02-05 14:00:00'),
(4,  2,  'Praktik konfigurasi user dan permission file.',                                  true,  '2024-02-12 08:00:00', '2024-02-12 12:00:00', '2024-02-12 12:00:00', '2024-02-12 14:00:00'),
(5,  3,  'Mempelajari dasar networking dan konfigurasi IP statis.',                        true,  '2024-02-05 08:10:00', '2024-02-05 12:05:00', '2024-02-05 12:05:00', '2024-02-05 14:00:00'),
(6,  3,  'Konfigurasi SSH key-based authentication antar VM.',                             true,  '2024-02-12 08:00:00', '2024-02-12 12:00:00', '2024-02-12 12:00:00', '2024-02-12 14:00:00'),
(7,  4,  'Memahami konsep DNS dan instalasi BIND9.',                                       true,  '2024-02-19 08:00:00', '2024-02-19 12:00:00', '2024-02-19 12:00:00', '2024-02-19 14:00:00'),
(8,  4,  'Praktik konfigurasi forward dan reverse zone DNS.',                              true,  '2024-02-26 08:00:00', '2024-02-26 12:00:00', '2024-02-26 12:00:00', '2024-02-26 14:00:00'),
(9,  5,  'Mempelajari dasar web server Nginx.',                                            true,  '2024-02-19 08:05:00', '2024-02-19 12:00:00', '2024-02-19 12:00:00', '2024-02-19 14:00:00'),
(10, 5,  'Setup virtual host dan reverse proxy Nginx.',                                    true,  '2024-02-26 08:00:00', '2024-02-26 12:00:00', '2024-02-26 12:00:00', '2024-02-26 14:00:00'),
(11, 6,  'Pengenalan Linux dasar dan file system.',                                        false, '2024-02-05 08:30:00', '2024-02-05 11:00:00', '2024-02-05 11:00:00', '2024-02-05 11:00:00'),
(12, 7,  'Memahami konsep virtualisasi dan VirtualBox.',                                   true,  '2024-02-05 08:00:00', '2024-02-05 12:00:00', '2024-02-05 12:00:00', '2024-02-05 14:00:00'),
(13, 7,  'Melanjutkan praktik instalasi dan konfigurasi awal.',                            true,  '2024-02-12 08:00:00', '2024-02-12 12:00:00', '2024-02-12 12:00:00', '2024-02-12 14:00:00'),
(14, 8,  'Pengenalan lab dan tools yang digunakan selama asistensi.',                      true,  '2025-02-10 08:00:00', '2025-02-10 12:00:00', '2025-02-10 12:00:00', '2025-02-10 14:00:00'),
(15, 8,  'Praktik instalasi Ubuntu 22.04 dan konfigurasi awal.',                          true,  '2025-02-17 08:00:00', '2025-02-17 12:05:00', '2025-02-17 12:05:00', '2025-02-17 14:00:00'),
(16, 8,  'Konfigurasi DNS Server dengan BIND9.',                                           true,  '2025-03-03 08:00:00', '2025-03-03 12:00:00', '2025-03-03 12:00:00', '2025-03-03 14:00:00'),
(17, 9,  'Pengenalan lab dan tools yang digunakan.',                                       true,  '2025-02-10 08:05:00', '2025-02-10 12:00:00', '2025-02-10 12:00:00', '2025-02-10 14:00:00'),
(18, 9,  'Praktik dasar command line Linux.',                                              true,  '2025-02-17 08:00:00', '2025-02-17 12:00:00', '2025-02-17 12:00:00', '2025-02-17 14:00:00'),
(19, 10, 'Instalasi Ubuntu Server pada VM.',                                               true,  '2025-02-10 08:00:00', '2025-02-10 12:00:00', '2025-02-10 12:00:00', '2025-02-10 14:00:00'),
(20, 10, 'Konfigurasi jaringan dan SSH.',                                                  true,  '2025-02-17 08:00:00', '2025-02-17 12:00:00', '2025-02-17 12:00:00', '2025-02-17 14:00:00'),
(21, 11, 'Mengikuti sesi instalasi dan setup awal.',                                       true,  '2025-02-10 08:00:00', '2025-02-10 12:00:00', '2025-02-10 12:00:00', '2025-02-10 14:00:00'),
(22, 11, 'Praktik konfigurasi DHCP server.',                                               false, '2025-02-17 08:30:00', '2025-02-17 11:00:00', '2025-02-17 11:00:00', '2025-02-17 11:00:00'),
(23, 12, 'Mengikuti sesi pengenalan lab.',                                                 true,  '2025-02-10 08:00:00', '2025-02-10 12:00:00', '2025-02-10 12:00:00', '2025-02-10 14:00:00'),
(24, 12, 'Praktik konfigurasi Nginx sebagai web server.',                                  true,  '2025-02-17 08:00:00', '2025-02-17 12:00:00', '2025-02-17 12:00:00', '2025-02-17 14:00:00'),
(25, 13, 'Pengenalan jaringan dan Linux dasar.',                                           true,  '2025-02-10 08:00:00', '2025-02-10 12:00:00', '2025-02-10 12:00:00', '2025-02-10 14:00:00'),
(26, 14, 'Pengenalan lingkungan lab.',                                                     true,  '2025-02-10 08:00:00', '2025-02-10 12:00:00', '2025-02-10 12:00:00', '2025-02-10 14:00:00'),
(27, 14, 'Praktik instalasi Debian 12.',                                                   true,  '2025-02-17 08:00:00', '2025-02-17 12:00:00', '2025-02-17 12:00:00', '2025-02-17 14:00:00');

-- =============================================
-- 11. PENUGASAN
-- =============================================
ALTER SEQUENCE "penugasan_id_penugasan_seq" RESTART WITH 1;
INSERT INTO "penugasan" ("id_penugasan", "id_peserta", "id_soal", "id_so", "id_user", "id_kelompok", "status", "tanggal_beri", "tanggal_kumpul", "file_pengumpulan", "createdAt", "updatedAt") VALUES
(1,  1,    1, 1, 2, NULL, 'Menunggu Verifikasi', '2024-02-10 08:00:00', '2024-02-17 22:45:00', '/uploads/peserta/1/tugas/laporan_instalasi_rizky.pdf',        '2024-02-10 08:00:00', '2024-02-18 09:00:00'),
(2,  2,    2, 2, 2, NULL, 'Menunggu Verifikasi', '2024-02-10 08:00:00', '2024-02-17 20:30:00', '/uploads/peserta/2/tugas/laporan_samba_aisyah.pdf',           '2024-02-10 08:00:00', '2024-02-18 09:00:00'),
(3,  3,    3, 1, 4, NULL, 'Menunggu Verifikasi', '2024-02-24 08:00:00', '2024-03-02 21:15:00', '/uploads/peserta/3/tugas/laporan_nginx_bambang.pdf',          '2024-02-24 08:00:00', '2024-03-03 09:00:00'),
(4,  4,    1, 3, 4, NULL, 'Menunggu Verifikasi', '2024-02-24 08:00:00', '2024-03-02 19:45:00', '/uploads/peserta/4/tugas/laporan_lamp_citra.pdf',             '2024-02-24 08:00:00', '2024-03-03 09:00:00'),
(5,  6,    2, 2, 4, NULL, 'Menunggu Verifikasi', '2024-02-24 08:00:00', '2024-03-10 23:55:00', '/uploads/peserta/6/tugas/laporan_samba_eka.pdf',              '2024-02-24 08:00:00', '2024-03-11 09:00:00'),
(6,  NULL, 4, 2, 2, 1,    'Menunggu Verifikasi', '2024-03-15 08:00:00', '2024-04-05 22:00:00', '/uploads/kelompok/1/tugas/laporan_ad_kelompok_a.pdf',         '2024-03-15 08:00:00', '2024-04-06 09:00:00'),
(7,  NULL, 5, 5, 2, 2,    'Menunggu Verifikasi', '2024-03-15 08:00:00', '2024-04-05 21:30:00', '/uploads/kelompok/2/tugas/laporan_dnsftp_kelompok_b.pdf',     '2024-03-15 08:00:00', '2024-04-06 09:00:00'),
(8,  8,    1, 1, 3, NULL, 'Menunggu Verifikasi', '2025-02-20 08:00:00', '2025-02-27 20:00:00', '/uploads/peserta/8/tugas/laporan_lamp_galih.pdf',             '2025-02-20 08:00:00', '2025-02-28 09:00:00'),
(9,  9,    2, 2, 3, NULL, 'Menunggu Verifikasi', '2025-02-20 08:00:00', '2025-02-27 22:00:00', '/uploads/peserta/9/tugas/laporan_samba_hana.pdf',             '2025-02-20 08:00:00', '2025-02-28 09:00:00'),
(10, 10,   3, 3, 3, NULL, 'Menunggu Verifikasi', '2025-03-10 08:00:00', '2025-03-17 23:00:00', '/uploads/peserta/10/tugas/laporan_nginx_indra.pdf',           '2025-03-10 08:00:00', '2025-03-17 23:00:00'),
(11, 11,   1, 4, 5, NULL, 'Menunggu Verifikasi', '2025-03-10 08:00:00', '2025-03-17 22:45:00', '/uploads/peserta/11/tugas/laporan_lamp_jihan.pdf',            '2025-03-10 08:00:00', '2025-03-17 22:45:00'),
(12, 12,   2, 5, 5, NULL, 'Menunggu Verifikasi', '2025-03-10 08:00:00', '2025-03-17 21:15:00', '/uploads/peserta/12/tugas/laporan_samba_krisna.pdf',          '2025-03-10 08:00:00', '2025-03-17 21:15:00'),
(13, NULL, 6, 1, 3, 3,    'Menunggu Verifikasi', '2025-04-01 08:00:00', '2025-04-22 23:00:00', '/uploads/kelompok/3/tugas/laporan_mikrotik_alpha.pdf',        '2025-04-01 08:00:00', '2025-04-22 23:00:00'),
(14, NULL, 5, 2, 3, 4,    'Belum Selesai',           '2025-04-01 08:00:00',  NULL,                  NULL,                                                          '2025-04-01 08:00:00', '2025-04-01 08:00:00');

-- =============================================
-- 12. KOMENTAR TUGAS
-- =============================================
ALTER SEQUENCE "komentar_tugas_id_komentar_tugas_seq" RESTART WITH 1;
INSERT INTO "komentar_tugas" ("id_komentar_tugas", "id_penugasan", "id_user", "isi_komentar", "createdAt", "updatedAt") VALUES
(1,  1,  2, 'Laporan sudah bagus. Tambahkan screenshot partisi agar lebih lengkap di revisi berikutnya.',    '2024-02-18 09:30:00', '2024-02-18 09:30:00'),
(2,  1,  6, 'Siap Bu, akan saya perbaiki untuk portofolio.',                                                 '2024-02-18 10:00:00', '2024-02-18 10:00:00'),
(3,  3,  4, 'Konfigurasi virtual host-nya sudah tepat, tetapi SSL belum menggunakan sertifikat yang valid.', '2024-03-03 10:00:00', '2024-03-03 10:00:00'),
(4,  5,  4, 'Pengumpulan terlambat 1 minggu, nilai dikurangi sesuai aturan.',                                '2024-03-11 10:00:00', '2024-03-11 10:00:00'),
(5,  6,  2, 'Dokumentasi Active Directory sangat rapi, pembagian tugas antar anggota jelas.',               '2024-04-06 09:30:00', '2024-04-06 09:30:00'),
(6,  7,  2, 'Konfigurasi DNS dan FTP berhasil, testing sudah dilampirkan dengan baik.',                     '2024-04-06 09:45:00', '2024-04-06 09:45:00'),
(7,  8,  3, 'Instalasi LAMP sudah tepat dan disertai troubleshooting yang baik.',                            '2025-02-28 10:00:00', '2025-02-28 10:00:00'),
(8,  9,  3, 'Konfigurasi Samba berhasil, testing dari client sudah dilampirkan.',                            '2025-02-28 10:15:00', '2025-02-28 10:15:00'),
(9,  10, 3, 'Laporan diterima, akan direview minggu ini.',                                                   '2025-03-18 09:00:00', '2025-03-18 09:00:00'),
(10, 13, 3, 'Topologi Mikrotik sudah baik, tunggu penilaian lengkap minggu depan.',                         '2025-04-23 09:00:00', '2025-04-23 09:00:00');

-- =============================================
-- 13. DOKUMEN
-- =============================================
ALTER SEQUENCE "dokumen_id_dokumen_seq" RESTART WITH 1;
INSERT INTO "dokumen" ("id_dokumen", "id_peserta", "ktm", "transkrip", "cv", "foto", "motivation_letter", "createdAt", "updatedAt") VALUES
(1,  1,  '/uploads/peserta/1/dokumen/ktm_rizky.pdf',   '/uploads/peserta/1/dokumen/transkrip_rizky.pdf',   '/uploads/peserta/1/dokumen/cv_rizky.pdf',   '/uploads/peserta/1/dokumen/foto_rizky.jpg',   '/uploads/peserta/1/dokumen/ml_rizky.pdf',   '2024-01-23 10:00:00', '2024-01-23 10:00:00'),
(2,  2,  '/uploads/peserta/2/dokumen/ktm_aisyah.pdf',  '/uploads/peserta/2/dokumen/transkrip_aisyah.pdf',  '/uploads/peserta/2/dokumen/cv_aisyah.pdf',  '/uploads/peserta/2/dokumen/foto_aisyah.jpg',  '/uploads/peserta/2/dokumen/ml_aisyah.pdf',  '2024-01-23 10:15:00', '2024-01-23 10:15:00'),
(3,  3,  '/uploads/peserta/3/dokumen/ktm_bambang.pdf', '/uploads/peserta/3/dokumen/transkrip_bambang.pdf', '/uploads/peserta/3/dokumen/cv_bambang.pdf', '/uploads/peserta/3/dokumen/foto_bambang.jpg', '/uploads/peserta/3/dokumen/ml_bambang.pdf', '2024-01-23 10:30:00', '2024-01-23 10:30:00'),
(4,  4,  '/uploads/peserta/4/dokumen/ktm_citra.pdf',   '/uploads/peserta/4/dokumen/transkrip_citra.pdf',   '/uploads/peserta/4/dokumen/cv_citra.pdf',   '/uploads/peserta/4/dokumen/foto_citra.jpg',   '/uploads/peserta/4/dokumen/ml_citra.pdf',   '2024-01-23 10:45:00', '2024-01-23 10:45:00'),
(5,  5,  '/uploads/peserta/5/dokumen/ktm_dian.pdf',    '/uploads/peserta/5/dokumen/transkrip_dian.pdf',    '/uploads/peserta/5/dokumen/cv_dian.pdf',    '/uploads/peserta/5/dokumen/foto_dian.jpg',    '/uploads/peserta/5/dokumen/ml_dian.pdf',    '2024-01-23 11:00:00', '2024-01-23 11:00:00'),
(6,  7,  '/uploads/peserta/7/dokumen/ktm_fitri.pdf',   '/uploads/peserta/7/dokumen/transkrip_fitri.pdf',   '/uploads/peserta/7/dokumen/cv_fitri.pdf',   '/uploads/peserta/7/dokumen/foto_fitri.jpg',   '/uploads/peserta/7/dokumen/ml_fitri.pdf',   '2024-01-23 11:15:00', '2024-01-23 11:15:00'),
(7,  8,  '/uploads/peserta/8/dokumen/ktm_galih.pdf',   '/uploads/peserta/8/dokumen/transkrip_galih.pdf',   '/uploads/peserta/8/dokumen/cv_galih.pdf',   '/uploads/peserta/8/dokumen/foto_galih.jpg',   '/uploads/peserta/8/dokumen/ml_galih.pdf',   '2025-01-21 10:00:00', '2025-01-21 10:00:00'),
(8,  9,  '/uploads/peserta/9/dokumen/ktm_hana.pdf',    '/uploads/peserta/9/dokumen/transkrip_hana.pdf',    '/uploads/peserta/9/dokumen/cv_hana.pdf',    '/uploads/peserta/9/dokumen/foto_hana.jpg',    '/uploads/peserta/9/dokumen/ml_hana.pdf',    '2025-01-21 10:15:00', '2025-01-21 10:15:00'),
(9,  10, '/uploads/peserta/10/dokumen/ktm_indra.pdf',  '/uploads/peserta/10/dokumen/transkrip_indra.pdf',  '/uploads/peserta/10/dokumen/cv_indra.pdf',  '/uploads/peserta/10/dokumen/foto_indra.jpg',  '/uploads/peserta/10/dokumen/ml_indra.pdf',  '2025-01-21 10:30:00', '2025-01-21 10:30:00'),
(10, 11, '/uploads/peserta/11/dokumen/ktm_jihan.pdf',  '/uploads/peserta/11/dokumen/transkrip_jihan.pdf',  '/uploads/peserta/11/dokumen/cv_jihan.pdf',  '/uploads/peserta/11/dokumen/foto_jihan.jpg',  '/uploads/peserta/11/dokumen/ml_jihan.pdf',  '2025-01-21 10:45:00', '2025-01-21 10:45:00'),
(11, 12, '/uploads/peserta/12/dokumen/ktm_krisna.pdf', '/uploads/peserta/12/dokumen/transkrip_krisna.pdf', '/uploads/peserta/12/dokumen/cv_krisna.pdf', '/uploads/peserta/12/dokumen/foto_krisna.jpg', '/uploads/peserta/12/dokumen/ml_krisna.pdf', '2025-01-21 11:00:00', '2025-01-21 11:00:00'),
(12, 13, '/uploads/peserta/13/dokumen/ktm_lia.pdf',    '/uploads/peserta/13/dokumen/transkrip_lia.pdf',    '/uploads/peserta/13/dokumen/cv_lia.pdf',    '/uploads/peserta/13/dokumen/foto_lia.jpg',    '/uploads/peserta/13/dokumen/ml_lia.pdf',    '2025-01-21 11:15:00', '2025-01-21 11:15:00'),
(13, 14, '/uploads/peserta/14/dokumen/ktm_rizal.pdf',  '/uploads/peserta/14/dokumen/transkrip_rizal.pdf',  '/uploads/peserta/14/dokumen/cv_rizal.pdf',  '/uploads/peserta/14/dokumen/foto_rizal.jpg',  '/uploads/peserta/14/dokumen/ml_rizal.pdf',  '2025-01-21 11:30:00', '2025-01-21 11:30:00');

-- =============================================
-- 14. LOG
-- =============================================
ALTER SEQUENCE "log_id_log_seq" RESTART WITH 1;
INSERT INTO "log" ("id_log", "id_user", "aksi", "entitas", "id_entitas", "deskripsi", "createdAt") VALUES
(1,  2, 'CREATE', 'Batch',              1,  'Membuat batch baru: Batch 2024',                                     '2024-01-15 08:00:00'),
(2,  2, 'CREATE', 'Pengumuman',         1,  'Membuat pengumuman: Pembukaan Asistensi Batch 2024',                 '2024-02-01 08:00:00'),
(3,  4, 'CREATE', 'Penugasan',          1,  'Memberikan penugasan LAMP Stack kepada peserta Rizky Pratama',      '2024-02-10 08:00:00'),
(4,  2, 'CREATE', 'Kelompok',           1,  'Membuat kelompok baru: Kelompok A - Infrastruktur',                 '2024-02-05 08:00:00'),
(5,  2, 'UPLOAD', 'Penugasan',          6,  'Mengunggah file penugasan Active Directory kelompok A',             '2024-04-05 22:00:00'),
(6,  4, 'UPDATE', 'Penugasan',          1,  'Memperbarui status penugasan menjadi Menunggu Verifikasi',          '2024-02-18 09:00:00'),
(7,  3, 'CREATE', 'Batch',              2,  'Membuat batch baru: Batch 2025',                                     '2025-01-15 08:00:00'),
(8,  3, 'CREATE', 'Pengumuman',         4,  'Membuat pengumuman: Pembukaan Asistensi Batch 2025',                '2025-02-01 08:00:00'),
(9,  3, 'CREATE', 'Kelompok',           3,  'Membuat kelompok baru: Kelompok Alpha - Networking',                '2025-02-05 08:00:00'),
(10, 5, 'CREATE', 'Penugasan',          10, 'Memberikan penugasan Nginx kepada peserta Indra Maulana',           '2025-03-10 08:00:00'),
(11, 5, 'UPLOAD', 'Penugasan',          10, 'Mengunggah file pengumpulan laporan Nginx',                         '2025-03-17 23:00:00'),
(12, 3, 'UPDATE', 'Peserta',            15, 'Memperbarui status peserta Nadia menjadi Nonaktif',                 '2025-04-15 00:00:00'),
(13, 1, 'CREATE', 'User',              20,  'Menambahkan user baru: Nadia Khairunnisa',                          '2025-01-18 09:35:00'),
(14, 1, 'CREATE', 'Batch',              3,  'Membuat batch baru: Batch 2026 Ganjil',                             '2026-01-20 08:00:00'),
(15, 1, 'CREATE', 'Batch',              4,  'Membuat batch baru: Batch 2026 Genap',                              '2026-04-10 08:00:00'),
(16, 3, 'DELETE', 'KomentarPengumuman', 11, 'Menghapus komentar tidak relevan',                                  '2025-03-01 14:30:00'),
(17, 2, 'UPDATE', 'Batch',              1,  'Menonaktifkan Batch 2024 setelah selesai',                          '2024-09-01 00:00:00');

-- =============================================
-- 15. RESET SEQUENCE
-- =============================================
SELECT setval('"sistem_operasi_id_so_seq"',                       (SELECT MAX("id_so")                   FROM "sistem_operasi"));
SELECT setval('"soal_id_soal_seq"',                               (SELECT MAX("id_soal")                 FROM "soal"));
SELECT setval('"batch_id_batch_seq"',                             (SELECT MAX("id_batch")                FROM "batch"));
SELECT setval('"users_id_user_seq"',                              (SELECT MAX("id_user")                 FROM "users"));
SELECT setval('"kelompok_id_kelompok_seq"',                       (SELECT MAX("id_kelompok")             FROM "kelompok"));
SELECT setval('"peserta_id_peserta_seq"',                         (SELECT MAX("id_peserta")              FROM "peserta"));
SELECT setval('"pengumuman_id_pengumuman_seq"',                   (SELECT MAX("id_pengumuman")           FROM "pengumuman"));
SELECT setval('"penerima_pengumuman_id_penerima_pengumuman_seq"', (SELECT MAX("id_penerima_pengumuman")  FROM "penerima_pengumuman"));
SELECT setval('"komentar_pengumuman_id_komentar_pengumuman_seq"', (SELECT MAX("id_komentar_pengumuman")  FROM "komentar_pengumuman"));
SELECT setval('"kehadiran_id_kehadiran_seq"',                     (SELECT MAX("id_kehadiran")            FROM "kehadiran"));
SELECT setval('"penugasan_id_penugasan_seq"',                     (SELECT MAX("id_penugasan")            FROM "penugasan"));
SELECT setval('"komentar_tugas_id_komentar_tugas_seq"',           (SELECT MAX("id_komentar_tugas")       FROM "komentar_tugas"));
SELECT setval('"dokumen_id_dokumen_seq"',                         (SELECT MAX("id_dokumen")              FROM "dokumen"));
SELECT setval('"log_id_log_seq"',                                 (SELECT MAX("id_log")                  FROM "log"));