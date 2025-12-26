  CREATE DATABASE expense_tracker_database;

  USE expense_tracker_database;



  CREATE TABLE users(
  	 user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
       name VARCHAR(50) NOT NULL,
  	 user_name VARCHAR(50) NOT NULL,
  	 password VARCHAR(255) NOT NULL,
       email VARCHAR(100) NOT NULL,
       mobile_no VARCHAR(10),
  	 active_yn INT DEFAULT 1 ,
  	 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  	 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
       );

  CREATE TABLE categories(
  	category_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      user_id INT NOT NULL,
      category_name VARCHAR(50),
      description VARCHAR(200),
      icon_url VARCHAR(255),
      transaction_type ENUM('INCOME','EXPENSE')NOT NULL DEFAULT 'EXPENSE',
      active_yn INT DEFAULT 1 ,
  	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  --     FOREIGN KEY (user_id) REFERENCES USERS(user_id) ON DELETE CASCADE

  );
  CREATE TABLE transactions(
  	transaction_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      user_id INT NOT NULL,
      category_id INT NOT NULL,
  	amount DECIMAL(10,3),
      date_of_transaction DATE,
      notes VARCHAR(200),

  	active_yn INT DEFAULT 1 ,
  	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

      FOREIGN KEY (user_id) REFERENCES USERS(user_id) ON DELETE CASCADE,
  --     FOREIGN KEY (category_id) REFERENCES CATEGORIES(category_id) ON DELETE CASCADE


  );
  INSERT INTO users (name,user_name, email, password, mobile_no, active_yn)
  VALUES (
    'JOHN DOE',
    'JOHN',
    'johndoe@example.com',
    'password123',
    '9876543210',
    TRUE
  );
  INSERT INTO categories (category_name, user_id, description, transaction_type)
  VALUES
    ('Food', 1, 'Daily food expenses', 'EXPENSE'),
    ('Travel', 1, 'Transport and travel expenses', 'EXPENSE');
  INSERT INTO expenses
  (user_id, category_id, description, notes, amount, date_of_transaction)
  VALUES
    (1, 1, 'Lunch', 'College canteen', 120.50, '2025-01-10'),
    (1, 2, 'Bus Ticket', 'Daily commute', 45.00, '2025-01-11'),
    (1, 1, 'Dinner', 'Food with friends', 250.75, '2025-01-12');

