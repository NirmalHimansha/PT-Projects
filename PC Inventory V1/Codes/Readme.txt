<SQL>

CREATE DATABASE pc_inventory;
USE pc_inventory;

CREATE TABLE pcs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    serial_no VARCHAR(50) UNIQUE NOT NULL,
    section VARCHAR(100),
    user_name VARCHAR(100),
    computer_name VARCHAR(100),
    monitor_brand_size VARCHAR(100),
    cpu_type VARCHAR(100),
    cpu_brand VARCHAR(100),
    processor VARCHAR(100),
    ram VARCHAR(50),
    hard_disk_gb VARCHAR(50),
    operating_system VARCHAR(100),
    system_type VARCHAR(100),
    office_package VARCHAR(100),
    navision VARCHAR(100),
    nav_user_name VARCHAR(100),
    other_software TEXT,
    teamviewer_id VARCHAR(100),
    mobile_email VARCHAR(100),
    service_tag VARCHAR(100),
    date_of_issue DATE
);
