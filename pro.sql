CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10),
    aadhar VARCHAR(12) UNIQUE NOT NULL,
    alternate_id VARCHAR(255),
    region VARCHAR(255),
    photo VARCHAR(255),
    signature VARCHAR(255)
);
CREATE TABLE parties (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    symbol VARCHAR(255) NOT NULL,
    region VARCHAR(255)
);
CREATE TABLE votes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    party_id INT,
    region VARCHAR(255),
    timestamp TIMESTAMP
);
CREATE TABLE results (
    id INT PRIMARY KEY AUTO_INCREMENT,
    region VARCHAR(255),
    party_id INT,
    candidate VARCHAR(255),
    votes INT
);
CREATE DATABASE IF NOT EXISTS OnlineMerchStore;

USE OnlineMerchStore;

CREATE TABLE IF NOT EXISTS Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    dob DATE NOT NULL,
    gender ENUM('male', 'female', 'other') NOT NULL,
    aadhar VARCHAR(12) NOT NULL,
    govt_id VARCHAR(255),
    region VARCHAR(255) NOT NULL,
    photo_filename VARCHAR(255) NOT NULL,
    signature_filename VARCHAR(255) NOT NULL
);
CREATE DATABASE voting_system;

USE voting_system;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    dob DATE NOT NULL,
    region VARCHAR(255) NOT NULL,
    has_voted BOOLEAN DEFAULT 0
);

CREATE TABLE parties (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    symbol VARCHAR(255) NOT NULL,
    politician VARCHAR(255) NOT NULL,
    region VARCHAR(255) NOT NULL
);

CREATE TABLE votes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    party_id INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Regions table
CREATE TABLE regions (
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(255)
);

-- Parties table
CREATE TABLE parties (
    party_id INT AUTO_INCREMENT PRIMARY KEY,
    party_name VARCHAR(255)
);

-- Politicians table
CREATE TABLE politicians (
    politician_id INT AUTO_INCREMENT PRIMARY KEY,
    politician_name VARCHAR(255),
    party_id INT,
    region_id INT
);

-- Users table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255)
);

-- Votes table
CREATE TABLE votes (
    vote_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    politician_id INT,
    region_id INT,
    vote_timestamp DATETIME
);
