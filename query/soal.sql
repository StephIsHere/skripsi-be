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
    5,
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
    7,
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
    8,
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
    9,
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
    6,
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
    8,
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
    8,
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
    7,
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
    9,
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
    9,
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
    8,
    '2025-03-21 15:20:10+07',
    '2025-03-22 17:30:25+07'
  );