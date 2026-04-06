INSERT INTO
  soal (judul, deskripsi, bobot, "createdAt", "updatedAt")
VALUES
  -- LAMP Stack
  (
    'LAMP Stack',
    '<ul>
  <li>Pelajari LAMP Stack (Linux, Apache, MySQL, PHP)</li>
  <li>Instalasi Linux, Apache, MySQL, PHP</li>
  <li>Running web server</li>
  <li>Testing web server dengan koneksi database PHP sederhana</li>
</ul>',
    2,
    '2025-03-01 08:12:45+07',
    '2025-03-02 10:15:20+07'
  ),
  -- Samba
  (
    'File Sharing Samba',
    '<ul>
  <li>Pelajari Samba</li>
  <li>Instalasi dan konfigurasi</li>
  <li>Membuat drive Z mahasiswa (kuota 200MB tiap user)</li>
  <li>Membuat folder untuk grup tertentu</li>
  <li>Membuat folder public</li>
  <li>Testing akses Samba dari PC berbeda</li>
</ul>',
    3,
    '2025-03-03 09:21:10+07',
    '2025-03-04 11:45:33+07'
  ),
  -- Reverse Proxy Nginx
  (
    'Reverse Proxy dengan Nginx',
    '<ul>
  <li>Install dua VM menggunakan KVM/Proxmox/Openstack</li>
  <li>Instalasi Nginx pada host OS</li>
  <li>Instalasi Apache pada kedua VM</li>
  <li>Membuat dua website sederhana</li>
  <li>Konfigurasi reverse proxy Nginx dan DNS</li>
  <li>Akses website menggunakan domain</li>
</ul>',
    4,
    '2025-03-05 13:05:44+07',
    '2025-03-06 14:22:18+07'
  ),
  -- Active Directory
  (
    'Active Directory (AD)',
    '<ul>
  <li>Pelajari Windows Server</li>
  <li>Instalasi Windows Server</li>
  <li>Konfigurasi Forest</li>
  <li>Konfigurasi Active Directory (AD)</li>
  <li>Konfigurasi Profile</li>
  <li>Konfigurasi Group Policy Objects (GPO)</li>
  <li>Konfigurasi DNS</li>
  <li>Konfigurasi NTP</li>
  <li>Membuat dokumentasi</li>
</ul>',
    4,
    '2025-03-07 07:55:12+07',
    '2025-03-08 09:30:40+07'
  ),
  -- DNS + FTP
  (
    'DNS dan FTP',
    '<ul>
  <li>Pelajari DNS dan FTP</li>
  <li>Instalasi DNS dan FTP</li>
  <li>Konfigurasi DNS dan FTP</li>
  <li>Menjalankan DNS dan FTP</li>
  <li>Testing FTP upload dan download</li>
  <li>Testing akses FTP melalui domain</li>
</ul>',
    3,
    '2025-03-09 10:10:10+07',
    '2025-03-10 12:20:25+07'
  ),
  -- Mikrotik
  (
    'Jaringan Mikrotik',
    '<ul>
  <li>Reset router dan switch ke default configuration</li>
  <li>Konfigurasi switch (IP, VLAN, port access & trunk)</li>
  <li>Konfigurasi router (IP gateway)</li>
  <li>Set semua IP static</li>
  <li>Konfigurasi PC (IP dan gateway)</li>
  <li>Testing koneksi jaringan menggunakan ping</li>
</ul>',
    4,
    '2025-03-11 08:40:55+07',
    '2025-03-12 11:11:11+07'
  ),
  -- Server Monitoring Cacti
  (
    'Server Monitoring dengan Cacti',
    '<ul>
  <li>Install Apache Web Server</li>
  <li>Konfigurasi firewall</li>
  <li>Install Cacti</li>
  <li>Membuat user monitoring</li>
  <li>Konfigurasi server Cacti</li>
  <li>Konfigurasi SNMP</li>
  <li>Testing akses web Cacti</li>
  <li>Membuat dashboard monitoring</li>
</ul>',
    4,
    '2025-03-13 14:00:00+07',
    '2025-03-14 16:25:30+07'
  ),
  -- MSSQL
  (
    'Microsoft SQL Server',
    '<ul>
  <li>Pelajari Microsoft SQL Server</li>
  <li>Instalasi SQL Server</li>
  <li>Konfigurasi SQL Server</li>
  <li>Import database AdventureWorks</li>
  <li>Membuat beberapa user</li>
  <li>Isolasi database per user</li>
  <li>Membatasi delete database</li>
  <li>Membuat script otomatis user dan database berdasarkan NPM</li>
</ul>',
    3,
    '2025-03-15 09:09:09+07',
    '2025-03-16 10:10:10+07'
  ),
  -- Prometheus & Grafana
  (
    'Monitoring dengan Prometheus dan Grafana',
    '<ul>
  <li>Install Prometheus</li>
  <li>Membuat user monitoring</li>
  <li>Konfigurasi server Prometheus</li>
  <li>Menjadikan Prometheus sebagai service (systemd)</li>
  <li>Install Grafana</li>
  <li>Tambahkan Prometheus sebagai datasource</li>
  <li>Membuat dashboard monitoring</li>
  <li>Import dashboard dari komunitas</li>
  <li>Konfigurasi node exporter</li>
  <li>Monitoring di Grafana</li>
</ul>',
    4,
    '2025-03-17 07:30:45+07',
    '2025-03-18 08:45:50+07'
  ),
  -- Docker + Judge
  (
    'Docker dan Judge System',
    '<ul>
  <li>Install Docker</li>
  <li>Install MariaDB</li>
  <li>Install PhpMyAdmin</li>
  <li>Konfigurasi Reverse Proxy</li>
  <li>Install Judge (semua fitur harus berjalan)</li>
</ul>',
    4,
    '2025-03-19 11:11:11+07',
    '2025-03-20 13:13:13+07'
  ),
  -- Gitlab + Docker
  (
    'Gitlab dengan Docker',
    '<ul>
  <li>Install Docker</li>
  <li>Install Gitlab Server dalam Docker</li>
  <li>Membuat user (admin dan user)</li>
  <li>Test create repository</li>
  <li>Test clone, pull, push</li>
  <li>Create runner CI/CD</li>
  <li>Test CI/CD</li>
</ul>',
    4,
    '2025-03-21 15:20:10+07',
    '2025-03-22 17:30:25+07'
  ),
  (
    'VPN Server dengan WireGuard',
    '<ul>
  <li>Pelajari konsep VPN dan WireGuard</li>
  <li>Instalasi WireGuard pada server Ubuntu/Debian</li>
  <li>Generate public dan private key untuk server dan client</li>
  <li>Konfigurasi interface server dan IP forwarding</li>
  <li>Membuat file konfigurasi untuk peer (client)</li>
  <li>Testing koneksi VPN dari client ke server (ping IP lokal)</li>
</ul>',
    3,
    '2025-03-23 09:00:00+07',
    '2025-03-24 10:00:00+07'
  ),
  -- CI/CD Jenkins + Docker
  (
    'CI/CD Pipeline dengan Jenkins',
    '<ul>
  <li>Pelajari konsep Continuous Integration & Deployment (CI/CD)</li>
  <li>Instalasi Jenkins menggunakan Docker Container</li>
  <li>Konfigurasi akses Docker dari dalam container Jenkins (Docker-in-Docker atau bind socket)</li>
  <li>Membuat Git repository sederhana berisi aplikasi web</li>
  <li>Membuat Jenkinsfile untuk mendefinisikan tahapan pipeline</li>
  <li>Testing otomatisasi build dan push Docker image ke registry lokal</li>
</ul>',
    4,
    '2025-03-25 10:30:15+07',
    '2025-03-26 12:45:20+07'
  ),
  -- Load Balancing HAProxy
  (
    'Load Balancing dengan HAProxy',
    '<ul>
  <li>Pelajari konsep Load Balancing dan High Availability</li>
  <li>Install dua VM sebagai backend server (Apache/Nginx dengan halaman berbeda untuk testing)</li>
  <li>Instalasi HAProxy pada node/VM utama</li>
  <li>Konfigurasi backend dan frontend pada file haproxy.cfg</li>
  <li>Setup algoritma Round Robin</li>
  <li>Testing distribusi traffic web ke kedua backend server</li>
</ul>',
    4,
    '2025-03-27 13:15:00+07',
    '2025-03-28 15:20:10+07'
  ),
  -- Centralized Logging ELK Stack
  (
    'Centralized Logging dengan ELK Stack',
    '<ul>
  <li>Pelajari arsitektur Elasticsearch, Logstash, dan Kibana</li>
  <li>Instalasi ELK Stack menggunakan Docker Compose</li>
  <li>Instalasi Filebeat pada target server (VM terpisah)</li>
  <li>Konfigurasi Filebeat untuk mengirim log system/Nginx ke Logstash</li>
  <li>Membuat index pattern pada dashboard Kibana</li>
  <li>Membuat visualisasi dan monitoring log secara realtime di Kibana</li>
</ul>',
    4,
    '2025-03-29 08:45:30+07',
    '2025-03-30 09:55:40+07'
  ),
  -- Container Orchestration Docker Swarm
  (
    'Container Orchestration dengan Docker Swarm',
    '<ul>
  <li>Pelajari konsep Container Orchestration</li>
  <li>Siapkan 3 VM Docker (1 Manager, 2 Worker)</li>
  <li>Inisialisasi Docker Swarm pada node Manager</li>
  <li>Join Worker node ke dalam kluster Swarm menggunakan token</li>
  <li>Deploy service web server (contoh: Nginx) ke dalam kluster</li>
  <li>Scale up replica menjadi 5 instance</li>
  <li>Testing failover dengan mematikan salah satu node worker</li>
</ul>',
    4,
    '2025-03-31 11:10:00+07',
    '2025-04-01 13:25:35+07'
  );