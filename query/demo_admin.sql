-- =============================================
-- SEED DATA - DEMO SESI ADMIN
-- 6 Calon (Imanuel, Shawn, Kristiadi, Andrew, Kenneth, Greg) sebagai SA
-- 2 Batch: Batch Lampau (selesai) + Batch Aktif (berjalan)
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
--   1: Batch 2025         -> Lampau (status=false)
--   2: Batch 2026 Ganjil  -> Aktif  (status=true)
-- =============================================
ALTER SEQUENCE "batch_id_batch_seq" RESTART WITH 1;
INSERT INTO "batch" ("id_batch", "nama_batch", "status", "tanggal_mulai", "tanggal_selesai", "createdAt", "updatedAt") VALUES
(1, 'Batch 2025',        false, '2025-02-01 00:00:00', '2025-08-31 23:59:59', '2025-01-15 08:00:00', '2025-09-01 00:00:00'),
(2, 'Batch 2026 Ganjil', true,  '2026-02-01 00:00:00', '2026-08-31 23:59:59', '2026-01-20 08:00:00', '2026-01-20 08:00:00');

-- =============================================
-- 4. USERS
--   id_user 1     : Kalab
--   id_user 2-7   : 6 calon sebagai SA (Imanuel, Shawn, Kristiadi, Andrew, Kenneth, Greg)
--   id_user 8-14  : Dummy peserta Batch 2025 (Lampau)
--   id_user 15-21 : Dummy peserta Batch 2026 Ganjil (Aktif)
-- =============================================
ALTER SEQUENCE "users_id_user_seq" RESTART WITH 1;
INSERT INTO "users" ("id_user", "nama", "email", "google_id", "foto", "role", "nomor_identitas", "createdAt", "updatedAt") VALUES
-- Kalab
(1,  'Raymond Chandra',       'raymond.chandra@unpar.ac.id',    NULL, NULL, 'Kalab',   '1241301',    '2024-01-05 07:05:00', '2024-01-05 07:05:00'),

-- 6 Calon sebagai SA
(2,  'Imanuel Alexander',     '6182201013@unpar.ac.id',         NULL, NULL, 'SA',      '6182201013', '2024-01-05 07:10:00', '2024-01-05 07:10:00'),
(3,  'Shawn Jonathan',        '6182201021@unpar.ac.id',         NULL, NULL, 'SA',      '6182201021', '2024-01-05 07:11:00', '2024-01-05 07:11:00'),
(4,  'Benediktus Kristiadi',  '6182201032@unpar.ac.id',         NULL, NULL, 'SA',      '6182201032', '2024-01-05 07:12:00', '2024-01-05 07:12:00'),
(5,  'Andrew',                '6187701002@unpar.ac.id',         NULL, NULL, 'SA',      '18223002',   '2024-01-05 07:13:00', '2024-01-05 07:13:00'),
(6,  'Kenneth',               '6187701005@unpar.ac.id',         NULL, NULL, 'SA',      '18223005',   '2024-01-05 07:14:00', '2024-01-05 07:14:00'),
(7,  'Gregorius',             '6187701004@unpar.ac.id',         NULL, NULL, 'SA',      '18223004',   '2024-01-05 07:15:00', '2024-01-05 07:15:00'),

-- Dummy peserta Batch 2025 (Lampau)
(8,  'Bagus Pratama',         '6182301001@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182301001', '2025-01-18 09:00:00', '2025-01-18 09:00:00'),
(9,  'Cynthia Halim',         '6182301002@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182301002', '2025-01-18 09:05:00', '2025-01-18 09:05:00'),
(10, 'Daniel Wijaya',         '6182301003@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182301003', '2025-01-18 09:10:00', '2025-01-18 09:10:00'),
(11, 'Erika Suryani',         '6182301004@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182301004', '2025-01-18 09:15:00', '2025-01-18 09:15:00'),
(12, 'Fauzan Rahman',         '6182301005@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182301005', '2025-01-18 09:20:00', '2025-01-18 09:20:00'),
(13, 'Gisela Permata',        '6182301006@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182301006', '2025-01-18 09:25:00', '2025-01-18 09:25:00'),
(14, 'Hendra Saputra',        '6182301007@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182301007', '2025-01-18 09:30:00', '2025-01-18 09:30:00'),

-- Dummy peserta Batch 2026 Ganjil (Aktif)
(15, 'Indra Maulana',         '6182401001@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182401001', '2026-01-22 09:00:00', '2026-01-22 09:00:00'),
(16, 'Jihan Aulia',           '6182401002@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182401002', '2026-01-22 09:05:00', '2026-01-22 09:05:00'),
(17, 'Kevin Hartanto',        '6182401003@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182401003', '2026-01-22 09:10:00', '2026-01-22 09:10:00'),
(18, 'Laras Anindita',        '6182401004@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182401004', '2026-01-22 09:15:00', '2026-01-22 09:15:00'),
(19, 'Marvin Setiawan',       '6182401005@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182401005', '2026-01-22 09:20:00', '2026-01-22 09:20:00'),
(20, 'Naya Pradipta',         '6182401006@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182401006', '2026-01-22 09:25:00', '2026-01-22 09:25:00'),
(21, 'Oscar Wibowo',          '6182401007@student.unpar.ac.id', NULL, NULL, 'Peserta', '6182401007', '2026-01-22 09:30:00', '2026-01-22 09:30:00'),
(22, 'Steven Febrian',        '6182201084@student.unpar.ac.id', NULL, NULL, 'SA',      '1231231233', '2024-01-05 07:05:00', '2024-01-05 07:05:00');



-- =============================================
-- 5. KELOMPOK
--   Batch 1 (Lampau): Kelompok 1 & 2
--   Batch 2 (Aktif) : Kelompok 1 & 2
-- =============================================
ALTER SEQUENCE "kelompok_id_kelompok_seq" RESTART WITH 1;
INSERT INTO "kelompok" ("id_kelompok", "nama_kelompok", "id_batch", "createdAt", "updatedAt") VALUES
(1, 'Kelompok 1', 1, '2025-02-05 08:00:00', '2025-02-05 08:00:00'),
(2, 'Kelompok 2', 1, '2025-02-05 08:10:00', '2025-02-05 08:10:00'),
(3, 'Kelompok 1', 2, '2026-02-05 08:00:00', '2026-02-05 08:00:00'),
(4, 'Kelompok 2', 2, '2026-02-05 08:10:00', '2026-02-05 08:10:00');

-- =============================================
-- 6. PESERTA
--   Batch 1 (Lampau): 4 Diterima (Pelatihan -> selesai), 3 Ditolak (Seleksi Berkas)
--   Batch 2 (Aktif) : 4 Pelatihan, 3 Seleksi Berkas
-- =============================================
ALTER SEQUENCE "peserta_id_peserta_seq" RESTART WITH 1;
INSERT INTO "peserta" ("id_peserta", "id_user", "id_batch", "id_kelompok", "status", "tanggal_daftar", "createdAt", "updatedAt") VALUES
-- Batch 1: Diterima (sudah lolos pelatihan)
(1, 8,  1, 1, 'Diterima', '2025-01-20 10:00:00', '2025-01-20 10:00:00', '2025-09-01 00:00:00'),
(2, 9,  1, 1, 'Diterima', '2025-01-20 10:05:00', '2025-01-20 10:05:00', '2025-09-01 00:00:00'),
(3, 10, 1, 2, 'Diterima', '2025-01-20 10:10:00', '2025-01-20 10:10:00', '2025-09-01 00:00:00'),
(4, 11, 1, 2, 'Diterima', '2025-01-20 10:15:00', '2025-01-20 10:15:00', '2025-09-01 00:00:00'),
-- Batch 1: Ditolak (gagal di tahap seleksi berkas)
(5, 12, 1, NULL, 'Ditolak', '2025-01-20 10:20:00', '2025-01-20 10:20:00', '2025-02-15 00:00:00'),
(6, 13, 1, NULL, 'Ditolak', '2025-01-20 10:25:00', '2025-01-20 10:25:00', '2025-02-15 00:00:00'),
(7, 14, 1, NULL, 'Ditolak', '2025-01-20 10:30:00', '2025-01-20 10:30:00', '2025-02-15 00:00:00'),

-- Batch 2: Pelatihan (sudah masuk kelompok)
(8,  15, 2, 3, 'Pelatihan', '2026-01-25 10:00:00', '2026-01-25 10:00:00', '2026-02-15 00:00:00'),
(9,  16, 2, 3, 'Pelatihan', '2026-01-25 10:05:00', '2026-01-25 10:05:00', '2026-02-15 00:00:00'),
(10, 17, 2, 4, 'Pelatihan', '2026-01-25 10:10:00', '2026-01-25 10:10:00', '2026-02-15 00:00:00'),
(11, 18, 2, 4, 'Pelatihan', '2026-01-25 10:15:00', '2026-01-25 10:15:00', '2026-02-15 00:00:00'),
-- Batch 2: Seleksi Berkas (belum diproses)
(12, 19, 2, NULL, 'Seleksi Berkas', '2026-01-25 10:20:00', '2026-01-25 10:20:00', '2026-01-25 10:20:00'),
(13, 20, 2, NULL, 'Seleksi Berkas', '2026-01-25 10:25:00', '2026-01-25 10:25:00', '2026-01-25 10:25:00'),
(14, 21, 2, NULL, 'Seleksi Berkas', '2026-01-25 10:30:00', '2026-01-25 10:30:00', '2026-01-25 10:30:00');

-- =============================================
-- 7. PENGUMUMAN
-- =============================================
ALTER SEQUENCE "pengumuman_id_pengumuman_seq" RESTART WITH 1;
INSERT INTO "pengumuman" ("id_pengumuman", "judul", "isi", "tanggal_pengumuman", "id_batch", "id_user", "is_broadcast", "createdAt", "updatedAt") VALUES
-- Batch 2025 (Lampau)
(1, 'Lowongan Magang sebagai Admin Labkom 2025',
 '<p>Selamat sore, Berikut saya informasikan mengenai lowongan magang sebagai tenaga admin di labkomp FS bagi mahasiswa informatika angkatan 2023. Silahkan membaca keterangan lebih lanjut pada lampiran berikut. Terimakasih.</p>',
 '2025-01-20 16:08:00', 1, 1, false, '2025-01-20 16:08:00', '2025-01-20 16:08:00'),

(2, 'Pelengkapan Dokumen Administrasi',
 '<p>Selamat pagi, Diinformasikan kepada seluruh peserta yang telah berhasil login ke dalam sistem untuk segera melengkapi dokumen pada halaman profil untuk melanjutkan proses seleksi pendaftaran. Terima kasih.</p>',
 '2025-01-25 16:08:00', 1, 1, true, '2025-01-25 16:08:00', '2025-01-25 16:08:00'),

(3, 'Pelatihan Admin Batch 2025',
 '<p>Selamat pagi, Mimin ingin mengucapkan selamat kepada seluruh peserta yang telah lolos ke tahap pelatihan admin. Proses pelatihan akan berlangsung kurang lebih selama 1.5 bulan dengan kurang lebih ada 7 buah tugas yang harus dikerjakan. Detail tugas dapat dilihat pada halaman tugas. Terima kasih.</p>',
 '2025-02-20 16:08:00', 1, 1, true, '2025-02-20 16:08:00', '2025-02-20 16:08:00'),

(4, 'Pengumuman Hasil Akhir Batch 2025',
 '<p>Selamat siang, Berikut hasil akhir pelatihan Batch 2025. Selamat kepada peserta yang diterima sebagai admin Labkom! Bagi yang belum lolos, jangan menyerah dan tetap semangat untuk batch berikutnya.</p>',
 '2025-08-25 16:08:00', 1, 1, true, '2025-08-25 16:08:00', '2025-08-25 16:08:00'),

-- Batch 2026 Ganjil (Aktif)
(5, 'Lowongan Magang sebagai Admin Labkom 2026',
 '<p>Selamat sore, Berikut saya informasikan mengenai lowongan magang sebagai tenaga admin di labkomp FS bagi mahasiswa informatika angkatan 2024. Silahkan membaca keterangan lebih lanjut pada lampiran berikut. Terimakasih.</p>',
 '2026-01-22 16:08:00', 2, 1, false, '2026-01-22 16:08:00', '2026-01-22 16:08:00'),

(6, 'Pelengkapan Dokumen Administrasi',
 '<p>Selamat pagi, Diinformasikan kepada seluruh peserta yang telah berhasil login ke dalam sistem untuk segera melengkapi dokumen pada halaman profil untuk melanjutkan proses seleksi pendaftaran. Terima kasih.</p>',
 '2026-01-26 16:08:00', 2, 1, true, '2026-01-26 16:08:00', '2026-01-26 16:08:00'),

(7, 'Pelatihan Admin Batch 2026 Dimulai',
 '<p>Selamat pagi, Mimin mengucapkan selamat kepada peserta yang lolos ke tahap pelatihan. Tugas pertama akan diberikan hari ini di halaman tugas masing-masing. Tetap semangat dan jangan terburu-buru, fokus eksplorasi dan pemahaman.</p>',
 '2026-02-16 16:08:00', 2, 1, true, '2026-02-16 16:08:00', '2026-02-16 16:08:00'),

(8, 'Penilaian Tugas Individual',
 '<p>Selamat Siang. PERHATIAN! Penilaian yang kami lakukan untuk tahap sekarang merupakan penilaian individual. Dimohon untuk mengerjakannya secara mandiri dan tidak bekerja sama. Salam, Adminus Labkominus.</p>',
 '2026-03-10 16:08:00', 2, 1, true, '2026-03-10 16:08:00', '2026-03-10 16:08:00'),

(9, 'Penggantian PC Rusak',
 '<p>Untuk Indra dan Kevin, silahkan datang ke ruang admin untuk mengganti pc yang rusak dan memilih pc yang lainnya.</p>',
 '2026-04-15 16:08:00', 2, 2, false, '2026-04-15 16:08:00', '2026-04-15 16:08:00'),

(10, 'Libur Pelatihan',
 '<p>Selamat Siang. Pada hari Kamis dan Jumat minggu depan, Pelatihan Admin akan diliburkan karena adanya acara akreditasi yang menggunakan seluruh ruangan Labkom FS. Mohon untuk mengkondisikan lab sesuai kondisi semula. Salam, Admin FS.</p>',
 '2026-04-25 16:08:00', 2, 1, true, '2026-04-25 16:08:00', '2026-04-25 16:08:00');

-- =============================================
-- 8. PENERIMA PENGUMUMAN
-- =============================================
ALTER SEQUENCE "penerima_pengumuman_id_penerima_pengumuman_seq" RESTART WITH 1;
INSERT INTO "penerima_pengumuman" ("id_penerima_pengumuman", "id_pengumuman", "id_user", "createdAt", "updatedAt") VALUES
-- Pengumuman 2: Pelengkapan Dokumen Batch 2025 (broadcast)
(1,  2, 8,  '2025-01-25 16:08:00', '2025-01-25 16:08:00'),
(2,  2, 9,  '2025-01-25 16:08:00', '2025-01-25 16:08:00'),
(3,  2, 10, '2025-01-25 16:08:00', '2025-01-25 16:08:00'),
(4,  2, 11, '2025-01-25 16:08:00', '2025-01-25 16:08:00'),
(5,  2, 12, '2025-01-25 16:08:00', '2025-01-25 16:08:00'),
(6,  2, 13, '2025-01-25 16:08:00', '2025-01-25 16:08:00'),
(7,  2, 14, '2025-01-25 16:08:00', '2025-01-25 16:08:00'),

-- Pengumuman 3: Pelatihan Admin Batch 2025 (broadcast - hanya yg lolos)
(8,  3, 8,  '2025-02-20 16:08:00', '2025-02-20 16:08:00'),
(9,  3, 9,  '2025-02-20 16:08:00', '2025-02-20 16:08:00'),
(10, 3, 10, '2025-02-20 16:08:00', '2025-02-20 16:08:00'),
(11, 3, 11, '2025-02-20 16:08:00', '2025-02-20 16:08:00'),

-- Pengumuman 4: Hasil Akhir Batch 2025 (broadcast)
(12, 4, 8,  '2025-08-25 16:08:00', '2025-08-25 16:08:00'),
(13, 4, 9,  '2025-08-25 16:08:00', '2025-08-25 16:08:00'),
(14, 4, 10, '2025-08-25 16:08:00', '2025-08-25 16:08:00'),
(15, 4, 11, '2025-08-25 16:08:00', '2025-08-25 16:08:00'),

-- Pengumuman 6: Pelengkapan Dokumen Batch 2026 (broadcast)
(16, 6, 15, '2026-01-26 16:08:00', '2026-01-26 16:08:00'),
(17, 6, 16, '2026-01-26 16:08:00', '2026-01-26 16:08:00'),
(18, 6, 17, '2026-01-26 16:08:00', '2026-01-26 16:08:00'),
(19, 6, 18, '2026-01-26 16:08:00', '2026-01-26 16:08:00'),
(20, 6, 19, '2026-01-26 16:08:00', '2026-01-26 16:08:00'),
(21, 6, 20, '2026-01-26 16:08:00', '2026-01-26 16:08:00'),
(22, 6, 21, '2026-01-26 16:08:00', '2026-01-26 16:08:00'),

-- Pengumuman 7: Pelatihan Admin Batch 2026 Dimulai (broadcast - hanya yg lolos pelatihan)
(23, 7, 15, '2026-02-16 16:08:00', '2026-02-16 16:08:00'),
(24, 7, 16, '2026-02-16 16:08:00', '2026-02-16 16:08:00'),
(25, 7, 17, '2026-02-16 16:08:00', '2026-02-16 16:08:00'),
(26, 7, 18, '2026-02-16 16:08:00', '2026-02-16 16:08:00'),

-- Pengumuman 8: Penilaian Tugas Individual (broadcast - hanya yg pelatihan)
(27, 8, 15, '2026-03-10 16:08:00', '2026-03-10 16:08:00'),
(28, 8, 16, '2026-03-10 16:08:00', '2026-03-10 16:08:00'),
(29, 8, 17, '2026-03-10 16:08:00', '2026-03-10 16:08:00'),
(30, 8, 18, '2026-03-10 16:08:00', '2026-03-10 16:08:00'),

-- Pengumuman 9: Penggantian PC Rusak (NON-broadcast - Indra & Kevin)
(31, 9, 15, '2026-04-15 16:08:00', '2026-04-15 16:08:00'),
(32, 9, 17, '2026-04-15 16:08:00', '2026-04-15 16:08:00'),

-- Pengumuman 10: Libur Pelatihan (broadcast - hanya yg pelatihan)
(33, 10, 15, '2026-04-25 16:08:00', '2026-04-25 16:08:00'),
(34, 10, 16, '2026-04-25 16:08:00', '2026-04-25 16:08:00'),
(35, 10, 17, '2026-04-25 16:08:00', '2026-04-25 16:08:00'),
(36, 10, 18, '2026-04-25 16:08:00', '2026-04-25 16:08:00');

-- =============================================
-- 9. KOMENTAR PENGUMUMAN
-- =============================================
ALTER SEQUENCE "komentar_pengumuman_id_komentar_pengumuman_seq" RESTART WITH 1;
INSERT INTO "komentar_pengumuman" ("id_komentar_pengumuman", "id_pengumuman", "id_user", "isi_komentar", "createdAt", "updatedAt") VALUES
-- Pengumuman 2 (Batch 2025)
(1, 2, 8,  'Siap min, segera dilengkapi',                                 '2025-01-26 08:30:00', '2025-01-26 08:30:00'),
(2, 2, 10, 'Baik min',                                                    '2025-01-26 09:15:00', '2025-01-26 09:15:00'),

-- Pengumuman 3 (Batch 2025)
(3, 3, 8,  'Terima kasih min, semangat!',                                 '2025-02-20 17:00:00', '2025-02-20 17:00:00'),
(4, 3, 11, 'Mohon bimbingannya pak',                                      '2025-02-21 08:15:00', '2025-02-21 08:15:00'),

-- Pengumuman 6 (Batch 2026)
(5, 6, 15, 'Siap min, dokumen segera dilengkapi',                         '2026-01-27 08:30:00', '2026-01-27 08:30:00'),
(6, 6, 16, 'Baik min',                                                    '2026-01-27 09:00:00', '2026-01-27 09:00:00'),
(7, 6, 19, 'Oke min',                                                     '2026-01-27 10:20:00', '2026-01-27 10:20:00'),

-- Pengumuman 7 (Batch 2026)
(8,  7, 15, 'Terima kasih min, semangat!',                                '2026-02-16 17:00:00', '2026-02-16 17:00:00'),
(9,  7, 16, 'Siap, mohon bimbingannya',                                   '2026-02-16 17:30:00', '2026-02-16 17:30:00'),
(10, 7, 18, 'Baik min',                                                   '2026-02-17 08:00:00', '2026-02-17 08:00:00'),

-- Pengumuman 8 (Batch 2026)
(11, 8, 17, 'Noted min',                                                  '2026-03-10 17:30:00', '2026-03-10 17:30:00'),
(12, 8, 16, 'Baik pak',                                                   '2026-03-10 18:00:00', '2026-03-10 18:00:00'),

-- Pengumuman 9 (Penggantian PC, non-broadcast)
(13, 9, 15, 'Siap min, akan segera ke ruang admin',                       '2026-04-15 17:00:00', '2026-04-15 17:00:00'),
(14, 9, 17, 'Baik min, terima kasih',                                     '2026-04-15 17:30:00', '2026-04-15 17:30:00'),

-- Pengumuman 10 (Libur)
(15, 10, 15, 'Oke min, terima kasih informasinya',                        '2026-04-25 17:00:00', '2026-04-25 17:00:00'),
(16, 10, 18, 'Siap min',                                                  '2026-04-25 17:45:00', '2026-04-25 17:45:00');

-- =============================================
-- 10. KEHADIRAN
--   Batch 1 (Lampau): peserta diterima 1-4 punya kehadiran lengkap
--   Batch 2 (Aktif) : peserta pelatihan 8-11 punya kehadiran sedang berjalan
-- =============================================
ALTER SEQUENCE "kehadiran_id_kehadiran_seq" RESTART WITH 1;
INSERT INTO "kehadiran" ("id_kehadiran", "id_peserta", "laporan", "is_verified", "jam_datang", "jam_pulang", "createdAt", "updatedAt") VALUES
-- ============================================
-- Batch 1 (Lampau) - Peserta Diterima
-- ============================================
-- Peserta 1: Bagus Pratama
(1,  1, '<p>Mengerjakan LAMP Stack di Ubuntu. Install Apache, MySQL, PHP berhasil. Test koneksi PHP-MySQL berhasil tampilkan data dari tabel users.</p>', true, '2025-03-05 13:00:00', '2025-03-05 17:30:00', '2025-03-05 13:00:00', '2025-03-05 17:30:00'),
(2,  1, '<p>Konfigurasi Samba di Debian. Drive Z mahasiswa dengan kuota 200MB sudah jalan. Test mount dari Windows client berhasil.</p>',                  true, '2025-03-19 13:00:00', '2025-03-19 17:30:00', '2025-03-19 13:00:00', '2025-03-19 17:30:00'),
(3,  1, '<p>Setup Reverse Proxy Nginx dengan 2 VM Apache di KVM. Konfigurasi multi-domain dan DNS lokal berhasil.</p>',                                    true, '2025-04-02 13:00:00', '2025-04-02 17:45:00', '2025-04-02 13:00:00', '2025-04-02 17:45:00'),
(4,  1, '<p>Active Directory di Windows Server. Forest, OU, GPO password policy, dan NTP sudah terkonfigurasi semua.</p>',                                  true, '2025-04-16 13:00:00', '2025-04-16 18:00:00', '2025-04-16 13:00:00', '2025-04-16 18:00:00'),

-- Peserta 2: Cynthia Halim
(5,  2, '<p>LAMP Stack di Fedora. Sempat troubleshoot firewalld dan SELinux untuk akses port 80, sudah teratasi.</p>',                                     true, '2025-03-06 09:00:00', '2025-03-06 13:00:00', '2025-03-06 09:00:00', '2025-03-06 13:00:00'),
(6,  2, '<p>Samba di Ubuntu dengan quota tools. Folder grup dan public sudah ditest dari beberapa client.</p>',                                            true, '2025-03-20 09:00:00', '2025-03-20 13:30:00', '2025-03-20 09:00:00', '2025-03-20 13:30:00'),
(7,  2, '<p>Reverse Proxy Nginx di Rocky Linux. SELinux awalnya blocking, sudah fix dengan setsebool httpd_can_network_connect.</p>',                      true, '2025-04-03 09:00:00', '2025-04-03 13:00:00', '2025-04-03 09:00:00', '2025-04-03 13:00:00'),
(8,  2, '<p>Active Directory dengan roaming profile dan GPO mapping drive Z otomatis. Implementasi solid.</p>',                                            true, '2025-04-17 09:00:00', '2025-04-17 13:45:00', '2025-04-17 09:00:00', '2025-04-17 13:45:00'),

-- Peserta 3: Daniel Wijaya
(9,  3, '<p>LAMP Stack di CentOS. Test PHP-MySQL via halaman info.php berhasil.</p>',                                                                      true, '2025-03-07 13:00:00', '2025-03-07 17:30:00', '2025-03-07 13:00:00', '2025-03-07 17:30:00'),
(10, 3, '<p>Konfigurasi Mikrotik. Reset router dan switch, setup VLAN 10 dan 20, inter-VLAN routing jalan.</p>',                                           true, '2025-03-21 13:00:00', '2025-03-21 17:15:00', '2025-03-21 13:00:00', '2025-03-21 17:15:00'),
(11, 3, '<p>Setup Prometheus dan Grafana. Import dashboard Node Exporter, monitoring 2 server jalan normal.</p>',                                          true, '2025-04-04 13:00:00', '2025-04-04 17:45:00', '2025-04-04 13:00:00', '2025-04-04 17:45:00'),

-- Peserta 4: Erika Suryani
(12, 4, '<p>LAMP di Debian dengan PHP-FPM. Sempat bentrok dengan modul Apache, akhirnya pakai libapache2-mod-php.</p>',                                    true, '2025-03-08 09:00:00', '2025-03-08 13:00:00', '2025-03-08 09:00:00', '2025-03-08 13:00:00'),
(13, 4, '<p>Docker dan Judge System. Install Docker, MariaDB, PhpMyAdmin via container. Reverse proxy Nginx ke Judge berhasil.</p>',                       true, '2025-03-22 09:00:00', '2025-03-22 13:30:00', '2025-03-22 09:00:00', '2025-03-22 13:30:00'),
(14, 4, '<p>Gitlab Server dengan Docker. Bikin user admin dan biasa, test clone-pull-push, runner CI/CD jalan.</p>',                                       false, '2025-04-05 09:00:00', '2025-04-05 13:00:00', '2025-04-05 09:00:00', '2025-04-05 13:00:00'),

-- ============================================
-- Batch 2 (Aktif) - Peserta Pelatihan
-- ============================================
-- Peserta 8: Indra Maulana
(15, 8, '<p>Mulai tugas LAMP Stack di Ubuntu. Install Apache2, MySQL Server, PHP. Test localhost dan koneksi PHP-MySQL berhasil.</p>',                     true, '2026-03-03 13:00:00', '2026-03-03 17:15:00', '2026-03-03 13:00:00', '2026-03-03 17:15:00'),
(16, 8, '<p>Lanjut Samba di Debian. Drive Z dengan kuota 200MB sudah jalan, test akses dari PC lain berhasil.</p>',                                        true, '2026-03-17 13:00:00', '2026-03-17 17:30:00', '2026-03-17 13:00:00', '2026-03-17 17:30:00'),
(17, 8, '<p>Reverse Proxy Nginx dengan 2 VM Apache di KVM. Konfigurasi server_name dan DNS lokal sudah jalan.</p>',                                        true, '2026-04-07 13:00:00', '2026-04-07 17:45:00', '2026-04-07 13:00:00', '2026-04-07 17:45:00'),
(18, 8, '<p>Active Directory di Windows Server. Forest dan OU sudah, baru mulai eksplor GPO. Lanjut besok.</p>',                                           false, '2026-04-28 13:00:00', '2026-04-28 18:00:00', '2026-04-28 13:00:00', '2026-04-28 18:00:00'),

-- Peserta 9: Jihan Aulia
(19, 9, '<p>LAMP Stack di Debian. Apache, MariaDB, PHP 8 berhasil. Halaman PHP fetch data dari MySQL jalan.</p>',                                          true, '2026-03-04 09:00:00', '2026-03-04 12:45:00', '2026-03-04 09:00:00', '2026-03-04 12:45:00'),
(20, 9, '<p>Samba di Ubuntu. Drive Z dengan quotatool sudah jalan, kuota 200MB ditest dengan upload file besar.</p>',                                      true, '2026-03-18 09:00:00', '2026-03-18 13:30:00', '2026-03-18 09:00:00', '2026-03-18 13:30:00'),
(21, 9, '<p>Reverse Proxy Nginx di Rocky Linux. 2 VM Apache, multi-domain dengan upstream block sudah jalan.</p>',                                         true, '2026-04-08 09:00:00', '2026-04-08 13:00:00', '2026-04-08 09:00:00', '2026-04-08 13:00:00'),

-- Peserta 10: Kevin Hartanto
(22, 10, '<p>LAMP Stack di Fedora. Selinux dan firewalld awalnya blocking, sudah disesuaikan dengan firewall-cmd.</p>',                                    true, '2026-03-05 13:00:00', '2026-03-05 17:30:00', '2026-03-05 13:00:00', '2026-03-05 17:30:00'),
(23, 10, '<p>Samba di CentOS. Bikin user pakai smbpasswd, fix Selinux context dengan chcon. Test akses dari client berhasil.</p>',                          true, '2026-03-19 13:00:00', '2026-03-19 17:15:00', '2026-03-19 13:00:00', '2026-03-19 17:15:00'),
(24, 10, '<p>Reverse Proxy di Debian. Bikin 2 VM Apache dengan website portfolio dan blog. DNS lokal pakai dnsmasq.</p>',                                  false, '2026-04-09 13:00:00', '2026-04-09 17:45:00', '2026-04-09 13:00:00', '2026-04-09 17:45:00'),

-- Peserta 11: Laras Anindita
(25, 11, '<p>LAMP di CentOS. Install httpd, mariadb, php via yum. Test koneksi PHP-MySQL berhasil.</p>',                                                   true, '2026-03-06 13:00:00', '2026-03-06 17:00:00', '2026-03-06 13:00:00', '2026-03-06 17:00:00'),
(26, 11, '<p>Samba di Ubuntu. Konfigurasi smb.conf untuk drive Z dan folder grup. Quota tools jalan untuk batasi 200MB.</p>',                              true, '2026-03-20 13:00:00', '2026-03-20 17:15:00', '2026-03-20 13:00:00', '2026-03-20 17:15:00');

-- =============================================
-- 11. PENUGASAN
-- =============================================
ALTER SEQUENCE "penugasan_id_penugasan_seq" RESTART WITH 1;
INSERT INTO "penugasan" ("id_penugasan", "id_peserta", "id_soal", "id_so", "id_user", "id_kelompok", "status", "tanggal_beri", "tanggal_kumpul", "file_pengumpulan", "createdAt", "updatedAt") VALUES
-- ============================================
-- Batch 1 (Lampau) - tugas Diterima 1-4 (Selesai semua)
-- ============================================
-- Peserta 1: Bagus Pratama
(1,  1, 1, 1,  2, NULL, 'Selesai', '2025-02-26 09:00:00', '2025-03-06 17:30:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-02-26 09:00:00', '2025-03-06 17:30:00'),
(2,  1, 2, 7,  3, NULL, 'Selesai', '2025-03-12 09:00:00', '2025-03-20 17:30:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-03-12 09:00:00', '2025-03-20 17:30:00'),
(3,  1, 3, 1,  4, NULL, 'Selesai', '2025-03-26 09:00:00', '2025-04-03 18:00:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-03-26 09:00:00', '2025-04-03 18:00:00'),
(4,  1, 4, 10, 5, NULL, 'Selesai', '2025-04-09 09:00:00', '2025-04-17 18:15:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-04-09 09:00:00', '2025-04-17 18:15:00'),
-- Peserta 2: Cynthia Halim
(5,  2, 1, 6,  2, NULL, 'Selesai', '2025-02-27 09:00:00', '2025-03-06 13:00:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-02-27 09:00:00', '2025-03-06 13:00:00'),
(6,  2, 2, 1,  3, NULL, 'Selesai', '2025-03-13 09:00:00', '2025-03-20 13:45:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-03-13 09:00:00', '2025-03-20 13:45:00'),
(7,  2, 3, 5,  4, NULL, 'Selesai', '2025-03-27 09:00:00', '2025-04-03 13:30:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-03-27 09:00:00', '2025-04-03 13:30:00'),
(8,  2, 4, 10, 6, NULL, 'Selesai', '2025-04-10 09:00:00', '2025-04-17 14:00:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-04-10 09:00:00', '2025-04-17 14:00:00'),
-- Peserta 3: Daniel Wijaya
(9,  3, 1, 4,  2, NULL, 'Selesai', '2025-02-28 09:00:00', '2025-03-07 17:30:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-02-28 09:00:00', '2025-03-07 17:30:00'),
(10, 3, 6, 1,  3, NULL, 'Selesai', '2025-03-14 09:00:00', '2025-03-21 17:15:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-03-14 09:00:00', '2025-03-21 17:15:00'),
(11, 3, 9, 1,  7, NULL, 'Selesai', '2025-03-28 09:00:00', '2025-04-04 17:45:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-03-28 09:00:00', '2025-04-04 17:45:00'),
-- Peserta 4: Erika Suryani
(12, 4, 1, 7,  2, NULL, 'Selesai', '2025-02-26 09:00:00', '2025-03-08 13:00:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-02-26 09:00:00', '2025-03-08 13:00:00'),
(13, 4, 10, 1, 4, NULL, 'Selesai', '2025-03-12 09:00:00', '2025-03-22 13:30:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-03-12 09:00:00', '2025-03-22 13:30:00'),
(14, 4, 11, 1, 5, NULL, 'Selesai', '2025-03-26 09:00:00', '2025-04-05 13:00:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-03-26 09:00:00', '2025-04-05 13:00:00'),

-- Tugas Kelompok Batch 1 (Mikrotik)
(15, NULL, 6, 1, 2, 1, 'Selesai', '2025-04-15 09:00:00', '2025-05-20 17:00:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-04-15 09:00:00', '2025-05-20 17:00:00'),
(16, NULL, 6, 1, 2, 2, 'Selesai', '2025-04-15 09:00:00', '2025-05-30 17:00:00', '/uploads/batch/Batch 2025/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2025-04-15 09:00:00', '2025-05-30 17:00:00'),

-- ============================================
-- Batch 2 (Aktif) - tugas Pelatihan 8-11 (campuran status)
-- ============================================
-- Peserta 8: Indra Maulana - sedang berjalan
(17, 8, 1, 1,  2, NULL, 'Selesai',             '2026-02-25 09:00:00', '2026-03-03 17:15:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-02-25 09:00:00', '2026-03-03 17:15:00'),
(18, 8, 2, 7,  3, NULL, 'Selesai',             '2026-03-10 09:00:00', '2026-03-17 17:30:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-03-10 09:00:00', '2026-03-17 17:30:00'),
(19, 8, 3, 1,  4, NULL, 'Menunggu Verifikasi', '2026-03-30 09:00:00', '2026-04-07 17:45:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-03-30 09:00:00', '2026-04-07 17:45:00'),
(20, 8, 4, 10, 5, NULL, 'Belum Mengerjakan',   '2026-04-25 09:00:00', NULL,                  NULL, '2026-04-25 09:00:00', '2026-04-25 09:00:00'),

-- Peserta 9: Jihan Aulia
(21, 9, 1, 7, 2, NULL, 'Selesai',             '2026-02-26 09:00:00', '2026-03-04 12:45:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-02-26 09:00:00', '2026-03-04 12:45:00'),
(22, 9, 2, 1, 3, NULL, 'Selesai',             '2026-03-11 09:00:00', '2026-03-18 13:30:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-03-11 09:00:00', '2026-03-18 13:30:00'),
(23, 9, 3, 5, 4, NULL, 'Selesai',             '2026-03-31 09:00:00', '2026-04-08 13:00:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-03-31 09:00:00', '2026-04-08 13:00:00'),

-- Peserta 10: Kevin Hartanto
(24, 10, 1, 6, 2, NULL, 'Selesai',             '2026-02-27 09:00:00', '2026-03-05 17:30:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-02-27 09:00:00', '2026-03-05 17:30:00'),
(25, 10, 2, 4, 3, NULL, 'Selesai',             '2026-03-12 09:00:00', '2026-03-19 17:15:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-03-12 09:00:00', '2026-03-19 17:15:00'),
(26, 10, 3, 7, 4, NULL, 'Menunggu Verifikasi', '2026-04-01 09:00:00', '2026-04-09 17:45:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-04-01 09:00:00', '2026-04-09 17:45:00'),

-- Peserta 11: Laras Anindita
(27, 11, 1, 4, 2, NULL, 'Selesai',           '2026-02-28 09:00:00', '2026-03-06 17:00:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-02-28 09:00:00', '2026-03-06 17:00:00'),
(28, 11, 2, 1, 3, NULL, 'Selesai',           '2026-03-13 09:00:00', '2026-03-20 17:15:00', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-03-13 09:00:00', '2026-03-20 17:15:00'),
(29, 11, 3, 7, 4, NULL, 'Belum Mengerjakan', '2026-04-15 09:00:00', NULL,                  NULL, '2026-04-15 09:00:00', '2026-04-15 09:00:00'),

-- Tugas Kelompok Batch 2 - sedang berjalan
(30, NULL, 6, 1, 2, 3, 'Belum Mengerjakan', '2026-04-20 09:00:00', NULL, NULL, '2026-04-20 09:00:00', '2026-04-20 09:00:00'),
(31, NULL, 6, 1, 2, 4, 'Belum Mengerjakan', '2026-04-20 09:00:00', NULL, NULL, '2026-04-20 09:00:00', '2026-04-20 09:00:00');

-- =============================================
-- 12. KOMENTAR TUGAS
-- =============================================
ALTER SEQUENCE "komentar_tugas_id_komentar_tugas_seq" RESTART WITH 1;
INSERT INTO "komentar_tugas" ("id_komentar_tugas", "id_penugasan", "id_user", "isi_komentar", "createdAt", "updatedAt") VALUES
-- Batch 1 - Bagus Pratama
(1, 1, 8, 'Pak, untuk testing PHP-MySQL apakah cukup pakai mysqli_connect saja?', '2025-03-04 14:30:00', '2025-03-04 14:30:00'),
(2, 1, 2, 'Iya cukup, yang penting bisa demo koneksi berhasil.',                  '2025-03-04 16:00:00', '2025-03-04 16:00:00'),
(3, 1, 2, 'Laporan diterima. Dokumentasi langkah-langkahnya jelas. Lanjut.',      '2025-03-08 10:15:00', '2025-03-08 10:15:00'),
(4, 4, 5, 'AD jalan dengan baik. Forest, GPO, NTP semua terkonfigurasi sesuai requirement.', '2025-04-19 10:00:00', '2025-04-19 10:00:00'),

-- Batch 1 - Cynthia Halim
(5, 7, 4, 'Bagus sudah aware soal SELinux. Catatan: jelaskan kenapa policy itu yang dipilih di laporan revisi.', '2025-04-06 09:30:00', '2025-04-06 09:30:00'),

-- Batch 1 - Daniel Wijaya
(6, 10, 3, 'Konfigurasi VLAN trunk dan access sudah tepat. Inter-VLAN routing juga berhasil.',                   '2025-03-23 09:00:00', '2025-03-23 09:00:00'),

-- Batch 1 - Tugas kelompok
(7,  15, 8, 'Pak, kelompok kami sudah selesai konfigurasi VLAN dan inter-VLAN. Boleh sekalian eksplor firewall filter rule?', '2025-05-15 14:00:00', '2025-05-15 14:00:00'),
(8,  15, 2, 'Silakan, justru bagus kalau ada inisiatif eksplor lebih. Catat di laporan.',                        '2025-05-15 16:00:00', '2025-05-15 16:00:00'),
(9,  15, 2, 'Topologi rapi, pembagian tugas jelas. Selesai dengan baik.',                                        '2025-05-22 10:00:00', '2025-05-22 10:00:00'),

-- Batch 2 - Indra Maulana
(10, 17, 15, 'Min, saya bingung pas test koneksi PHP-MySQL kena error access denied. Solusinya?',                '2026-03-02 14:00:00', '2026-03-02 14:00:00'),
(11, 17, 2,  'Cek user privilege MySQL via GRANT. Pastikan user punya akses ke database yang dimaksud.',         '2026-03-02 15:30:00', '2026-03-02 15:30:00'),
(12, 17, 2,  'Laporan diterima, lanjut ke tugas berikutnya.',                                                    '2026-03-04 09:00:00', '2026-03-04 09:00:00'),
(13, 19, 4,  'Reverse proxy sudah jalan. Saya cek dulu konfigurasinya, akan saya verifikasi besok.',             '2026-04-08 10:00:00', '2026-04-08 10:00:00'),

-- Batch 2 - Jihan Aulia
(14, 21, 16, 'Pak, untuk PHP 8 ada beberapa fungsi deprecated. Apakah perlu pakai versi lain?',                  '2026-03-03 11:00:00', '2026-03-03 11:00:00'),
(15, 21, 2,  'Pakai PHP 8 saja, tinggal ganti fungsi deprecated dengan padanan modernnya. Itu juga bagian belajar.', '2026-03-03 13:00:00', '2026-03-03 13:00:00'),
(16, 21, 2,  'Pengumpulan rapi. Lanjut Samba.',                                                                  '2026-03-05 09:00:00', '2026-03-05 09:00:00'),

-- Batch 2 - Kevin Hartanto
(17, 26, 17, 'Pak, multi-domain sudah jalan tapi sertifikat SSL belum saya pasang. Apakah perlu?',               '2026-04-08 14:00:00', '2026-04-08 14:00:00'),
(18, 26, 4,  'Untuk tahap ini cukup HTTP saja. SSL akan dieksplor di tugas berikutnya.',                         '2026-04-08 16:00:00', '2026-04-08 16:00:00');

-- =============================================
-- 13. DOKUMEN
-- =============================================
ALTER SEQUENCE "dokumen_id_dokumen_seq" RESTART WITH 1;
INSERT INTO "dokumen" ("id_dokumen", "id_peserta", "ktm", "transkrip", "cv", "foto", "motivation_letter", "createdAt", "updatedAt") VALUES
-- Batch 1 (Lampau) - Diterima
(1, 1, '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2025-01-26 10:00:00', '2025-01-26 10:00:00'),
(2, 2, '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2025-01-26 10:15:00', '2025-01-26 10:15:00'),
(3, 3, '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2025-01-26 10:30:00', '2025-01-26 10:30:00'),
(4, 4, '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2025-01-26 10:45:00', '2025-01-26 10:45:00'),
-- Batch 1 (Lampau) - Ditolak
(5, 5, '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2025-01-26 11:00:00', '2025-01-26 11:00:00'),
(6, 6, '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2025-01-26 11:15:00', '2025-01-26 11:15:00'),
(7, 7, '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2025/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2025-01-26 11:30:00', '2025-01-26 11:30:00'),

-- Batch 2 (Aktif) - Pelatihan
(8,  8,  '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-27 10:00:00', '2026-01-27 10:00:00'),
(9,  9,  '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-27 10:15:00', '2026-01-27 10:15:00'),
(10, 10, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-27 10:30:00', '2026-01-27 10:30:00'),
(11, 11, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-27 10:45:00', '2026-01-27 10:45:00'),

-- Batch 2 (Aktif) - Seleksi Berkas
(12, 12, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-27 11:00:00', '2026-01-27 11:00:00'),
(13, 13, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-27 11:15:00', '2026-01-27 11:15:00'),
(14, 14, '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2026 Ganjil/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2026-01-27 11:30:00', '2026-01-27 11:30:00');

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
SELECT setval('"kelompok_id_kelompok_seq"',                       (SELECT MAX("id_kelompok")             FROM "kelompok"));
SELECT setval('"peserta_id_peserta_seq"',                         (SELECT MAX("id_peserta")              FROM "peserta"));
SELECT setval('"pengumuman_id_pengumuman_seq"',                   (SELECT MAX("id_pengumuman")           FROM "pengumuman"));
SELECT setval('"penerima_pengumuman_id_penerima_pengumuman_seq"', (SELECT MAX("id_penerima_pengumuman")  FROM "penerima_pengumuman"));
SELECT setval('"komentar_pengumuman_id_komentar_pengumuman_seq"', (SELECT MAX("id_komentar_pengumuman")  FROM "komentar_pengumuman"));
SELECT setval('"kehadiran_id_kehadiran_seq"',                     (SELECT MAX("id_kehadiran")            FROM "kehadiran"));
SELECT setval('"penugasan_id_penugasan_seq"',                     (SELECT MAX("id_penugasan")            FROM "penugasan"));
SELECT setval('"komentar_tugas_id_komentar_tugas_seq"',           (SELECT MAX("id_komentar_tugas")       FROM "komentar_tugas"));
SELECT setval('"dokumen_id_dokumen_seq"',                         (SELECT MAX("id_dokumen")              FROM "dokumen"));