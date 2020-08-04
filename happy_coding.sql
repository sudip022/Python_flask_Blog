-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2020 at 01:16 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happy coding`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'sudip', 'sudip@gmail.com', '9088765', 'hello this is sudip sharma chapagain you are good to go..!', '2020-08-01 14:31:30'),
(2, 'YAM PRASAD SHARMA', 'sudipsharma20287@gmail.com', '07760491252', 'ok', NULL),
(3, 'sudip sharma', 'sudipsharma20287@gmail.com', '9848767277', 'oh this is so amazing blog love it!', '2020-08-01 14:57:01'),
(4, 'gita', 'gita@gmail.com', '987446344', 'hi your post are amazing !', '2020-08-01 15:20:07'),
(5, 'kb', 'kb@gmail.com', '987567', 'hey this is alert!', '2020-08-01 21:45:22'),
(6, 'kb', 'kb@gmail.com', '987567', 'hey this is alert!', '2020-08-01 21:45:24'),
(7, 'kb', 'kb@gmail.com', '987567', 'hey this is alert!', '2020-08-01 21:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This   about the coding.', 'this is first post of my blog', 'this-is-post1', 'The content of the post are very attractive they can change the thought of how you think about the coding. If MAIL_ASCII_ATTACHMENTS is set to True, filenames will be converted to an ASCII equivalent. This can be useful when using a mail relay that modify mail content and mess up Content-Disposition specification when filenames are UTF-8 encoded. The conversion to ASCII is a basic removal of non-ASCII characters. It should be fine for any unicode character that can be decomposed by NFKD into one or more ASCII characters. If you need romanization/transliteration (i.e ß → ss) then your application should do it and pass a proper ASCII string.', 'about-bg.jpg', '2020-08-04 09:47:37'),
(2, 'Flask-SQLAlchemy', 'Flask SQLAlchemy to your application', 'second-post', 'Flask-SQLAlchemy is an extension for Flask that adds support for SQLAlchemy to your application. It aims to simplify using SQLAlchemy with Flask by providing useful defaults and extra helpers that make it easier to accomplish common tasks.\r\n\r\nSee the SQLAlchemy documentation to learn how to work with the ORM in depth. The following documentation is a brief overview of the most common tasks, as well as the features specific to Flask-SQLAlchemy.', 'home-bg.jpg', '2020-08-02 07:57:14'),
(3, 'Unit tests and suppressing emails', 'third post about flask mail', 'third-post', 'When you are sending messages inside of unit tests, or in a development environment, it’s useful to be able to suppress email sending.\r\n\r\nIf the setting TESTING is set to True, emails will be suppressed. Calling send() on your messages will not result in any messages being actually sent.\r\n\r\nAlternatively outside a testing environment you can set MAIL_SUPPRESS_SEND to False. This will have the same effect.\r\n\r\nHowever, it’s still useful to keep track of emails that would have been sent when you are writing unit tests.\r\n\r\nIn order to keep track of dispatched emails, use the record_messages method:', '', '2020-08-02 08:06:35'),
(4, 'Header injection', 'Header injection fourth post', 'fourth-post', 'To prevent header injection attempts to send a message with newlines in the subject, sender or recipient addresses will result in a BadHeaderError.', '', '2020-08-02 08:07:26'),
(5, 'Signalling support', 'fifth post Signalling ', 'fifth-post', 'Flask-Mail now provides signalling support through a email_dispatched signal. This is sent whenever an email is dispatched (even if the email is not actually sent, i.e. in a testing environment).\r\n\r\nA function connecting to the email_dispatched signal takes a Message instance as a first argument, and the Flask app instance as an optional argument:\r\n\r\ndef log_message(message, app):\r\n    app.logger.debug(message.subject)\r\n\r\nemail_dispatched.connect(log_message)', '', '2020-08-02 08:08:11'),
(6, 'A Minimal Application', 'For the common case', 'sixth-post', 'For the common case of having one Flask application all you have to do is to create your Flask application, load the configuration of choice and then create the SQLAlchemy object by passing it the application.\r\n\r\nOnce created, that object then contains all the functions and helpers from both sqlalchemy and sqlalchemy.orm. Furthermore it provides a class called Model that is a declarative base which can be used to declare models:\r\n\r\nfrom flask import Flask\r\nfrom flask_sqlalchemy import SQLAlchemy\r\n\r\napp = Flask(__name__)\r\napp.config[\'SQLALCHEMY_DATABASE_URI\'] = \'sqlite:////tmp/test.db\'\r\ndb = SQLAlchemy(app)\r\n\r\n\r\nclass User(db.Model):\r\n    id = db.Column(db.Integer, primary_key=True)\r\n    username = db.Column(db.String(80), unique=True, nullable=False)\r\n    email = db.Column(db.String(120), unique=True, nullable=False)\r\n\r\n    def __repr__(self):\r\n        return \'<User %r>\' % self.username', '', '2020-08-02 08:09:44'),
(7, 'this is title', 'title', 'slug-title', 'this is the content where we are posting the new posts!', 'img.jpg', '2020-08-03 21:20:20'),
(8, 'This  about the coding.', 'About Myself', 'new-post', 'tjlk jkbl', 'img.jpg', '2020-08-03 21:20:39'),
(11, 'this is 9th post', 'this is testing', 'nine-pot', 'this is the post where we are testing the pageination!', 'test.jpg', '2020-08-04 11:52:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
