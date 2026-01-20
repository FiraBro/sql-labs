DROP TABLE IF EXISTS employers;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS conversations;

-- CREATE TYPE current_status AS ENUM('employed', 'unemployed', 'self-employed');

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(250) UNIQUE NOT NULL,
    yearly_salary INT CHECK(yearly_salary > 0) NOT NULL,
    current_status ENUM('employed', 'unemployed', 'self-employed') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE employers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(100) UNIQUE NOT NULL,
    company_address VARCHAR(200) NOT NULL,  
    yearly_revenue INT CHECK (yearly_revenue > 0) NOT NULL,
    is_hiring BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE conversations (
    user_id INT ,
    employer_id INT ,
    message TEXT
);