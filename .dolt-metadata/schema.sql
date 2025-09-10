-- Database schema exported from Dolt
-- Generated at: 2025-09-10T02:40:26+01:00

-- Table: departments
CREATE TABLE `departments` (
  `id` int NOT NULL,
  `name` varchar(50),
  `budget` int,
  `manager` varchar(100),
  PRIMARY KEY (`id`)
);

-- Table: employees
CREATE TABLE `employees` (
  `id` int NOT NULL,
  `name` varchar(100),
  `department` varchar(50),
  `salary` int,
  `hire_date` date,
  PRIMARY KEY (`id`)
);

