-- Project Series #1: Stock market DB analysis

-- Creating the Database
-- CREATE DATABASE stock_market_db;
-- USE stock_market_db;

-- Creating the inventors table
CREATE TABLE inventors_1 (
  inventors_id INT PRIMARY KEY,
  inventors_Name VARCHAR(50),
  city  VARCHAR(50),
  Acc_opened_dat DATE
);

--  Creating the stock table
CREATE TABLE stocks_1(
  stock_id INT PRIMARY KEY,
  Stock_sym VARCHAR(20),
  company_Name VARCHAR(50),
  Sector VARCHAR(50)
);

-- Creating the trades table
CREATE TABLE trades(
  trade_id INT PRIMARY KEY,
  inventors_id INT,
  stock_id INT,
  trade_date DATE,
  transaction_type VARCHAR(20),
  Quantity FLOAT,
  Price DECIMAL(10,2),
  foreign key (stock_id) REFERENCES stock(stock_id)
);

-- Creating the daily price table
CREATE TABLE daily_price(
  price_id INT PRIMARY KEY,
  stock_id INT,
  price_date DATE,
  open_price DECIMAL(10,2),
  close_price DECIMAL(10,2),
  high_price DECIMAL(10,2),
  low_price DECIMAL(10,2),
  volume BIGINT,
  foreign key (stock_id) REFERENCES stock(stock_id)
);

-- insert sample inventors
INSERT INTO inventors_1 value
(1, 'Rahul Sharma', 'Mumbai', '2023-01-21'),
(2, 'Priya Verma', 'Delhi', '2023-04-12'),
(3, 'Kishor Kumar','Kolkota', '2023-05-20'),
(4, 'Ramya Rao','Bengaluru', '2024-02-22'),
(5, 'Sreehari SK','Chennai', '2023-08-01'),
(6, 'Yoganjaneyalu','Hyderbad','2024-06-03');

-- insert sample stocks
INSERT INTO stocks_1 VALUES
(101, 'TCS', 'Tata Consultancy Services', 'IT'),
(102, 'INFY', 'Infosys', 'IT'),
(103, 'RELIANCE', 'RIL', 'Energy'),
(104, 'HDFCBANK', 'HDFC Bank', 'Banking'),
(105, 'TATAMOTORS', 'Tata Motors', 'Automobile'),
(106, 'HOTELTAJ', 'Hotel Taj', 'Services');

-- insert sample trades
INSERT INTO trades value
(1001, 101, '2025-01-05', 'BUY', 10,4200),
(1002, 102, '2025-01-06', 'BUY', 20,4500),
(1003, 103, '2025-01-07', 'SELL', 6,2500),
(1004, 104, '2025-01-08', 'SELL', 15,2500),
(1005, 105, '2025-01-09', 'BUY', 21,5000),
(1006, 106, '2025-01-10', 'BUY', 6,1000);
	
-- insert sample daily process
INSERT INTO daily_price value
(1, 101, '2025-01-05', 4180,4125,4235,4170, 120000),
(2, 102, '2025-01-06', 1850,1750,1812,1690, 98000),
(3, 103, '2025-01-07', 2571,2300,2680,2250, 100000),
(4, 104, '2025-01-08', 3580,2955,3700,2900, 110000),
(5, 105, '2025-01-09', 4800,3200,5100,3120, 78000),
(6, 106, '2025-01-10', 2100,3500,4500,3100, 150600);

UPDATE trades SET price = 4350 WHERE trade_id = 1001;
DELETE FROM trades WHERE trade_id = 1006;
-- # Continue...
