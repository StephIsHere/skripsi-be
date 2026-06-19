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
(1,  'Ubuntu',         2, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(2,  'Arch Linux',     5, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(3,  'Linux Mint',     1, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(4,  'CentOS',         3, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(5,  'Rocky Linux',    3, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(6,  'Fedora',         3, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(7,  'Debian',         4, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(8,  'openSUSE',       3, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(9,  'Windows 11',     2, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(10, 'Windows Server', 4, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(11, 'macOS Ventura',  2, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(12, 'Kali Linux',     4, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(13, 'Manjaro',        2, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(14, 'Alpine Linux',   5, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07'),
(15, 'Pop!_OS',        2, '2026-06-01 00:00:00+07', '2026-06-01 00:00:00+07');

-- =============================================
-- 2. SOAL
-- =============================================
ALTER SEQUENCE "soal_id_soal_seq" RESTART WITH 1;

INSERT INTO "soal" ("id_soal", "judul", "deskripsi", "bobot", "createdAt", "updatedAt") VALUES
(1, 'LAMP Stack',
 '<p>LAMP Stack merupakan kumpulan perangkat lunak yang terdiri dari Linux, Apache, MySQL, dan PHP yang umum digunakan untuk membangun dan menjalankan aplikasi web berbasis server. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari LAMP Stack (Linux, Apache, MySQL, PHP)</li><li>Instalasi Linux, Apache, MySQL, PHP</li><li>Running web server</li><li>Testing web server dengan koneksi database PHP sederhana</li></ul>',
 2, '2026-06-01 08:12:45+07', '2026-06-01 10:15:20+07'),

(2, 'File Sharing Samba',
 '<p>Samba merupakan layanan berbagi file dan printer yang memungkinkan sistem operasi Linux berkomunikasi dengan perangkat berbasis Windows dalam satu jaringan. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari Samba</li><li>Instalasi dan konfigurasi</li><li>Membuat drive Z mahasiswa (kuota 200MB tiap user)</li><li>Membuat folder untuk grup tertentu</li><li>Membuat folder public</li><li>Testing akses Samba dari PC berbeda</li></ul>',
 3, '2026-06-01 09:21:10+07', '2026-06-01 11:45:33+07'),

(3, 'Reverse Proxy dengan Nginx',
 '<p>Reverse proxy menggunakan Nginx memungkinkan pengelolaan beberapa layanan web melalui satu pintu akses sehingga trafik dapat diteruskan ke server tujuan yang berbeda. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Install dua VM menggunakan KVM/Proxmox/Openstack</li><li>Instalasi Nginx pada host OS</li><li>Instalasi Apache pada kedua VM</li><li>Membuat dua website sederhana</li><li>Konfigurasi reverse proxy Nginx dan DNS</li><li>Akses website menggunakan domain</li></ul>',
 4, '2026-06-01 13:05:44+07', '2026-06-01 14:22:18+07'),

(4, 'Active Directory (AD)',
 '<p>Active Directory merupakan layanan direktori pada Windows Server yang digunakan untuk mengelola user, komputer, dan kebijakan jaringan secara terpusat dalam sebuah domain. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari Windows Server</li><li>Instalasi Windows Server</li><li>Konfigurasi Forest</li><li>Konfigurasi Active Directory (AD)</li><li>Konfigurasi Profile</li><li>Konfigurasi Group Policy Objects (GPO)</li><li>Konfigurasi DNS</li><li>Konfigurasi NTP</li><li>Membuat dokumentasi</li></ul>',
 4, '2026-06-01 07:55:12+07', '2026-06-01 09:30:40+07'),

(5, 'DNS dan FTP',
 '<p>DNS dan FTP merupakan layanan jaringan yang digunakan untuk menerjemahkan nama domain serta melakukan transfer file antar perangkat melalui jaringan. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari DNS dan FTP</li><li>Instalasi DNS dan FTP</li><li>Konfigurasi DNS dan FTP</li><li>Menjalankan DNS dan FTP</li><li>Testing FTP upload dan download</li><li>Testing akses FTP melalui domain</li></ul>',
 3, '2026-06-01 10:10:10+07', '2026-06-01 12:20:25+07'),

(6, 'Jaringan Mikrotik',
 '<p>Mikrotik merupakan perangkat jaringan yang dapat digunakan untuk mengatur routing, VLAN, dan manajemen jaringan pada suatu infrastruktur komputer. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Reset router dan switch ke default configuration</li><li>Konfigurasi switch (IP, VLAN, port access & trunk)</li><li>Konfigurasi router (IP gateway)</li><li>Set semua IP static</li><li>Konfigurasi PC (IP dan gateway)</li><li>Testing koneksi jaringan menggunakan ping</li></ul>',
 4, '2026-06-01 08:40:55+07', '2026-06-01 11:11:11+07'),

(7, 'Server Monitoring dengan Cacti',
 '<p>Cacti merupakan aplikasi monitoring berbasis web yang digunakan untuk memantau performa server dan perangkat jaringan menggunakan protokol SNMP. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Install Apache Web Server</li><li>Konfigurasi firewall</li><li>Install Cacti</li><li>Membuat user monitoring</li><li>Konfigurasi server Cacti</li><li>Konfigurasi SNMP</li><li>Testing akses web Cacti</li><li>Membuat dashboard monitoring</li></ul>',
 4, '2026-06-01 14:00:00+07', '2026-06-01 16:25:30+07'),

(8, 'Microsoft SQL Server',
 '<p>Microsoft SQL Server merupakan sistem manajemen basis data relasional yang digunakan untuk penyimpanan, pengelolaan, dan pengamanan data pada aplikasi skala kecil hingga besar. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari Microsoft SQL Server</li><li>Instalasi SQL Server</li><li>Konfigurasi SQL Server</li><li>Import database AdventureWorks</li><li>Membuat beberapa user</li><li>Isolasi database per user</li><li>Membatasi delete database</li><li>Membuat script otomatis user dan database berdasarkan NPM</li></ul>',
 3, '2026-06-01 09:09:09+07', '2026-06-01 10:10:10+07'),

(9, 'Monitoring dengan Prometheus dan Grafana',
 '<p>Prometheus dan Grafana merupakan kombinasi tools monitoring yang digunakan untuk mengumpulkan, menyimpan, dan memvisualisasikan data performa server secara realtime. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Install Prometheus</li><li>Membuat user monitoring</li><li>Konfigurasi server Prometheus</li><li>Menjadikan Prometheus sebagai service (systemd)</li><li>Install Grafana</li><li>Tambahkan Prometheus sebagai datasource</li><li>Membuat dashboard monitoring</li><li>Import dashboard dari komunitas</li><li>Konfigurasi node exporter</li><li>Monitoring di Grafana</li></ul>',
 4, '2026-06-01 07:30:45+07', '2026-06-01 08:45:50+07'),

(10, 'Docker dan Judge System',
 '<p>Docker merupakan platform containerization yang memungkinkan aplikasi dijalankan dalam lingkungan terisolasi sehingga mempermudah proses deployment dan pengelolaan layanan. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Install Docker</li><li>Install MariaDB</li><li>Install PhpMyAdmin</li><li>Konfigurasi Reverse Proxy</li><li>Install Judge (semua fitur harus berjalan)</li></ul>',
 4, '2026-06-01 11:11:11+07', '2026-06-01 13:13:13+07'),

(11, 'Gitlab dengan Docker',
 '<p>GitLab merupakan platform manajemen repository berbasis Git yang mendukung kolaborasi pengembangan perangkat lunak serta integrasi CI/CD. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Install Docker</li><li>Install Gitlab Server dalam Docker</li><li>Membuat user (admin dan user)</li><li>Test create repository</li><li>Test clone, pull, push</li><li>Create runner CI/CD</li><li>Test CI/CD</li></ul>',
 4, '2026-06-01 15:20:10+07', '2026-06-01 17:30:25+07'),

(12, 'VPN Server dengan WireGuard',
 '<p>WireGuard merupakan protokol VPN modern yang dirancang untuk menyediakan koneksi jaringan aman dengan konfigurasi yang ringan dan sederhana. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari konsep VPN dan WireGuard</li><li>Instalasi WireGuard pada server Ubuntu/Debian</li><li>Generate public dan private key untuk server dan client</li><li>Konfigurasi interface server dan IP forwarding</li><li>Membuat file konfigurasi untuk peer (client)</li><li>Testing koneksi VPN dari client ke server (ping IP lokal)</li></ul>',
 3, '2026-06-01 09:00:00+07', '2026-06-01 10:00:00+07'),

(13, 'CI/CD Pipeline dengan Jenkins',
 '<p>Jenkins merupakan automation server yang umum digunakan untuk implementasi Continuous Integration dan Continuous Deployment (CI/CD) pada proses pengembangan aplikasi. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari konsep Continuous Integration & Deployment (CI/CD)</li><li>Instalasi Jenkins menggunakan Docker Container</li><li>Konfigurasi akses Docker dari dalam container Jenkins</li><li>Membuat Git repository sederhana berisi aplikasi web</li><li>Membuat Jenkinsfile untuk mendefinisikan tahapan pipeline</li><li>Testing otomatisasi build dan push Docker image ke registry lokal</li></ul>',
 4, '2026-06-01 10:30:15+07', '2026-06-01 12:45:20+07'),

(14, 'Load Balancing dengan HAProxy',
 '<p>HAProxy merupakan perangkat lunak load balancer yang digunakan untuk mendistribusikan trafik jaringan ke beberapa server backend guna meningkatkan ketersediaan layanan. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari konsep Load Balancing dan High Availability</li><li>Install dua VM sebagai backend server</li><li>Instalasi HAProxy pada node/VM utama</li><li>Konfigurasi backend dan frontend pada file haproxy.cfg</li><li>Setup algoritma Round Robin</li><li>Testing distribusi traffic web ke kedua backend server</li></ul>',
 4, '2026-06-01 13:15:00+07', '2026-06-01 15:20:10+07'),

(15, 'Centralized Logging dengan ELK Stack',
 '<p>ELK Stack merupakan kombinasi Elasticsearch, Logstash, dan Kibana yang digunakan untuk mengumpulkan, memproses, dan memvisualisasikan log secara terpusat. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari arsitektur Elasticsearch, Logstash, dan Kibana</li><li>Instalasi ELK Stack menggunakan Docker Compose</li><li>Instalasi Filebeat pada target server (VM terpisah)</li><li>Konfigurasi Filebeat untuk mengirim log system/Nginx ke Logstash</li><li>Membuat index pattern pada dashboard Kibana</li><li>Membuat visualisasi dan monitoring log secara realtime di Kibana</li></ul>',
 4, '2026-06-01 08:45:30+07', '2026-06-01 09:55:40+07'),

(16, 'Container Orchestration dengan Docker Swarm',
 '<p>Docker Swarm merupakan fitur orchestration pada Docker yang digunakan untuk mengelola kumpulan container dalam bentuk cluster agar deployment aplikasi menjadi lebih terstruktur dan scalable. Silahkan melakukan eksplorasi beberapa poin berikut:</p><ul><li>Pelajari konsep Container Orchestration</li><li>Siapkan 3 VM Docker (1 Manager, 2 Worker)</li><li>Inisialisasi Docker Swarm pada node Manager</li><li>Join Worker node ke dalam kluster Swarm menggunakan token</li><li>Deploy service web server ke dalam kluster</li><li>Scale up replica menjadi 5 instance</li><li>Testing failover dengan mematikan salah satu node worker</li></ul>',
 4, '2026-06-01 11:10:00+07', '2026-06-01 13:25:35+07');

-- =============================================
-- 3. BATCH
-- =============================================
ALTER SEQUENCE "batch_id_batch_seq" RESTART WITH 1;
INSERT INTO "batch" ("id_batch", "nama_batch", "status", "tanggal_mulai", "tanggal_selesai", "createdAt", "updatedAt") VALUES
(1, 'Batch 2026',       false, '2026-06-01 00:00:00', '2026-07-15 23:59:59', '2026-06-15 08:00:00', '2026-06-01 00:00:00'),
(2, 'Batch 2024',       false,  '2024-06-01 00:00:00', '2024-06-30 23:59:59', '2024-01-15 08:00:00', '2024-02-01 00:00:00'),
(3, 'Batch 2025 Ganjil',false, '2025-02-01 00:00:00', '2025-03-31 23:59:59', '2025-02-01 00:00:00', '2025-03-31 23:59:59'),
(4, 'Batch 2025 Genap', false, '2025-06-01 00:00:00', '2025-07-31 23:59:59', '2025-06-01 00:00:00', '2025-07-31 23:59:59');

-- =============================================
-- 4. USERS
-- =============================================
ALTER SEQUENCE "users_id_user_seq" RESTART WITH 1;
INSERT INTO "users" ("id_user", "nama", "email", "google_id", "foto", "role", "nomor_identitas", "createdAt", "updatedAt") VALUES
(1,  'Steven SA',             '6182201084@student.unpar.ac.id', NULL,      NULL, 'SA',      '6182201084', '2024-01-05 07:00:00', '2024-01-05 07:00:00'),
(2,  'Raymond Chandra',       'raymond.chandra@unpar.ac.id',    NULL,      NULL, 'Kalab',   '1407682953', '2024-01-05 07:05:00', '2024-01-05 07:05:00'),
(3,  'Fabrianus Pujanugraha', '6181901075@student.unpar.ac.id',         NULL,      NULL, 'Admin',   '6181901075', '2024-01-05 07:20:00', '2024-01-05 07:20:00'),
(4,  'Erwin Darsono',         '6182001002@student.unpar.ac.id',         NULL,      NULL, 'Admin',   '6182001002', '2024-01-05 07:20:00', '2024-01-05 07:20:00'),
(5,  'Vico Pratama',          '6182101011@student.unpar.ac.id',         NULL,      NULL, 'Admin',   '6182101011', '2024-01-05 07:20:00', '2024-01-05 07:20:00'),
(6,  'Imanuel Alexander',     '6182201013@student.unpar.ac.id',         NULL,      NULL, 'Admin',   '6182201013', '2024-01-05 07:05:00', '2024-01-05 07:05:00'),
(7,  'Shawn Jonathan',        '6182201021@student.unpar.ac.id',         NULL,      NULL, 'Admin',   '6182201021', '2024-01-05 07:10:00', '2024-01-05 07:10:00'),
(8,  'Benediktus Kristiadi',  '6182201032@student.unpar.ac.id',         NULL,      NULL, 'Admin',   '6182201032', '2024-01-05 07:10:00', '2024-01-05 07:10:00'),
(9,  'Zakky',                 '6186601001@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6186601001', '2024-01-05 07:15:00', '2024-01-05 07:15:00'),
(10, 'Manuel',                '6186601002@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6186601002', '2024-01-05 07:15:00', '2024-01-05 07:15:00'),
(11, 'Juan',                  '6186601003@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6186601003', '2024-01-05 07:15:00', '2024-01-05 07:15:00'),
(12, 'Alfonsus',              '6187701001@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6187701001', '2024-01-20 09:00:00', '2024-01-20 09:00:00'),
(13, 'Andrew',                '6187701002@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6187701002', '2024-01-20 09:05:00', '2024-01-20 09:05:00'),
(14, 'Christofer',            '6187701003@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6187701003', '2024-01-20 09:10:00', '2024-01-20 09:10:00'),
(15, 'Gregorius',             '6187701004@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6187701004', '2024-01-20 09:15:00', '2024-01-20 09:15:00'),
(16, 'Kenneth',               '6187701005@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6187701005', '2024-01-20 09:20:00', '2024-01-20 09:20:00'),
(17, 'Lelipaly',              '6187701006@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6187701006', '2024-01-20 09:25:00', '2024-01-20 09:25:00'),
(18, 'Rafael',                '6187701007@student.unpar.ac.id',         NULL,      NULL, 'Peserta', '6187701007', '2024-01-20 09:30:00', '2024-01-20 09:30:00'),
(19, 'Vandyka',               '6187701008@student.npar.ac.id',         NULL,      NULL, 'Peserta', '6187701008', '2025-01-18 09:00:00', '2025-01-18 09:00:00'),
(20, 'Steven Peserta',          'stevenfebrian401@gmail.com',       NULL,      NULL, 'Peserta', '3619048275', '2025-01-18 09:00:00', '2025-01-18 09:00:00');

-- =============================================
-- 5. KELOMPOK
-- =============================================
ALTER SEQUENCE "kelompok_id_kelompok_seq" RESTART WITH 1;
INSERT INTO "kelompok" ("id_kelompok", "nama_kelompok", "id_batch", "createdAt", "updatedAt") VALUES
(1, 'Kelompok 1', 1, '2024-02-05 08:00:00', '2024-02-05 08:00:00'),
(2, 'Kelompok 2', 1, '2024-02-05 08:10:00', '2024-02-05 08:10:00'),
(3, 'Kelompok 1', 2, '2025-02-05 08:00:00', '2025-02-05 08:00:00'),
(4, 'Kelompok 2', 2, '2025-02-05 08:10:00', '2025-02-05 08:10:00');

-- =============================================
-- 6. PESERTA
-- =============================================
ALTER SEQUENCE "peserta_id_peserta_seq" RESTART WITH 1;
INSERT INTO "peserta" ("id_peserta", "id_user", "id_batch", "id_kelompok", "status", "tanggal_daftar", "createdAt", "updatedAt") VALUES
(1,  6,  1, 1, 'Pelatihan', '2026-06-01 00:00:00', '2026-06-01 00:00:00', '2026-06-01 00:00:00'),
(2,  7,  1, 1, 'Pelatihan', '2026-06-01 00:00:00', '2026-06-01 00:00:00', '2026-06-01 00:00:00'),
(3,  8,  1, 1, 'Pelatihan', '2026-06-01 00:00:00', '2026-06-01 00:00:00', '2026-06-01 00:00:00'),
(4,  9,  1, 2, 'Pelatihan', '2026-06-01 00:00:00', '2026-06-01 00:00:00', '2026-06-01 00:00:00'),
(5, 10,  1, 2, 'Pelatihan', '2026-06-01 00:00:00', '2026-06-01 00:00:00', '2026-06-01 00:00:00'),
(6, 11,  1, 2, 'Pelatihan', '2026-06-01 00:00:00', '2026-06-01 00:00:00', '2026-06-01 00:00:00'),
(15, 20, 1, 1, 'Seleksi Berkas', '2026-06-01 00:00:00', '2026-06-01 00:00:00', '2026-06-01 00:00:00'),

(7,  12, 2, NULL,    'Seleksi Berkas', '2024-01-22 10:05:00', '2024-01-22 10:05:00', '2024-09-01 00:00:00'),
(8,  13, 2, NULL,    'Seleksi Berkas', '2024-01-22 10:05:00', '2024-01-22 10:05:00', '2024-09-01 00:00:00'),
(9,  14, 2, NULL,    'Seleksi Berkas', '2024-01-22 10:10:00', '2024-01-22 10:10:00', '2024-09-01 00:00:00'),
(10, 15, 2, NULL,    'Seleksi Berkas', '2024-01-22 10:15:00', '2024-01-22 10:15:00', '2024-09-01 00:00:00'),
(11, 16, 2, NULL,    'Seleksi Berkas', '2024-01-22 10:20:00', '2024-01-22 10:20:00', '2024-09-01 00:00:00'),
(12, 17, 2, NULL,    'Seleksi Berkas', '2024-01-22 10:25:00', '2024-01-22 10:25:00', '2024-05-10 00:00:00'),
(13, 18, 2, NULL,    'Seleksi Berkas', '2024-01-22 10:30:00', '2024-01-22 10:30:00', '2024-09-01 00:00:00'),
(14, 19, 2, NULL,    'Seleksi Berkas', '2025-01-20 10:00:00', '2025-01-20 10:00:00', '2025-02-01 00:00:00');

-- =============================================
-- 7. PENGUMUMAN
-- =============================================
ALTER SEQUENCE "pengumuman_id_pengumuman_seq" RESTART WITH 1;
INSERT INTO "pengumuman" ("id_pengumuman", "judul", "isi", "tanggal_pengumuman", "id_batch", "id_user", "is_broadcast", "createdAt", "updatedAt") VALUES
(1, 'Lowongan Magang sebagai Admin Labkom 2026',     '<p>Lowongan Tenaga Mahasiswa &nbsp;sebagai Admin Labkom 2026</p>
<p>Selamat sore,<br>Berikut saya informasikan mengenai lowongan tenaga mahasiswa sebagai admin di LabKom FS bagi mahasiswa informatika angkatan 2024. Silahkan membaca keterangan lebih lanjut pada bagian berikut.</p>
<p>Pada tahun ini dibuka kembali lowongan sebagai admin LabKom bagi mahasiswa Informatika angkatan 2024. Dengan menjadi admin LabKom FS, anda berkesempatan untuk:<br>&bull; Menambah pengetahuan di bidang pengelolaan lab, server, devops, dan jaringan.<br>&bull; Melakukan berbagai eksperimen dengan fasilitas yang tersedia.<br>&bull; Mempunyai pengalaman bekerja sehingga terbiasa kerja terorganisir dan mampu membagi waktu.<br>Juga dapat melatih kemampuan softskill lainnya.<br>&bull; Dapat dihitung sebagai SKS kuliah Kerja Praktek dengan minimal masa kerja 3 semester.<br>&bull; Mendapat uang saku sesuai dengan waktu kerja.</p>
<p>Bagi yang tertarik menjadi tenaga mahasiswa admin LabKom FS, silahkan mempersiapkan beberapa hal berikut:<br>&bull; Softcopy Curriculum Vitae terbaru<br>&bull; Transkrip nilai terakhir (semua semester, screenshot dari student portal)<br>&bull; Softcopy KTM<br>&bull; Softcopy foto berwarna 3x4 sebanyak 1 buah<br>&bull; Softcopy motivation Letter, yang isinya mencakup:<br>&nbsp; &nbsp; &bull; apa yang melatarbelakangi / motivasi anda untuk menjadi tenaga magang.<br>&nbsp; &nbsp; &bull; mengapa pekerjaan tersebut cocok untuk anda.<br>&nbsp; &nbsp; &bull; apa keuntungan dan kerugian (menurut anda) menjadiseorang tenaga magang.<br>&nbsp; &nbsp; &bull; hambatan apa saja yang mungkin akan anda hadapi pada saat menjadi tenaga magang dan<br>&nbsp; &nbsp; bagaimana anda akan mengatasinya.<br>&nbsp; &nbsp; &bull; bagaimana pekerjaan tersebut dapat bermanfaat bagi studi anda di UNPAR.<br>&nbsp; &nbsp; &bull; uraian singkat mengapa anda layak untuk mengisi posisi tersebut.<br>&nbsp; &nbsp; &bull; apa kontribusi anda untuk labkom jika anda mengisi posisi tersebut.<br>(format surat tidak terpaku pada pertanyaan diatas, dibuat menggunakan kata-kata sendiri)</p>
<p>Syarat untuk menjadi tenaga admin di LabKomp FS adalah:<br>&bull; Bersedia mengikuti pelatihan selama +/- 1.5 bulan<br>&bull; Dapat mengatur waktu dengan baik untuk menyeimbangkan tugas lab dan perkuliahan.<br>&bull; Bersedia memenuhi kewajiban sebagai tenaga magang admin LabKomp FS dengan konsisten dan<br>mempunyai komitmen.<br>&bull; Tidak sedang magang di divisi lain di lingkungan UNPAR.</p>
<p><br>Silahkan login ke dalam sistem untuk melanjutkan proses pendaftaran.</p>',         '2026-06-03 13:08:00', 1, 2, false,  '2026-06-03 13:08:00', '2026-06-03 13:08:00'),
(2, 'Pelengkapan Dokumen Administrasi',   '<p>Selamat pagi, Diinformasikan kepada seluruh peserta yang telah berhasil login ke dalam sistem untuk segera melengkapi dokumen pada halaman profil untuk melanjutkan proses seleksi pendaftaran. Terima kasih.</p>',                        '2026-06-03 16:08:00', 1, 2, true,  '2026-06-03 16:08:00', '2026-06-03 16:08:00'),

(3, 'Lowongan Magang sebagai Admin Labkom 2025',     '<p>Selamat sore, Berikut saya informasikan mengenai lowongan magang sebagai tenaga admin di labkomp FS bagi mahasiswa informatika angkatan 2023. Silahkan membaca keterangan lebih lanjut pada lampiran berikut.Dan saya tunggu kabar baiknya dari kalian yang tertarik dengan lowongan ini. Jika ada yang mau tanya-tanya dahulu atau ada kendala tertentu boleh langsung menghubungi saya.Terimakasih.</p>',         '2025-06-01 16:08:00', 2, 2, false,  '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(4, 'Pelengkapan Dokumen Administrasi',   '<p>Selamat pagi, Diinformasikan kepada seluruh peserta yang telah berhasil login ke dalam sistem untuk segera melengkapi dokumen pada halaman profil untuk melanjutkan proses seleksi pendaftaran. Terima kasih.</p>',                        '2025-06-01 16:08:00', 2, 2, true,  '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(5, 'Pelatihan Admin','<p>Selamat pagi, Mimin ingin mengucapkan selamat kepada seluruh peserta yang telah lolos ke tahap pelatihan admin. Proses pelatihan akan berlangsung kurang lebih selama 1.5 bulan dengan kurang lebih ada 7 buah tugas yang harus dikerjakan. Detail tugas dapat dilihat pada halaman tugas, dan bagi yang kebingungan dapat bertanya pada kolom komentar tugas yaa. Terima kasih.</p>',                      '2025-06-03 16:08:00', 2, 2, true, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),
(6, 'Penilaian Tugas',     '<p>Selamat Siang<br>PERHATIAN!<br>Penilaian yang kami lakukan untuk tahap sekarang merupakan penilaian individual. Dimohon untuk mengerjakannya secara mandiri dan tidak bekerja sama.<br>Salam,Adminus Labkominus</p>',               '2025-06-05 16:08:00', 2, 2, true,  '2025-06-05 16:08:00', '2025-06-05 16:08:00'),
(7, 'Deadline Tugas',      '<p>Selamat Pagi<br>Selamat menjalani hari ketiga pelatihan. Mimin mau info, untuk pengerjaan tugas, tidak ada tenggat waktunya ya, jadi sesuai pace masing-masing. Jadi usahakan supaya laporan yang diupload selengkap mungkin, sebelum lanjut ke tugas berikutnya.<br>Untuk yang meminta tugas berikutnya, nanti mimin infokan di page tugas masing-masing ya.<br>Salam,<br>Adminus Labkominus</p>',               '2025-06-07 16:08:00', 2, 2, true,  '2025-06-07 16:08:00', '2025-06-07 16:08:00'),
(8, 'Jangan Terburu-Buru',  '<p>Mau menambahkan untuk semua peserta pelatihan. Beberapa evaluasi di 2 hari ini, semua terkesan terburu-buru yang penting tugas selesai, tp melupakan esensi dari pelatihan ini yaitu belajar dan eksplorasi. Hal ini terlihat dari laporan yang diberikan, hasilnya menurut kami hanya yang penting submit dan yang penting bisa minta tugas selanjutnya. Lalu eksplorasi fitur dan validasi benar salahnya tidak tergambar dengan baik. <br>Jika concernnya adalah waktu, seperti disebutkan sebelumnya tidak ada batas waktu, dan setiap tugas memang bukan diatur untuk selesai dalam 1 hari. Diperkirakan untuk keseluruhan pelatihan ini ada di sekitar 7 tugas. <br>Terimakasih. </p>',                       '2025-06-10 16:08:00', 2, 2, true,  '2025-06-10 16:08:00', '2025-06-10 16:08:00'),
(9, 'Libur Pelatihan',      '<p>Selamat Siang<br>Perhatian untuk semuanya!!!<br>Pada hari Kamis(17 Juli 2025) dan Jumat(18 Juli 2025), Pelatihan Admin akan diliburkan karena adanya acara akreditasi yang menggunakan seluruh ruangan Labkom FS.<br>Untuk itu, pada Rabu Sore (16 Juli 2025) diharapkan untuk mengkondisikan lab sesuai dengan kondisi semula dan meletakkan pc yang digunakan di gudang(diberi label nama) . <br>Salam,<br>Admin FS</p>',               '2025-06-13 16:08:00', 2, 2, true,  '2025-06-13 16:08:00', '2025-06-13 16:08:00'),
(10, 'Penggantian PC Rusak',  '<p>Untuk Greg, Kenneth, dan Andrew, silahkan datang ke ruang admin untuk mengganti pc yang rusak dan memilih pc yang lainnya</p>',               '2025-06-13 16:08:00', 2, 3, false,  '2025-06-13 16:08:00', '2025-06-13 16:08:00');

-- =============================================
-- 8. PENERIMA PENGUMUMAN
-- =============================================
ALTER SEQUENCE "penerima_pengumuman_id_penerima_pengumuman_seq" RESTART WITH 1;
INSERT INTO "penerima_pengumuman" ("id_penerima_pengumuman", "id_pengumuman", "id_user", "createdAt", "updatedAt") VALUES
-- Pengumuman 2: Pelengkapan Dokumen 2024 (Batch 2024)
(1,  2, 6,  '2024-06-01 16:08:00', '2024-06-01 16:08:00'),
(2,  2, 7,  '2024-06-01 16:08:00', '2024-06-01 16:08:00'),
(3,  2, 8,  '2024-06-01 16:08:00', '2024-06-01 16:08:00'),
(4,  2, 9,  '2024-06-01 16:08:00', '2024-06-01 16:08:00'),
(5,  2, 10, '2024-06-01 16:08:00', '2024-06-01 16:08:00'),
(6,  2, 11, '2024-06-01 16:08:00', '2024-06-01 16:08:00'),

-- Pengumuman 4: Pelengkapan Dokumen 2025 (Batch 2025)
(7,  4, 12, '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(8,  4, 13, '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(9,  4, 14, '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(10, 4, 15, '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(11, 4, 16, '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(12, 4, 17, '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(13, 4, 18, '2025-06-01 16:08:00', '2025-06-01 16:08:00'),
(14, 4, 19, '2025-06-01 16:08:00', '2025-06-01 16:08:00'),

-- Pengumuman 5: Pelatihan Admin (broadcast, Batch 2025)
(15, 5, 12, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),
(16, 5, 13, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),
(17, 5, 14, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),
(18, 5, 15, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),
(19, 5, 16, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),
(20, 5, 17, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),
(21, 5, 18, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),
(22, 5, 19, '2025-06-03 16:08:00', '2025-06-03 16:08:00'),

-- Pengumuman 6: Penilaian Tugas (broadcast, Batch 2025)
(23, 6, 12, '2025-06-05 16:08:00', '2025-06-05 16:08:00'),
(24, 6, 13, '2025-06-05 16:08:00', '2025-06-05 16:08:00'),
(25, 6, 14, '2025-06-05 16:08:00', '2025-06-05 16:08:00'),
(26, 6, 15, '2025-06-05 16:08:00', '2025-06-05 16:08:00'),
(27, 6, 16, '2025-06-05 16:08:00', '2025-06-05 16:08:00'),
(28, 6, 17, '2025-06-05 16:08:00', '2025-06-05 16:08:00'),
(29, 6, 18, '2025-06-05 16:08:00', '2025-06-05 16:08:00'),
(30, 6, 19, '2025-06-05 16:08:00', '2025-06-05 16:08:00'),

-- Pengumuman 7: Deadline Tugas (broadcast, Batch 2025)
(31, 7, 12, '2025-06-07 16:08:00', '2025-06-07 16:08:00'),
(32, 7, 13, '2025-06-07 16:08:00', '2025-06-07 16:08:00'),
(33, 7, 14, '2025-06-07 16:08:00', '2025-06-07 16:08:00'),
(34, 7, 15, '2025-06-07 16:08:00', '2025-06-07 16:08:00'),
(35, 7, 16, '2025-06-07 16:08:00', '2025-06-07 16:08:00'),
(36, 7, 17, '2025-06-07 16:08:00', '2025-06-07 16:08:00'),
(37, 7, 18, '2025-06-07 16:08:00', '2025-06-07 16:08:00'),
(38, 7, 19, '2025-06-07 16:08:00', '2025-06-07 16:08:00'),

-- Pengumuman 8: Jangan Terburu-Buru (broadcast, Batch 2025)
(39, 8, 12, '2025-06-10 16:08:00', '2025-06-10 16:08:00'),
(40, 8, 13, '2025-06-10 16:08:00', '2025-06-10 16:08:00'),
(41, 8, 14, '2025-06-10 16:08:00', '2025-06-10 16:08:00'),
(42, 8, 15, '2025-06-10 16:08:00', '2025-06-10 16:08:00'),
(43, 8, 16, '2025-06-10 16:08:00', '2025-06-10 16:08:00'),
(44, 8, 17, '2025-06-10 16:08:00', '2025-06-10 16:08:00'),
(45, 8, 18, '2025-06-10 16:08:00', '2025-06-10 16:08:00'),
(46, 8, 19, '2025-06-10 16:08:00', '2025-06-10 16:08:00'),

-- Pengumuman 9: Libur Pelatihan (broadcast, Batch 2025)
(47, 9, 12, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),
(48, 9, 13, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),
(49, 9, 14, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),
(50, 9, 15, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),
(51, 9, 16, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),
(52, 9, 17, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),
(53, 9, 18, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),
(54, 9, 19, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),

-- Pengumuman 10: Penggantian PC Rusak (NON-broadcast, Batch 2025)
(55, 10, 13, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),  -- Andrew
(56, 10, 15, '2025-06-13 16:08:00', '2025-06-13 16:08:00'),  -- Gregorius
(57, 10, 16, '2025-06-13 16:08:00', '2025-06-13 16:08:00');  -- Kenneth

-- =============================================
-- 9. KOMENTAR PENGUMUMAN
-- =============================================
ALTER SEQUENCE "komentar_pengumuman_id_komentar_pengumuman_seq" RESTART WITH 1;
INSERT INTO "komentar_pengumuman" ("id_komentar_pengumuman", "id_pengumuman", "id_user", "isi_komentar", "createdAt", "updatedAt") VALUES
-- Pengumuman 2: Pelengkapan Dokumen 2024
(1, 2, 6, 'Siap min',                                                         '2024-06-02 08:10:00', '2024-06-02 08:10:00'),
(2, 2, 7, 'Baik min, segera saya lengkapi',                                   '2024-06-02 08:30:00', '2024-06-02 08:30:00'),
(3, 2, 8, 'Oke min',                                                          '2024-06-02 09:00:00', '2024-06-02 09:00:00'),

-- Pengumuman 4: Pelengkapan Dokumen 2025
(4, 4, 12, 'Baik min',                                                        '2025-06-02 08:30:00', '2025-06-02 08:30:00'),
(5, 4, 13, 'Siap',                                                            '2025-06-02 09:00:00', '2025-06-02 09:00:00'),
(6, 4, 18, 'Oke min',                                                         '2025-06-02 10:20:00', '2025-06-02 10:20:00'),

-- Pengumuman 5: Pelatihan Admin
(7,  5, 12, 'Terima kasih min',                                               '2025-06-03 17:00:00', '2025-06-03 17:00:00'),
(8,  5, 14, 'Siap, semangat!',                                                '2025-06-03 17:30:00', '2025-06-03 17:30:00'),
(9,  5, 17, 'Baik min',                                                       '2025-06-03 18:00:00', '2025-06-03 18:00:00'),
(10, 5, 19, 'Siap min, mohon bimbingannya',                                   '2025-06-04 08:15:00', '2025-06-04 08:15:00'),

-- Pengumuman 6: Penilaian Tugas
(11, 6, 13, 'Baik kak',                                                       '2025-06-05 17:00:00', '2025-06-05 17:00:00'),
(12, 6, 16, 'Siap min',                                                       '2025-06-05 17:30:00', '2025-06-05 17:30:00'),
(13, 6, 12, 'Noted min',                                                      '2025-06-05 18:00:00', '2025-06-05 18:00:00'),

-- Pengumuman 7: Deadline Tugas
(14, 7, 12, 'Baik min, terima kasih',                                         '2025-06-07 17:00:00', '2025-06-07 17:00:00'),
(15, 7, 19, 'Siap',                                                           '2025-06-07 17:30:00', '2025-06-07 17:30:00'),
(16, 7, 14, 'Oke min',                                                        '2025-06-07 18:00:00', '2025-06-07 18:00:00'),

-- Pengumuman 8: Jangan Terburu-Buru
(17, 8, 14, 'Baik min, akan kami perhatikan',                                 '2025-06-10 17:00:00', '2025-06-10 17:00:00'),
(18, 8, 18, 'Siap min',                                                       '2025-06-10 17:30:00', '2025-06-10 17:30:00'),
(19, 8, 17, 'Mohon maaf min, akan kami perbaiki',                             '2025-06-10 18:00:00', '2025-06-10 18:00:00'),

-- Pengumuman 9: Libur Pelatihan
(20, 9, 13, 'Oke min',                                                        '2025-06-13 17:00:00', '2025-06-13 17:00:00'),
(21, 9, 15, 'Baik min',                                                       '2025-06-13 17:30:00', '2025-06-13 17:30:00'),
(22, 9, 16, 'Siap',                                                           '2025-06-13 18:00:00', '2025-06-13 18:00:00'),

-- Pengumuman 10: Penggantian PC Rusak
(23, 10, 13, 'Siap min',                                                      '2025-06-13 17:00:00', '2025-06-13 17:00:00'),
(24, 10, 15, 'Baik min',                                                      '2025-06-13 17:30:00', '2025-06-13 17:30:00'),
(25, 10, 16, 'Oke min, terima kasih',                                         '2025-06-13 18:00:00', '2025-06-13 18:00:00');

-- =============================================
-- 10. KEHADIRAN
-- =============================================
ALTER SEQUENCE "kehadiran_id_kehadiran_seq" RESTART WITH 1;
INSERT INTO "kehadiran" ("id_kehadiran", "id_peserta", "laporan", "is_verified", "jam_datang", "jam_pulang", "createdAt", "updatedAt") VALUES
-- ============================================
-- Peserta 1: Imanuel Alexander (Diterima)
-- ============================================
(1, 1, '<p>Memulai tugas LAMP Stack di Ubuntu. Sudah berhasil install Apache2, MySQL Server, dan PHP. Test halaman index.html bisa diakses via localhost. Berikutnya akan coba bikin koneksi PHP ke database.</p>', true, '2026-06-01 13:00:00', '2026-06-01 17:15:00', '2026-06-01 13:00:00', '2026-06-01 17:15:00'),
(2, 1, '<p>Lanjut tugas File Sharing Samba di Debian. Konfigurasi smb.conf untuk drive Z mahasiswa dengan kuota 200MB per user. Folder grup dan folder public sudah dibuat. Test akses dari PC lain di lab berhasil mount drive Z.</p>', true, '2026-06-02 13:00:00', '2026-06-02 17:30:00', '2026-06-02 13:00:00', '2026-06-02 17:30:00'),
(3, 1, '<p>Setup Reverse Proxy dengan Nginx. Bikin 2 VM Ubuntu pakai KVM, masing-masing install Apache dengan website sederhana. Konfigurasi Nginx di host OS sebagai reverse proxy ke kedua VM dan setup DNS lokal supaya bisa diakses via domain.</p>', true, '2026-06-03 13:00:00', '2026-06-03 17:45:00', '2026-06-03 13:00:00', '2026-06-03 17:45:00'),
(4, 1, '<p>Tugas Active Directory di Windows Server. Install Windows Server, konfigurasi forest dan domain controller. Setup AD dengan 5 user testing, konfigurasi Group Policy untuk batasi akses Control Panel, dan setup DNS internal. Dokumentasi langkah-langkah sudah dimulai.</p>', true, '2026-06-04 13:00:00', '2026-06-04 18:00:00', '2026-06-04 13:00:00', '2026-06-04 18:00:00'),
(5, 1, '<p>Konfigurasi DNS dan FTP di CentOS. Install bind9 untuk DNS dan vsftpd untuk FTP. Bikin zone forward dan reverse, test resolve domain dari client. FTP berhasil upload-download file dan diakses pakai domain custom.</p>', true, '2026-06-05 13:30:00', '2026-06-05 17:30:00', '2026-06-05 13:30:00', '2026-06-05 17:30:00'),

-- ============================================
-- Peserta 2: Shawn Jonathan (Diterima)
-- ============================================
(6,  2, '<p>Tugas LAMP Stack di Debian. Install Apache, MariaDB, dan PHP 8. Bikin halaman PHP sederhana yang nge-fetch data dari tabel MySQL untuk test koneksi. Web server sudah running di port 80 dan dokumentasi langkah install sudah dirapikan.</p>', true, '2026-06-01 09:00:00', '2026-06-01 12:45:00', '2026-06-01 09:00:00', '2026-06-01 12:45:00'),
(7, 2, '<p>Konfigurasi Samba file sharing di Ubuntu. Setup drive Z untuk mahasiswa dengan kuota 200MB pakai quota tools. Folder grup dosen dan folder public sudah jalan. Test mount dari Windows client di lab sebelah berhasil.</p>', true, '2026-06-02 09:00:00', '2026-06-02 13:30:00', '2026-06-02 09:00:00', '2026-06-02 13:30:00'),
(8, 2, '<p>Reverse Proxy Nginx di Rocky Linux. Bikin 2 VM Apache pakai Proxmox dengan website berbeda (web1.local dan web2.local). Konfigurasi server block Nginx untuk routing berdasarkan domain. Selinux sempat blocking, sudah diatasi pakai setsebool.</p>', true, '2026-06-03 09:00:00', '2026-06-03 13:00:00', '2026-06-03 09:00:00', '2026-06-03 13:00:00'),
(9, 2, '<p>Tugas Active Directory di Windows Server 2022. Promote server ke Domain Controller, setup forest dan tree. Konfigurasi GPO untuk lock screen timer dan password policy. NTP sudah point ke time.windows.com dan client domain sync time dengan benar.</p>', true, '2026-06-04 09:00:00', '2026-06-04 13:45:00', '2026-06-04 09:00:00', '2026-06-04 13:45:00'),
(10, 2, '<p>Konfigurasi Jaringan Mikrotik. Reset router dan switch ke default, setup VLAN 10 dan 20 di switch dengan port access dan trunk. Konfigurasi router sebagai gateway dengan IP static. Test ping antar VLAN dan ke gateway berhasil semua.</p>', true, '2026-06-05 09:00:00', '2026-06-05 13:30:00', '2026-06-05 09:00:00', '2026-06-05 13:30:00'),

-- ============================================
-- Peserta 3: Benediktus Kristiadi (Diterima)
-- ============================================
(11, 3, '<p>LAMP Stack di Fedora. Install httpd, MariaDB, dan PHP via dnf. Selinux dan firewalld awalnya blocking port 80, sudah diatur pakai firewall-cmd. Test koneksi PHP ke MySQL via halaman info.php berhasil tampilin daftar database.</p>', true, '2026-06-01 13:00:00', '2026-06-01 17:30:00', '2026-06-01 13:00:00', '2026-06-01 17:30:00'),
(12, 3, '<p>Samba file sharing di CentOS. Bikin user samba pakai smbpasswd, konfigurasi share drive Z dengan valid users. Folder grup dan public sudah ditest dari client Linux Mint dan Windows 11. Sempat error permission, fix dengan chcon untuk Selinux context.</p>', true, '2026-06-02 13:00:00', '2026-06-02 17:15:00', '2026-06-02 13:00:00', '2026-06-02 17:15:00'),
(13, 3, '<p>Tugas Reverse Proxy Nginx di Debian. Bikin 2 VM Apache di KVM dengan website portfolio dan website blog. Konfigurasi Nginx dengan upstream block dan server_name untuk masing-masing domain. DNS lokal pakai dnsmasq untuk testing dari PC lab.</p>', true, '2026-06-03 13:00:00', '2026-06-03 17:45:00', '2026-06-03 13:00:00', '2026-06-03 17:45:00'),
(14, 3, '<p>Active Directory di Windows Server. Setup AD DS, bikin OU untuk Mahasiswa, Dosen, dan Admin. Konfigurasi roaming profile supaya user data ikut saat login di PC manapun di domain. GPO untuk mapping drive Z otomatis sudah jalan.</p>', true, '2026-06-04 13:00:00', '2026-06-04 18:00:00', '2026-06-04 13:00:00', '2026-06-04 18:00:00'),
(15, 3, '<p>Setup DNS dan FTP di Ubuntu Server. Install bind9, bikin zone untuk labkom.local. Install pure-ftpd, konfigurasi virtual user dan chroot. Test upload-download file via FileZilla dan akses pakai domain ftp.labkom.local sukses.</p>', true, '2026-06-05 13:00:00', '2026-06-05 17:30:00', '2026-06-05 13:00:00', '2026-06-05 17:30:00'),

-- ============================================
-- Peserta 4: Zakky (Ditolak)
-- ============================================
(16, 4, '<p>Tugas LAMP Stack di Ubuntu. Install Apache dan MySQL berhasil, tapi sempat bingung di setting PHP karena versi 8 ada beberapa deprecated function. Web server jalan tapi belum sempat test koneksi PHP-MySQL secara lengkap.</p>', true, '2026-06-01 09:00:00', '2026-06-01 12:30:00', '2026-06-01 09:00:00', '2026-06-01 12:30:00'),
(17, 4, '<p>Lanjut Samba di Ubuntu. Install paket samba dan smbclient. Konfigurasi smb.conf masih ada error sintaks beberapa kali. Drive Z bisa diakses tapi quota belum berhasil diterapkan, akan dipelajari lagi.</p>', true, '2026-06-02 09:00:00', '2026-06-02 13:00:00', '2026-06-02 09:00:00', '2026-06-02 13:00:00'),
(18, 4, '<p>Coba reverse proxy Nginx. Bikin 1 VM Apache dulu di VirtualBox karena KVM masih belum lancar. Konfigurasi Nginx baru jalan untuk 1 backend, multi-domain belum sempat ditest.</p>', true, '2026-06-03 09:00:00', '2026-06-03 13:30:00', '2026-06-03 09:00:00', '2026-06-03 13:30:00'),
(19, 4, '<p>Setup Active Directory di Windows Server. Install Windows Server lewat ISO, promote ke DC sukses. Bikin beberapa user dasar di AD. GPO baru sempat coba 1 policy untuk wallpaper, belum sempat eksplorasi profile dan NTP.</p>', true, '2026-06-04 09:00:00', '2026-06-04 13:00:00', '2026-06-04 09:00:00', '2026-06-04 13:00:00'),
(20, 4, '<p>Konfigurasi DNS pakai bind9 di Ubuntu. Zone forward jalan tapi reverse zone masih error saat resolve. FTP belum sempat dipasang karena kebanyakan waktu habis di troubleshoot DNS.</p>', true, '2026-06-05 09:00:00', '2026-06-05 13:15:00', '2026-06-05 09:00:00', '2026-06-05 13:15:00'),

-- ============================================
-- Peserta 5: Manuel (Ditolak)
-- ============================================
(21, 5, '<p>Mulai tugas LAMP di Debian. Apache dan MySQL berhasil terinstall via apt. PHP-FPM sempat bentrok dengan modul Apache, akhirnya pakai libapache2-mod-php. Test koneksi PHP ke database dengan mysqli_connect berhasil.</p>', true, '2026-06-01 13:00:00', '2026-06-01 17:00:00', '2026-06-01 13:00:00', '2026-06-01 17:00:00'),
(22, 5, '<p>Samba di Debian. Konfigurasi share drive Z dan folder public berjalan. Folder grup masih agak rancu set permissions-nya, beberapa kali percobaan baru bisa write dari user grup. Quota belum diimplementasi.</p>', true, '2026-06-02 13:00:00', '2026-06-02 17:15:00', '2026-06-02 13:00:00', '2026-06-02 17:15:00'),
(23, 5, '<p>Reverse proxy Nginx di Ubuntu. Pakai 2 VM tapi resource laptop kurang mumpuni jadi sering hang. Konfigurasi proxy_pass sempat 502 Bad Gateway, ternyata Apache backend belum jalan. Setelah fix, akses via domain berhasil.</p>', true, '2026-06-03 13:00:00', '2026-06-03 17:30:00', '2026-06-03 13:00:00', '2026-06-03 17:30:00'),
(24, 5, '<p>Active Directory di Windows Server. Forest dan domain sudah konfigurasi. Bikin 3 user testing di AD. Sempat lupa join client ke domain, jadi GPO belum bisa ditest dari sisi client. Dokumentasi masih berantakan, akan dirapikan.</p>', true, '2026-06-04 13:00:00', '2026-06-04 18:00:00', '2026-06-04 13:00:00', '2026-06-04 18:00:00'),
(25, 5, '<p>DNS dan FTP di CentOS. Install bind dan vsftpd. DNS forward zone bisa resolve, tapi FTP passive mode masih ada masalah firewall. Sudah coba buka port range tapi masih kadang timeout, perlu investigasi lebih lanjut.</p>', true, '2026-06-05 13:00:00', '2026-06-05 17:00:00', '2026-06-05 13:00:00', '2026-06-05 17:00:00'),

-- ============================================
-- Peserta 6: Juan (Ditolak)
-- ============================================
(26, 6, '<p>Tugas LAMP di CentOS. Install httpd, mariadb-server, dan php via yum. Sempat lupa enable service supaya autostart waktu boot. Test PHP via halaman test.php sudah keluar phpinfo, tapi koneksi ke database masih error access denied.</p>', true, '2026-06-01 09:00:00', '2026-06-01 13:00:00', '2026-06-01 09:00:00', '2026-06-01 13:00:00'),
(27, 6, '<p>Samba file sharing di Ubuntu. Konfigurasi smb.conf untuk share drive Z mahasiswa. Bikin user pakai smbpasswd. Test akses dari Windows berhasil mount, tapi belum sempat setting kuota 200MB karena bingung pakai quota tools.</p>', true, '2026-06-02 09:00:00', '2026-06-02 12:45:00', '2026-06-02 09:00:00', '2026-06-02 12:45:00'),
(28, 6, '<p>Reverse proxy Nginx di Debian. VM dengan KVM agak lambat, alternatif pakai LXC tapi belum familiar. Akhirnya pakai 2 container Apache. Konfigurasi reverse proxy sudah jalan untuk satu domain, multi-site belum.</p>', true, '2026-06-03 09:00:00', '2026-06-03 13:30:00', '2026-06-03 09:00:00', '2026-06-03 13:30:00'),
(29, 6, '<p>Coba Active Directory di Windows Server. Install dan konfigurasi domain controller. Bikin OU dan beberapa user. GPO untuk disable USB drive sudah test dan jalan di client. Profile dan NTP belum dikonfigurasi.</p>', true, '2026-06-04 09:00:00', '2026-06-04 13:00:00', '2026-06-04 09:00:00', '2026-06-04 13:00:00'),
(30, 6, '<p>Setup DNS pakai bind9 di Debian dan FTP pakai proftpd. DNS jalan untuk forward dan reverse zone. FTP login berhasil, tapi upload file besar suka putus. Belum sempat troubleshoot lebih dalam.</p>', true, '2026-06-05 09:00:00', '2026-06-05 13:15:00', '2026-06-05 09:00:00', '2026-06-05 13:15:00'),

(31, 15, '<p>Tugas LAMP di CentOS. Install httpd, mariadb-server, dan php via yum. Sempat lupa enable service supaya autostart waktu boot. Test PHP via halaman test.php sudah keluar phpinfo, tapi koneksi ke database masih error access denied.</p>', true, '2026-06-01 09:00:00', '2026-06-01 13:00:00', '2026-06-01 09:00:00', '2026-06-01 13:00:00'),
(32, 15, '<p>Samba file sharing di Ubuntu. Konfigurasi smb.conf untuk share drive Z mahasiswa. Bikin user pakai smbpasswd. Test akses dari Windows berhasil mount, tapi belum sempat setting kuota 200MB karena bingung pakai quota tools.</p>', true, '2026-06-02 09:00:00', '2026-06-02 12:45:00', '2026-06-02 09:00:00', '2026-06-02 12:45:00'),
(33, 15, '<p>Reverse proxy Nginx di Debian. VM dengan KVM agak lambat, alternatif pakai LXC tapi belum familiar. Akhirnya pakai 2 container Apache. Konfigurasi reverse proxy sudah jalan untuk satu domain, multi-site belum.</p>', true, '2026-06-03 09:00:00', '2026-06-03 13:30:00', '2026-06-03 09:00:00', '2026-06-03 13:30:00'),
(34, 15, '<p>Coba Active Directory di Windows Server. Install dan konfigurasi domain controller. Bikin OU dan beberapa user. GPO untuk disable USB drive sudah test dan jalan di client. Profile dan NTP belum dikonfigurasi.</p>', true, '2026-06-04 09:00:00', '2026-06-04 13:00:00', '2026-06-04 09:00:00', '2026-06-04 13:00:00'),
(35, 15, '<p>Setup DNS pakai bind9 di Debian dan FTP pakai proftpd. DNS jalan untuk forward dan reverse zone. FTP login berhasil, tapi upload file besar suka putus. Belum sempat troubleshoot lebih dalam.</p>', true, '2026-06-05 09:00:00', '2026-06-05 13:15:00', '2026-06-05 09:00:00', '2026-06-05 13:15:00'),
(36, 15, null, false, null, null, '2026-06-18 09:00:00', '2026-06-18 13:15:00');
(37, 15, null, false, null, null, '2026-06-19 09:00:00', '2026-06-19 13:15:00');

-- =============================================
-- 11. PENUGASAN
-- =============================================
ALTER SEQUENCE "penugasan_id_penugasan_seq" RESTART WITH 1;
INSERT INTO "penugasan" ("id_penugasan", "id_peserta", "id_soal", "id_so", "id_user", "id_kelompok", "status", "tanggal_beri", "tanggal_kumpul", "file_pengumpulan", "createdAt", "updatedAt") VALUES
-- ============================================
-- Peserta 1: Imanuel Alexander (Diterima)
-- ============================================
(1,  1, 1,  1,  3, NULL, 'Selesai', '2026-06-01 09:00:00', '2026-06-01 17:30:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-01 09:00:00', '2026-06-01 17:30:00'),
(2,  1, 2,  7,  4, NULL, 'Selesai', '2026-06-03 09:00:00', '2026-06-03 17:30:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-03 09:00:00', '2026-06-03 17:30:00'),
(3,  1, 3,  1,  2, NULL, 'Selesai', '2026-06-05 09:00:00', '2026-06-05 18:00:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-05 09:00:00', '2026-06-05 18:00:00'),

-- ============================================
-- Peserta 2: Shawn Jonathan (Diterima)
-- ============================================
(4,  2, 1,  7,  3, NULL, 'Selesai', '2026-06-01 09:00:00', '2026-06-01 13:00:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-01 09:00:00', '2026-06-01 13:00:00'),
(5,  2, 2,  1,  4, NULL, 'Selesai', '2026-06-03 09:00:00', '2026-06-03 13:45:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-03 09:00:00', '2026-06-03 13:45:00'),
(6,  2, 3,  5,  2, NULL, 'Selesai', '2026-06-05 09:00:00', '2026-06-05 13:30:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-05 09:00:00', '2026-06-05 13:30:00'),

-- ============================================
-- Peserta 3: Benediktus Kristiadi (Diterima)
-- ============================================
(7,  3, 1,  6,  3, NULL, 'Selesai', '2026-06-01 09:00:00', '2026-06-01 17:45:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-01 09:00:00', '2026-06-01 17:45:00'),
(8,  3, 2,  4,  4, NULL, 'Selesai', '2026-06-03 09:00:00', '2026-06-03 17:30:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-03 09:00:00', '2026-06-03 17:30:00'),
(9,  3, 3,  7,  2, NULL, 'Selesai', '2026-06-05 09:00:00', '2026-06-05 18:00:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-05 09:00:00', '2026-06-05 18:00:00'),

-- ============================================
-- Peserta 4: Zakky (Ditolak)
-- ============================================
(10, 4, 1,  1,  3, NULL, 'Selesai', '2026-06-01 09:00:00', '2026-06-01 12:45:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-01 09:00:00', '2026-06-01 12:45:00'),
(11, 4, 2,  1,  4, NULL, 'Selesai', '2026-06-03 09:00:00', '2026-06-03 13:15:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-03 09:00:00', '2026-06-03 13:15:00'),
(12, 4, 3,  1,  2, NULL, 'Selesai', '2026-06-05 09:00:00', '2026-06-05 13:45:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-05 09:00:00', '2026-06-05 13:45:00'),

-- ============================================
-- Peserta 5: Manuel (Ditolak)
-- ============================================
(13, 5, 1,  7,  3, NULL, 'Selesai', '2026-06-01 09:00:00', '2026-06-01 17:15:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-01 09:00:00', '2026-06-01 17:15:00'),
(14, 5, 2,  7,  4, NULL, 'Selesai', '2026-06-03 09:00:00', '2026-06-03 17:30:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-03 09:00:00', '2026-06-03 17:30:00'),
(15, 5, 3,  1,  2, NULL, 'Selesai', '2026-06-05 09:00:00', '2026-06-05 17:45:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-05 09:00:00', '2026-06-05 17:45:00'),

-- ============================================
-- Peserta 6: Juan (Ditolak)
-- ============================================
(16, 6, 1,  4,  3, NULL, 'Selesai', '2026-06-01 09:00:00', '2026-06-01 13:15:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-01 09:00:00', '2026-06-01 13:15:00'),
(17, 6, 2,  1,  4, NULL, 'Selesai', '2026-06-03 09:00:00', '2026-06-03 13:00:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-03 09:00:00', '2026-06-03 13:00:00'),
(18, 6, 3,  7,  2, NULL, 'Selesai', '2026-06-05 09:00:00', '2026-06-05 13:45:00', '/uploads/batch/Batch 2024/peserta/dummy/laporan/51735206a685e875ea0c81dcc6fe5932.pdf', '2026-06-05 09:00:00', '2026-06-05 13:45:00');


-- =============================================
-- 12. KOMENTAR TUGAS
-- =============================================
ALTER SEQUENCE "komentar_tugas_id_komentar_tugas_seq" RESTART WITH 1;
INSERT INTO "komentar_tugas" ("id_komentar_tugas", "id_penugasan", "id_user", "isi_komentar", "createdAt", "updatedAt") VALUES
-- ============================================
-- Peserta 1: Imanuel Alexander (Diterima)
-- ============================================
-- P1: LAMP (Ubuntu)
(1,  1,  6, 'kak, untuk testing koneksi PHP-MySQL apakah cukup pakai mysqli_connect saja atau harus pakai PDO juga?', '2026-06-01 14:30:00', '2026-06-01 14:30:00'),
(2,  1,  3, 'Pakai mysqli_connect saja sudah cukup untuk tahap ini. Yang penting bisa demo koneksi berhasil.',        '2026-06-01 16:00:00', '2026-06-01 16:00:00'),
(3,  1,  3, 'Laporan diterima. Instalasi rapi dan dokumentasi langkah-langkahnya jelas. Lanjut ke tugas berikutnya.', '2026-06-02 10:15:00', '2026-06-02 10:15:00'),

-- P2: Samba (Debian)
(4,  2,  4, 'Konfigurasi quota 200MB sudah benar. Tambahkan screenshot test akses dari Windows client di revisi laporan ya.', '2026-06-03 11:00:00', '2026-06-03 11:00:00'),
(5,  2,  6, 'Siap kak, akan saya tambahkan screenshot-nya.', '2026-06-03 13:20:00', '2026-06-03 13:20:00'),

-- P3: Nginx Reverse Proxy (Ubuntu)
(6,  3,  2, 'Reverse proxy sudah berhasil routing ke kedua VM. Konfigurasi server_name dan upstream block sudah tepat.', '2026-06-05 09:30:00', '2026-06-05 09:30:00'),


-- ============================================
-- Peserta 2: Shawn Jonathan (Diterima)
-- ============================================
-- P9: LAMP (Debian)
(7,  4,  3, 'LAMP di Debian sudah jalan. Test mysqli_connect berhasil tampilkan data. Lanjut ke Samba ya.',   '2026-06-01 10:00:00', '2026-06-01 10:00:00'),

-- P10: Samba (Ubuntu)
(8,  5,  4, 'kak, quota 200MB nya saya implement pakai quota tools, apakah itu cara yang benar?',            '2026-06-03 10:00:00', '2026-06-03 10:00:00'),
(9,  5,  4, 'Iya betul, pakai quotatool atau setquota. Kalau bisa demo lewatin batas dan ditolak, berarti benar.', '2026-06-03 14:00:00', '2026-06-03 14:00:00'),
(10, 5,  4, 'Konfigurasi Samba sudah baik dan kuota berjalan sesuai harapan.',                               '2026-06-04 11:00:00', '2026-06-04 11:00:00'),

-- P11: Nginx Reverse Proxy (Rocky Linux)
(11, 6,  2, 'Bagus sudah aware soal Selinux. Catatan: lain kali setelah setsebool, jelaskan kenapa policy itu yang dipilih.', '2026-06-05 09:30:00', '2026-06-05 09:30:00'),


-- ============================================
-- Peserta 3: Benediktus Kristiadi (Diterima)
-- ============================================
-- P17: LAMP (Fedora)
(12, 7,  3, 'Bagus sudah aware soal firewalld dan Selinux di Fedora. Dokumentasi troubleshoot-nya jelas.',   '2026-06-01 09:30:00', '2026-06-01 09:30:00'),

-- P18: Samba (CentOS)
(13, 8,  4, 'Catatan chcon untuk Selinux context-nya tepat. Test akses dari Linux Mint dan Windows 11 juga sudah ada.', '2026-06-03 10:00:00', '2026-06-03 10:00:00'),

-- P19: Nginx Reverse Proxy (Debian)
(14, 9,  8, 'kak, untuk DNS lokal saya pakai dnsmasq. Apakah boleh atau harus pakai bind9?',                 '2026-06-05 14:00:00', '2026-06-05 14:00:00'),
(15, 9,  2, 'Boleh dnsmasq untuk testing skala kecil. Tapi di tugas DNS nanti tetap eksplor bind9 ya.',      '2026-06-05 15:30:00', '2026-06-05 15:30:00'),
(16, 9,  2, 'Konfigurasi multi-site Nginx rapi, upstream block jelas. Bagus.',                               '2026-06-05 17:00:00', '2026-06-05 17:00:00'),


-- ============================================
-- Peserta 4: Zakky (Ditolak)
-- ============================================
-- P25: LAMP (Ubuntu)
(17, 10, 3, 'Web server jalan, tapi koneksi PHP-MySQL belum ditest secara lengkap. Lengkapi di laporan revisi.', '2026-06-01 10:00:00', '2026-06-01 10:00:00'),
(18, 10, 9, 'Baik kak, akan saya pelajari ulang bagian deprecated function PHP 8.', '2026-06-01 13:00:00', '2026-06-01 13:00:00'),

-- P26: Samba (Ubuntu)
(19, 11, 4, 'Sintaks smb.conf masih sering error. Tolong pelajari struktur global section vs share section dengan benar. Quota juga belum jalan.', '2026-06-03 10:00:00', '2026-06-03 10:00:00'),

-- P27: Reverse Proxy Nginx (Ubuntu)
(20, 12, 2, 'Tugas mengharuskan 2 VM, bukan 1. Multi-domain juga harus ditest. Tolong dilengkapi sebelum lanjut tugas berikutnya.', '2026-06-05 09:00:00', '2026-06-05 09:00:00'),


-- ============================================
-- Peserta 5: Manuel (Ditolak)
-- ============================================
-- P31: LAMP (Debian)
(21, 13, 3, 'Konfigurasi LAMP di Debian sudah jalan dan koneksi PHP-MySQL berhasil. Cukup baik untuk awal.', '2026-06-01 10:00:00', '2026-06-01 10:00:00'),

-- P32: Samba (Debian)
(22, 14, 4, 'Kuota belum diimplementasi sesuai requirement (200MB per user). Mohon dilengkapi.',             '2026-06-03 11:00:00', '2026-06-03 11:00:00'),

-- P33: Nginx Reverse Proxy (Ubuntu)
(23, 15, 2, 'Catatan: laporan harus mencantumkan resource minimum yang dibutuhkan. Kalau laptop sering hang, gunakan VM dengan resource yang lebih kecil tapi konfigurasi tetap benar.', '2026-06-05 09:00:00', '2026-06-05 09:00:00'),


-- ============================================
-- Peserta 6: Juan (Ditolak)
-- ============================================
-- P37: LAMP (CentOS)
(24, 16, 3, 'Service auto-start sudah di-enable, tapi koneksi DB error access denied belum diperbaiki. Cek user privilege MySQL ya.', '2026-06-01 10:00:00', '2026-06-01 10:00:00'),

-- P38: Samba (Ubuntu)
(25, 17, 4, 'Akses share sudah jalan tapi quota 200MB tidak dikerjakan. Pelajari quota tools (quotatool/setquota) untuk implementasinya.', '2026-06-03 09:30:00', '2026-06-03 09:30:00'),

-- P39: Reverse Proxy Nginx (Debian)
(26, 18, 2, 'Pakai LXC boleh saja, tapi multi-site reverse proxy adalah requirement utama. Single domain belum cukup.', '2026-06-05 10:00:00', '2026-06-05 10:00:00');

-- =============================================
-- 13. DOKUMEN
-- =============================================
ALTER SEQUENCE "dokumen_id_dokumen_seq" RESTART WITH 1;
INSERT INTO "dokumen" ("id_dokumen", "id_peserta", "ktm", "transkrip", "cv", "foto", "motivation_letter", "createdAt", "updatedAt") VALUES
-- Peserta diterima
(1, 1, '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2024-01-23 10:00:00', '2024-01-23 10:00:00'),
(2, 2, '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2024-01-23 10:15:00', '2024-01-23 10:15:00'),
(3, 3, '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2024-01-23 10:30:00', '2024-01-23 10:30:00'),
-- Peserta ditolak
(4, 4, '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2024-01-23 10:45:00', '2024-01-23 10:45:00'),
(5, 5, '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2024-01-23 11:00:00', '2024-01-23 11:00:00'),
(6, 6, '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '/uploads/batch/Batch 2024/peserta/dummy/dokumen/3ab1df7feb7bfef9b7225b82a61e8829.pdf', '2024-01-23 11:15:00', '2024-01-23 11:15:00');

-- =============================================
-- 14. LOG
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
SELECT setval('"log_id_log_seq"',                                 (SELECT MAX("id_log")                  FROM "log"));