--Creates a Database and drops it if exists
USE master;
GO
DROP DATABASE  if exists Matchplus
GO
CREATE DATABASE Matchplus;
GO

--Create table "User" and populate it with data
USE matchplus;

CREATE TABLE "User"  (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Password VARCHAR(50),
    DateOfBirth DATE,
    Location VARCHAR(100),
    Gender VARCHAR(10)
);

INSERT INTO "User" (UserID, Username, FirstName, LastName, Email, Password, DateOfBirth, Location, Gender)
VALUES
    (1, 'user1', 'John', 'Doe', 'user1@example.com', 'password1', '1990-01-01', 'Houston, Texas', 'Male'),
    (2, 'user2', 'Jane', 'Smith', 'user2@example.com', 'password2', '1995-05-15', 'Dallas, Texas', 'Female'),
    (3, 'user3', 'Michael', 'Johnson', 'user3@example.com', 'password3', '1988-09-20', 'Austin, Texas', 'Male'),
    (4, 'user4', 'Emily', 'Brown', 'user4@example.com', 'password4', '1992-03-10', 'San Antonio, Texas', 'Female'),
    (5, 'user5', 'Daniel', 'Wilson', 'user5@example.com', 'password5', '1985-07-25', 'Dallas, Texas', 'Male'),
    (6, 'user6', 'Sophia', 'Martinez', 'user6@example.com', 'password6', '1998-12-05', 'Houston, Texas', 'Female'),
    (7, 'user7', 'David', 'Anderson', 'user7@example.com', 'password7', '1990-10-30', 'Austin, Texas', 'Male'),
    (8, 'user8', 'Olivia', 'Taylor', 'user8@example.com', 'password8', '1982-04-18', 'Dallas, Texas', 'Female'),
    (9, 'user9', 'James', 'Thomas', 'user9@example.com', 'password9', '1996-06-22', 'Houston, Texas', 'Male'),
    (10, 'user10', 'Emma', 'Hernandez', 'user10@example.com', 'password10', '1987-08-12', 'San Antonio, Texas', 'Female'),
    (11, 'user11', 'Ethan', 'Lopez', 'user11@example.com', 'password11', '1983-02-28', 'Austin, Texas', 'Male'),
    (12, 'user12', 'Ava', 'Gonzalez', 'user12@example.com', 'password12', '1991-11-08', 'Dallas, Texas', 'Female'),
    (13, 'user13', 'Alexander', 'Perez', 'user13@example.com', 'password13', '1994-09-03', 'Houston, Texas', 'Male'),
    (14, 'user14', 'Mia', 'Wilson', 'user14@example.com', 'password14', '1986-07-17', 'San Antonio, Texas', 'Female'),
    (15, 'user15', 'Benjamin', 'Moore', 'user15@example.com', 'password15', '1997-05-20', 'Austin, Texas', 'Male'),
    (16, 'user16', 'Charlotte', 'Rivera', 'user16@example.com', 'password16', '1989-03-12', 'Dallas, Texas', 'Female'),
    (17, 'user17', 'William', 'Davis', 'user17@example.com', 'password17', '1993-01-28', 'Houston, Texas', 'Male'),
    (18, 'user18', 'Amelia', 'Clark', 'user18@example.com', 'password18', '1984-11-05', 'San Antonio, Texas', 'Female'),
    (19, 'user19', 'Henry', 'Lewis', 'user19@example.com', 'password19', '1999-08-22', 'Austin, Texas', 'Male'),
    (20, 'user20', 'Sophie', 'Young', 'user20@example.com', 'password20', '1981-06-15', 'Dallas, Texas', 'Female');

	--Creates and populates a table based on the data above for "Profile"
	CREATE TABLE "Profile" (
    ProfileID INT PRIMARY KEY,
    UserID INT,
    Bio TEXT,
    Interests TEXT,
    Weight DECIMAL(5,2),
    Height DECIMAL(5,2),
    EducationLevel VARCHAR(50),
    Ethnicity VARCHAR(50),
    Age INT,
    FOREIGN KEY (UserID) REFERENCES "User" (UserID)
);

INSERT INTO Profile (ProfileID, UserID, Bio, Interests, Weight, Height, EducationLevel, Ethnicity, Age)
VALUES
    (1, 1, 'I love hiking and photography.', 'Hiking, Photography', 68.5, 175, 'Bachelor''s Degree', 'Caucasian', 30),
    (2, 2, 'Passionate about cooking and travel.', 'Cooking, Traveling', 62.3, 160, 'High School Diploma', 'Hispanic', 25),
    (3, 3, 'Fitness enthusiast and bookworm.', 'Fitness, Reading', 73.1, 180, 'Master''s Degree', 'African American', 35),
    (4, 4, 'Tech geek and movie buff.', 'Technology, Movies', 65.8, 168, 'Bachelor''s Degree', 'Asian', 28),
    (5, 5, 'Music lover and adventure seeker.', 'Music, Adventure', 70.2, 172, 'High School Diploma', 'Caucasian', 27),
    (6, 6, 'Art enthusiast and foodie.', 'Art, Food', 61.5, 155, 'Bachelor''s Degree', 'Hispanic', 24),
    (7, 7, 'Nature lover and animal rights advocate.', 'Nature, Animal Rights', 79.9, 185, 'PhD', 'Caucasian', 40),
    (8, 8, 'Fashionista and travel junkie.', 'Fashion, Traveling', 55.0, 160, 'Bachelor''s Degree', 'Asian', 26),
    (9, 9, 'Sports fan and adrenaline junkie.', 'Sports, Adventure', 85.3, 190, 'High School Diploma', 'African American', 33),
    (10, 10, 'Environmental activist and film enthusiast.', 'Environment, Film', 63.7, 165, 'Bachelor''s Degree', 'Hispanic', 29),
    (11, 11, 'Tech enthusiast and gamer.', 'Technology, Gaming', 72.4, 180, 'Master''s Degree', 'Caucasian', 32),
    (12, 12, 'Fitness guru and outdoor enthusiast.', 'Fitness, Outdoors', 64.0, 170, 'Bachelor''s Degree', 'Hispanic', 28),
    (13, 13, 'Musician and travel addict.', 'Music, Traveling', 68.9, 175, 'High School Diploma', 'Caucasian', 26),
    (14, 14, 'Art lover and animal rights activist.', 'Art, Animal Rights', 78.2, 185, 'PhD', 'Asian', 41),
    (15, 15, 'Fashion designer and food critic.', 'Fashion, Food', 53.6, 160, 'Bachelor''s Degree', 'Hispanic', 27),
    (16, 16, 'Sports enthusiast and adrenaline junkie.', 'Sports, Adventure', 82.7, 188, 'High School Diploma', 'African American', 34),
    (17, 17, 'Nature lover and environmentalist.', 'Nature, Environment', 75.1, 180, 'Master''s Degree', 'Caucasian', 37),
    (18, 18, 'Movie buff and tech geek.', 'Movies, Technology', 70.5, 175, 'Bachelor''s Degree', 'Asian', 31),
    (19, 19, 'Bookworm and coffee addict.', 'Reading, Coffee', 63.2, 165, 'High School Diploma', 'Hispanic', 30),
    (20, 20, 'Adventure seeker and thrill lover.', 'Adventure, Thrill', 87.0, 195, 'Bachelor''s Degree', 'African American', 36);

	--Creates and populates a table for "Subscription" 

	CREATE TABLE Subscription (
    SubscriptionID INT PRIMARY KEY,
    UserID INT,
    SubscriptionType VARCHAR(50),
    SubscriptionStatus VARCHAR(50),
    SubscriptionStartDate DATE,
    SubscriptionEndDate DATE,
    FOREIGN KEY (UserID) REFERENCES "User"(UserID)
);

INSERT INTO Subscription (SubscriptionID, UserID, SubscriptionType, SubscriptionStatus, SubscriptionStartDate, SubscriptionEndDate)
VALUES
    (1, 1, 'Premium', 'Active', '2023-01-01', '2023-12-31'),
    (2, 2, 'Basic', 'Active', '2023-02-15', '2023-08-15'),
    (3, 3, 'Premium', 'Active', '2023-03-20', '2024-03-20'),
    (4, 4, 'Basic', 'Active', '2023-04-10', '2023-10-10'),
    (5, 5, 'Premium', 'Active', '2023-05-25', '2024-05-25'),
    (6, 6, 'Basic', 'Active', '2023-06-05', '2023-12-05'),
    (7, 7, 'Premium', 'Active', '2023-07-30', '2024-07-30'),
    (8, 8, 'Basic', 'Active', '2023-08-18', '2024-02-18'),
    (9, 9, 'Premium', 'Active', '2023-09-22', '2024-09-22'),
    (10, 10, 'Basic', 'Active', '2023-10-12', '2024-04-12'),
    (11, 11, 'Premium', 'Active', '2023-11-28', '2024-11-28'),
    (12, 12, 'Basic', 'Active', '2023-12-10', '2024-06-10'),
    (13, 13, 'Premium', 'Active', '2024-01-03', '2025-01-03'),
    (14, 14, 'Basic', 'Active', '2024-02-17', '2024-08-17'),
    (15, 15, 'Premium', 'Active', '2024-03-20', '2025-03-20'),
    (16, 16, 'Basic', 'Active', '2024-04-05', '2024-10-05'),
    (17, 17, 'Premium', 'Active', '2024-05-12', '2025-05-12'),
    (18, 18, 'Basic', 'Active', '2024-06-28', '2025-06-28'),
    (19, 19, 'Premium', 'Active', '2024-07-15', '2025-07-15'),
    (20, 20, 'Basic', 'Active', '2024-08-01', '2025-02-01');

	--Creates and populates a table for "UserInteraction" 
CREATE TABLE UserInteraction (
    UserInteractionID INT PRIMARY KEY,
    Likes INT,
    Dislikes INT,
    MatchCount INT,
    ProfileViews INT,
    ProfileID INT,
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID)
);

INSERT INTO UserInteraction (UserInteractionID, Likes, Dislikes, MatchCount, ProfileViews, ProfileID)
VALUES
    (1, 10, 5, 3, 100, 1),
    (2, 15, 2, 6, 120, 2),
    (3, 8, 3, 2, 80, 3),
    (4, 12, 6, 5, 150, 4),
    (5, 6, 1, 4, 90, 5),
    (6, 18, 4, 7, 200, 6),
    (7, 9, 2, 3, 110, 7),
    (8, 11, 7, 6, 130, 8),
    (9, 7, 3, 4, 70, 9),
    (10, 14, 5, 8, 180, 10),
    (11, 10, 4, 3, 100, 11),
    (12, 16, 3, 7, 150, 12),
    (13, 8, 1, 5, 80, 13),
    (14, 13, 6, 9, 190, 14),
    (15, 9, 2, 6, 110, 15),
    (16, 11, 3, 4, 130, 16),
    (17, 5, 1, 2, 60, 17),
    (18, 12, 4, 8, 140, 18),
    (19, 7, 2, 5, 90, 19),
    (20, 15, 6, 10, 200, 20);

	--Creates and populates a table for "UserActivity" 
CREATE TABLE UserActivity (
    UserActivityID INT PRIMARY KEY,
    ProfileID INT,
    LoginHistory DATETIME,
    SearchQueries INT,
    AppUsagePerSession TIME,
    TotalTimeInApp TIME,
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID)
);

INSERT INTO UserActivity (UserActivityID, ProfileID, LoginHistory, SearchQueries, AppUsagePerSession, TotalTimeInApp)
VALUES
    (1, 1, '2024-04-01 08:30:00', 5, '00:10:00', '02:00:00'),
    (2, 2, '2024-04-02 10:15:00', 8, '00:12:00', '02:30:00'),
    (3, 3, '2024-04-03 12:45:00', 3, '00:08:00', '01:30:00'),
    (4, 4, '2024-04-04 15:20:00', 10, '00:15:00', '03:00:00'),
    (5, 5, '2024-04-05 09:10:00', 6, '00:11:00', '02:10:00'),
    (6, 6, '2024-04-06 11:55:00', 7, '00:13:00', '02:40:00'),
    (7, 7, '2024-04-07 14:25:00', 4, '00:09:00', '01:50:00'),
    (8, 8, '2024-04-08 08:40:00', 9, '00:14:00', '02:45:00'),
    (9, 9, '2024-04-09 10:05:00', 5, '00:10:00', '02:00:00'),
    (10, 10, '2024-04-10 12:30:00', 8, '00:12:00', '02:30:00'),
    (11, 11, '2024-04-11 15:00:00', 3, '00:08:00', '01:30:00'),
    (12, 12, '2024-04-12 09:20:00', 10, '00:15:00', '03:00:00'),
    (13, 13, '2024-04-13 11:45:00', 6, '00:11:00', '02:10:00'),
    (14, 14, '2024-04-14 14:10:00', 7, '00:13:00', '02:40:00'),
    (15, 15, '2024-04-15 08:55:00', 4, '00:09:00', '01:50:00'),
    (16, 16, '2024-04-16 10:35:00', 9, '00:14:00', '02:45:00'),
    (17, 17, '2024-04-17 12:50:00', 5, '00:10:00', '02:00:00'),
    (18, 18, '2024-04-18 15:15:00', 8, '00:12:00', '02:30:00'),
    (19, 19, '2024-04-19 09:00:00', 3, '00:08:00', '01:30:00'),
    (20, 20, '2024-04-20 11:40:00', 10, '00:15:00', '03:00:00');

	--Creates and populates a table for "Message" 
CREATE TABLE Message (
    MessageID INT PRIMARY KEY,
    UserID INT,
    MessageUser1ID INT,
    MessageUser2ID INT,
    MessageDate DATETIME,
    Message VARCHAR(500),
    FOREIGN KEY (UserID) REFERENCES "User" (UserID)
);

INSERT INTO Message (MessageID, UserID, MessageUser1ID, MessageUser2ID, MessageDate, Message)
VALUES
    (1, 1, 1, 2, '2024-04-01 08:30:00', 'Hey there, how are you?'),
    (2, 2, 2, 1, '2024-04-02 10:15:00', 'Hi! I''m good, thanks. How about you?'),
    (3, 1, 1, 3, '2024-04-03 12:45:00', 'Hello! Do you want to hang out this weekend?'),
    (4, 3, 3, 1, '2024-04-04 15:20:00', 'Sure, that sounds great!'),
    (5, 2, 2, 3, '2024-04-05 09:10:00', 'What are you up to today?'),
    (6, 3, 3, 2, '2024-04-06 11:55:00', 'I''m going to the gym in the morning, and then meeting some friends in the evening.'),
    (7, 1, 1, 4, '2024-04-07 14:25:00', 'Hey, I have a question about the project we''re working on.'),
    (8, 4, 4, 1, '2024-04-08 08:40:00', 'Sure, feel free to ask!'),
    (9, 2, 2, 4, '2024-04-09 10:05:00', 'Did you see the new movie that came out?'),
    (10, 4, 4, 2, '2024-04-10 12:30:00', 'Not yet, but I heard it''s really good!');

	--Creates and populates a table for "Block" 
CREATE TABLE Block (
    BlockID INT PRIMARY KEY,
    ProfileID INT,
    BlockerUserID INT,
    BlockedUserID INT,
    BlockDate DATETIME,
    UnblockDate DATETIME,
    BlockReason VARCHAR(255),
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID)
);

INSERT INTO Block (BlockID, ProfileID, BlockerUserID, BlockedUserID, BlockDate, UnblockDate, BlockReason)
VALUES
    (1, 1, 2, 3, '2024-04-01 08:30:00', NULL, 'Inappropriate behavior'),
    (2, 2, 3, 1, '2024-04-02 10:15:00', NULL, 'Harassment'),
    (3, 1, 4, 2, '2024-04-03 12:45:00', '2024-04-05 11:00:00', 'Spamming'),
    (4, 3, 1, 4, '2024-04-04 15:20:00', NULL, 'Abusive language'),
    (5, 2, 4, 3, '2024-04-05 09:10:00', NULL, 'Fake profile'),
    (6, 3, 2, 1, '2024-04-06 11:55:00', NULL, 'Inappropriate content'),
    (7, 1, 3, 4, '2024-04-07 14:25:00', NULL, 'Trolling'),
    (8, 4, 1, 3, '2024-04-08 08:40:00', NULL, 'Impersonation'),
    (9, 2, 2, 4, '2024-04-09 10:05:00', NULL, 'Violence'),
    (10, 4, 3, 1, '2024-04-10 12:30:00', '2024-04-12 14:00:00', 'Disrespect');

	--Creates and populates a table for "Report"
CREATE TABLE Report (
    ReportID INT PRIMARY KEY,
    ProfileID INT,
    User1ID INT,
    User2ID INT,
    ReportDate DATETIME,
    ReportReason VARCHAR(255),
    ReportStatus VARCHAR(50),
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID),
    FOREIGN KEY (User1ID) REFERENCES "User"(UserID),
    FOREIGN KEY (User2ID) REFERENCES "User"(UserID)
);
INSERT INTO Report (ReportID, ProfileID, User1ID, User2ID, ReportDate, ReportReason, ReportStatus)
VALUES
    (1, 1, 2, 3, '2024-04-01 08:30:00', 'Inappropriate behavior', 'Pending'),
    (2, 2, 3, 1, '2024-04-02 10:15:00', 'Harassment', 'Pending'),
    (3, 1, 4, 2, '2024-04-03 12:45:00', 'Spamming', 'Resolved'),
    (4, 3, 1, 4, '2024-04-04 15:20:00', 'Abusive language', 'Pending'),
    (5, 2, 4, 3, '2024-04-05 09:10:00', 'Fake profile', 'Resolved'),
    (6, 3, 2, 1, '2024-04-06 11:55:00', 'Inappropriate content', 'Pending'),
    (7, 1, 3, 4, '2024-04-07 14:25:00', 'Trolling', 'Resolved'),
    (8, 4, 1, 3, '2024-04-08 08:40:00', 'Impersonation', 'Pending'),
    (9, 2, 2, 4, '2024-04-09 10:05:00', 'Violence', 'Resolved'),
    (10, 4, 3, 1, '2024-04-10 12:30:00', 'Disrespect', 'Pending');

	--Creates and populates a table for "Notification"
CREATE TABLE Notification (
    NotificationID INT PRIMARY KEY,
    UserID INT,
    NotificationType VARCHAR(50),
    NotificationDate DATETIME,
    NotificationText VARCHAR(255),
    SeenStatus VARCHAR(10),
    FOREIGN KEY (UserID) REFERENCES "User" (UserID)
);
INSERT INTO Notification (NotificationID, UserID, NotificationType, NotificationDate, NotificationText, SeenStatus)
VALUES
    (1, 1, 'Friend Request', '2024-04-01 08:30:00', 'You have a new friend request.', 'Unseen'),
    (2, 2, 'Message', '2024-04-02 10:15:00', 'You have a new message.', 'Seen'),
    (3, 1, 'Like', '2024-04-03 12:45:00', 'Your post was liked by someone.', 'Unseen'),
    (4, 3, 'Comment', '2024-04-04 15:20:00', 'Someone commented on your post.', 'Unseen'),
    (5, 2, 'Friend Request', '2024-04-05 09:10:00', 'You have a new friend request.', 'Seen'),
    (6, 3, 'Message', '2024-04-06 11:55:00', 'You have a new message.', 'Unseen'),
    (7, 1, 'Like', '2024-04-07 14:25:00', 'Your post was liked by someone.', 'Seen'),
    (8, 4, 'Comment', '2024-04-08 08:40:00', 'Someone commented on your post.', 'Unseen'),
    (9, 2, 'Friend Request', '2024-04-09 10:05:00', 'You have a new friend request.', 'Unseen'),
    (10, 4, 'Message', '2024-04-10 12:30:00', 'You have a new message.', 'Seen'),
    (11, 1, 'Friend Request', '2024-04-11 08:30:00', 'You have a new friend request.', 'Unseen'),
    (12, 2, 'Message', '2024-04-12 10:15:00', 'You have a new message.', 'Seen'),
    (13, 1, 'Like', '2024-04-13 12:45:00', 'Your post was liked by someone.', 'Unseen'),
    (14, 3, 'Comment', '2024-04-14 15:20:00', 'Someone commented on your post.', 'Unseen'),
    (15, 2, 'Friend Request', '2024-04-15 09:10:00', 'You have a new friend request.', 'Seen'),
    (16, 3, 'Message', '2024-04-16 11:55:00', 'You have a new message.', 'Unseen'),
    (17, 1, 'Like', '2024-04-17 14:25:00', 'Your post was liked by someone.', 'Seen'),
    (18, 4, 'Comment', '2024-04-18 08:40:00', 'Someone commented on your post.', 'Unseen'),
    (19, 2, 'Friend Request', '2024-04-19 10:05:00', 'You have a new friend request.', 'Unseen'),
    (20, 4, 'Message', '2024-04-20 12:30:00', 'You have a new message.', 'Seen');

	--Creates and populates a table for "ThirdPartyIntegration"
CREATE TABLE ThirdPartyIntegration (
    ThirdPartyIntegrationID INT PRIMARY KEY,
    ProfileID INT,
    SpotifyProfile VARCHAR(255) Null,
    FacebookProfile VARCHAR(255) Null,
    TwitterProfile VARCHAR(255) Null,
    OptionalUserLink VARCHAR(255) Null,
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID)
);

INSERT INTO ThirdPartyIntegration (ThirdPartyIntegrationID, ProfileID, SpotifyProfile, FacebookProfile, TwitterProfile, OptionalUserLink)
VALUES
    (1, 1, 'spotify.com/user1', '', 'twitter.com/user1', ''),
    (2, 2, '', 'facebook.com/user2', '', ''),
    (3, 3, 'spotify.com/user3', '', '', 'optionaluserlink3.com'),
    (4, 4, '', '', '', ''),
    (5, 5, 'spotify.com/user5', 'facebook.com/user5', '', ''),
    (6, 6, '', 'facebook.com/user6', 'twitter.com/user6', ''),
    (7, 7, 'spotify.com/user7', '', '', ''),
    (8, 8, '', 'facebook.com/user8', '', ''),
    (9, 9, '', '', 'twitter.com/user9', ''),
    (10, 10, '', '', '', ''),
    (11, 11, '', '', '', ''),
    (12, 12, '', 'facebook.com/user12', 'twitter.com/user12', ''),
    (13, 13, 'spotify.com/user13', '', '', ''),
    (14, 14, '', 'facebook.com/user14', '', ''),
    (15, 15, 'spotify.com/user15', 'facebook.com/user15', 'twitter.com/user15', 'optionaluserlink15.com'),
    (16, 16, '', '', '', ''),
    (17, 17, '', 'facebook.com/user17', 'twitter.com/user17', ''),
    (18, 18, '', '', '', ''),
    (19, 19, 'spotify.com/user19', '', '', ''),
    (20, 20, '', '', '', '');

	-- Create the UserPreferences table and populates it
CREATE TABLE UserPreferences (
    UserPreferencesID INT PRIMARY KEY,
    UserID INT,
    AgeRange VARCHAR(10),
    Gender VARCHAR(10),
    Interests VARCHAR(255),
    EducationLevel VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES "User"(UserID)
);

-- Generate 20 data points for UserPreferences
INSERT INTO UserPreferences (UserPreferencesID, UserID, AgeRange, Gender, Interests, EducationLevel)
VALUES
    (1, 1, '18-25', 'Male', 'Sports, Music, Travel', 'Bachelor''s Degree'),
    (2, 2, '25-35', 'Female', 'Reading, Cooking, Fitness', 'Master''s Degree'),
    (3, 3, '35-45', 'Male', 'Technology, Movies, Photography', 'PhD'),
    (4, 4, '45-55', 'Female', 'Art, Nature, Gardening', 'High School Diploma'),
    (5, 5, '55+', 'Male', 'History, Hiking, Gardening', 'Associate Degree'),
    (6, 6, '18-25', 'Female', 'Fashion, Shopping, Cooking', 'Bachelor''s Degree'),
    (7, 7, '25-35', 'Male', 'Gaming, Music, Travel', 'Master''s Degree'),
    (8, 8, '35-45', 'Female', 'Movies, Yoga, Nature', 'Bachelor''s Degree'),
    (9, 9, '45-55', 'Male', 'Cooking, Art, Fishing', 'PhD'),
    (10, 10, '55+', 'Female', 'Writing, History, Gardening', 'High School Diploma'),
    (11, 1, '18-25', 'Male', 'Sports, Music, Travel', 'Bachelor''s Degree'),
    (12, 2, '25-35', 'Female', 'Reading, Cooking, Fitness', 'Master''s Degree'),
    (13, 3, '35-45', 'Male', 'Technology, Movies, Photography', 'PhD'),
    (14, 4, '45-55', 'Female', 'Art, Nature, Gardening', 'High School Diploma'),
    (15, 5, '55+', 'Male', 'History, Hiking, Gardening', 'Associate Degree'),
    (16, 6, '18-25', 'Female', 'Fashion, Shopping, Cooking', 'Bachelor''s Degree'),
    (17, 7, '25-35', 'Male', 'Gaming, Music, Travel', 'Master''s Degree'),
    (18, 8, '35-45', 'Female', 'Movies, Yoga, Nature', 'Bachelor''s Degree'),
    (19, 9, '45-55', 'Male', 'Cooking, Art, Fishing', 'PhD'),
    (20, 10, '55+', 'Female', 'Writing, History, Gardening', 'High School Diploma');


	-- Create the UserMatches table
CREATE TABLE UserMatches (
    MatchID INT PRIMARY KEY IDENTITY,
    ProfileID INT,
    UserPreferencesID INT,
    MatchUser1ID INT,
    MatchUser2ID INT,
    MatchDate DATE,
    MatchScore DECIMAL(5,2),
    MatchDistance DECIMAL(7,2),
    MatchLocation VARCHAR(100),
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID),
    FOREIGN KEY (UserPreferencesID) REFERENCES UserPreferences(UserPreferencesID),
    FOREIGN KEY (MatchUser1ID) REFERENCES "User"(UserID),
    FOREIGN KEY (MatchUser2ID) REFERENCES "User"(UserID)
);

INSERT INTO UserMatches (ProfileID, UserPreferencesID, MatchUser1ID, MatchUser2ID, MatchDate, MatchScore, MatchDistance, MatchLocation) VALUES
    (1, 1, 2, 3, '2024-01-15', 85.7, 23.45, 'Houston, Texas'),
    (2, 2, 3, 4, '2024-02-20', 78.3, 15.67, 'Dallas, Texas'),
    (3, 3, 4, 5, '2024-03-10', 92.1, 18.92, 'Austin, Texas'),
    (4, 4, 5, 6, '2024-04-05', 88.6, 30.10, 'San Antonio, Texas'),
    (5, 5, 6, 7, '2024-05-12', 80.9, 22.34, 'Dallas, Texas'),
    (6, 6, 7, 8, '2024-06-08', 75.2, 26.78, 'Houston, Texas'),
    (7, 7, 8, 9, '2024-07-17', 90.5, 19.56, 'Austin, Texas'),
    (8, 8, 9, 10, '2024-08-22', 82.4, 14.78, 'San Antonio, Texas'),
    (9, 9, 10, 11, '2024-09-30', 87.3, 21.34, 'Dallas, Texas'),
    (10, 10, 11, 12, '2024-10-05', 79.8, 25.67, 'Houston, Texas'),
    (11, 11, 12, 13, '2024-11-15', 95.2, 17.89, 'Austin, Texas'),
    (12, 12, 13, 14, '2024-12-20', 88.9, 28.56, 'San Antonio, Texas'),
    (13, 13, 14, 15, '2025-01-07', 82.6, 20.45, 'Dallas, Texas'),
    (14, 14, 15, 16, '2025-02-12', 76.3, 23.78, 'Houston, Texas'),
    (15, 15, 16, 17, '2025-03-18', 91.4, 16.90, 'Austin, Texas'),
    (16, 16, 17, 18, '2025-04-25', 85.7, 18.34, 'San Antonio, Texas'),
    (17, 17, 18, 19, '2025-05-30', 89.3, 24.56, 'Dallas, Texas'),
    (18, 18, 19, 20, '2025-06-08', 80.5, 26.78, 'Houston, Texas'),
    (19, 19, 20, 1, '2025-07-17', 94.2, 19.45, 'Austin, Texas'),
    (20, 20, 1, 2, '2025-08-22', 86.8, 21.56, 'San Antonio, Texas');

	--Authorization for Data Diagrams in SSMS
	use MatchPlus
Go
alter authorization on database :: [MatchPlus] to [sa]
Go