-----------
-- Users --
-----------
INSERT INTO Users (username, password, email, full_name, affiliation, interests)
VALUES ('PGCB', 'come_on_eileen', 'ted.guenin@gmail.com',
    'Penn Guamanian Cooking Brigade', 'PAC', 'Going to Tanzania!');

INSERT INTO Users (username, password, email, full_name, affiliation, interests)
VALUES ('tfp', 'copabanana', 'tpeterson993@gmail.com', 'University Toppah',
    'Chicago', 'Going to Chili''s!');

INSERT INTO Users (username, password, email, full_name, affiliation, interests)
VALUES ('masonje', 'kalepa_ta_kala', 'masonje@wharton.upenn.edu', 'Jack Mason',
    'Lambda Chi Alpha', 'Fraternities, ritualism');

INSERT INTO Users (username, password, email, full_name, affiliation, interests)
VALUES ('necordgren', 'Brucie2004', 'penncleeglub@mgail.com', 'N Eric Cordgren',
    'University Choir', 'Bells!');

INSERT INTO Users (username, password, email, full_name, affiliation, interests)
VALUES ('pjmullz', 'stouffer4lyfe', 'mulletsonmullets@paul.paul', 'Paul Mullet',
    'Art Club', '???');

------------------
-- Destinations --
------------------
INSERT INTO Media (mid, type, privacy) VALUES (1, 'Destination', 'Everyone');
INSERT INTO Destination (did, name) VALUES (1, 'Paris, Kentucky');

INSERT INTO Media (mid, type, privacy) VALUES (2, 'Destination', 'Everyone');
INSERT INTO Destination (did, name) VALUES (2, 'Chili''s');

INSERT INTO Media (mid, type, privacy) VALUES (3, 'Destination', 'Everyone');
INSERT INTO Destination (did, name) VALUES (3, 'Guam');

INSERT INTO Media (mid, type, privacy) VALUES (4, 'Destination', 'Everyone');
INSERT INTO Destination (did, name) VALUES (4, 'The Blind Pig');

INSERT INTO Media (mid, type, privacy) VALUES (5, 'Destination', 'Everyone');
INSERT INTO Destination (did, name) VALUES (5, 'Starbucks');

-----------
-- Trips --
-----------

--| trip 1
INSERT INTO Media (mid, type, privacy) VALUES (1, 'Trip', 'Everyone');
INSERT INTO Trip (tid, packing_list, expenses) VALUES (1,
    'Tequila and Croissants', 'About tree fiddy');
INSERT INTO Owns (username, mid, type) VALUES ('tfp', 1, 'Trip');
-- Starbucks
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (1, 5, 1);
-- Chili's
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (1, 2, 2); 

--| trip 2
INSERT INTO Media (mid, type, privacy) VALUES (2, 'Trip', 'Everyone');
INSERT INTO Trip (tid, packing_list, expenses) VALUES (2,
    'Sunblock, more sunblock', 'Sunburn Treatment');
INSERT INTO Owns (username, mid, type) VALUES ('PGCB', 2, 'Trip');
-- Guam
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (2, 3, 1); 
-- The Blind Pig
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (2, 4, 2); 
-- Guam
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (2, 3, 3); 

--| trip 3
INSERT INTO Media (mid, type, privacy) VALUES (3, 'Trip', 'Only Friends');
INSERT INTO Trip (tid, packing_list, expenses) VALUES (3,
    'A guitar', 'I can''t convert into Guamanian currency ):');
INSERT INTO Owns (username, mid, type) VALUES ('necordgren', 3, 'Trip');
INSERT INTO GoesOn (username, tid) VALUES ('PGCB', 3);
-- Guam
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (3, 3, 1); 

--| trip 4
INSERT INTO Media (mid, type, privacy) VALUES (4, 'Trip', 'Everyone');
INSERT INTO Trip (tid, packing_list, expenses) VALUES (4, 'Banjo, Overalls',
	'Practically none');
INSERT INTO Owns (username, mid, type) VALUES ('pjmullz', 4, 'Trip');
-- Paris, Kentucky
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (4, 1, 1);
-- Starbucks
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (4, 5, 2);
-- Guam
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (4, 3, 3);

--| trip 5
INSERT INTO Media (mid, type, privacy) VALUES (5, 'Trip', 'Everyone');
INSERT INTO Trip (tid, packing_list, expenses) VALUES (5,
    'I''ve got my red dress on tonight', '$600');
INSERT INTO Owns (username, mid, type) VALUES ('masonje', 5, 'Trip');
-- | Starbucks
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (5, 5, 1);
-- | Starbucks again
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (5, 5, 2);
-- | Starbucks a third time
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (5, 5, 3);
-- | Quick detour to Guam
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (5, 3, 4);
-- | And time to check out Paris, Kentucky
INSERT INTO PartOf (tid, did, order_in_trip) VALUES (5, 1, 5);

------------
-- Albums --
------------

--| album for the first trip
INSERT INTO Album (aid, name, privacy) VALUES (1, 'The Life of TFP',
    'Everyone');
INSERT INTO AlbumOfTrip (aid, tid) VALUES (1, 1);

INSERT INTO Media (mid, type, privacy) VALUES (1, 'Photo', 'Everyone');
INSERT INTO Photo (pid, url) VALUES (1, 'http://www.brinker.com/images/ourstory/Presidente+Margarita+thumb.jpg');
INSERT INTO Owns (username, mid, type) VALUES ('tfp', 1, 'Photo');
INSERT INTO InAlbum (aid, mid, type) VALUES (1, 1, 'Photo');

INSERT INTO Media (mid, type, privacy) VALUES (2, 'Photo', 'Everyone');
INSERT INTO Photo (pid, url) VALUES (2, 'http://img.groundspeak.com/waymarking/display/204eb7bd-9cd6-4995-8360-837cc573f818.JPG');
INSERT INTO Owns (username, mid, type) VALUES ('tfp', 2, 'Photo');
INSERT INTO InAlbum (aid, mid, type) VALUES (1, 2, 'Photo');

INSERT INTO Media (mid, type, privacy) VALUES (3, 'Photo', 'Everyone');
INSERT INTO Photo (pid, url) VALUES (3, 'http://s3-media1.fl.yelpcdn.com/bphoto/ahfqXk0wJ5bph2N73RBs4Q/ls.jpg');
INSERT INTO Owns (username, mid, type) VALUES ('tfp', 3, 'Photo');
INSERT INTO InAlbum (aid, mid, type) VALUES (1, 3, 'Photo');

INSERT INTO Media (mid, type, privacy) VALUES (4, 'Photo', 'Everyone');
INSERT INTO Photo (pid, url) VALUES (4, 'http://www.blogcdn.com/www.dailyfinance.com/media/2013/01/starbucks--435cs013013.jpg');
INSERT INTO Owns (username, mid, type) VALUES ('tfp', 4, 'Photo');
INSERT INTO InAlbum (aid, mid, type) VALUES (1, 4, 'Photo');

INSERT INTO Media (mid, type, privacy) VALUES (5, 'Photo', 'Everyone');
INSERT INTO Photo (pid, url) VALUES (5, 'http://i.imgur.com/ZlJMPm0.jpg');
INSERT INTO Owns (username, mid, type) VALUES ('tfp', 5, 'Photo');
INSERT INTO InAlbum (aid, mid, type) VALUES (1, 5, 'Photo');
