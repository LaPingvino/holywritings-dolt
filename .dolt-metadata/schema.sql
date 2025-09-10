-- Database schema exported from Dolt
-- Generated at: 2025-09-10T02:43:59+01:00

-- Table: dolt_query_catalog
CREATE TABLE `dolt_query_catalog` (
  `id` varchar(16383) NOT NULL,
  `display_order` bigint unsigned NOT NULL,
  `name` varchar(16383),
  `query` varchar(16383),
  `description` varchar(16383),
  PRIMARY KEY (`id`)
);

-- Table: languages
CREATE TABLE `languages` (
  `langcode` varchar(16) NOT NULL,
  `inlang` varchar(16) NOT NULL,
  `name` varchar(255),
  PRIMARY KEY (`langcode`, `inlang`)
);

-- Table: prayer_heuristics
CREATE TABLE `prayer_heuristics` (
  `id` int NOT NULL,
  `phelps_code` varchar(16),
  `prayer_name` varchar(255),
  `language_pattern` varchar(50),
  `text_pattern` text,
  `pattern_type` enum('exact_match','regex','contains','starts_with','header_extract'),
  `confidence_level` enum('high','medium','low'),
  `notes` text,
  `created_date` timestamp,
  `validated` tinyint(1),
  `match_count` int,
  PRIMARY KEY (`id`)
);

-- Table: prayer_match_candidates
CREATE TABLE `prayer_match_candidates` (
  `id` int NOT NULL,
  `version_id` varchar(255),
  `proposed_name` varchar(255),
  `proposed_phelps` varchar(16),
  `language` varchar(16),
  `text_length` int,
  `reference_length` int,
  `length_ratio` decimal(5,2),
  `confidence_score` decimal(5,2),
  `validation_status` enum('pending','approved','rejected'),
  `validation_notes` text,
  `created_date` timestamp,
  PRIMARY KEY (`id`)
);

-- Table: writings
CREATE TABLE `writings` (
  `phelps` varchar(16),
  `language` varchar(16),
  `version` varchar(255) NOT NULL,
  `name` varchar(255),
  `type` varchar(255),
  `notes` text,
  `link` varchar(255),
  `text` longtext,
  `source` varchar(255),
  `source_id` varchar(255),
  PRIMARY KEY (`version`)
);

