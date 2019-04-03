BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "movies" (
	"index"	BIGINT,
	"Title"	TEXT,
	"Date"	TEXT,
	"Rated"	TEXT,
	"Genre"	TEXT,
	"Ratings"	TEXT,
	"Imdb"	TEXT,
	"Country"	TEXT,
	"Actors"	TEXT
);
INSERT INTO "movies" VALUES (0,'The Guilty','19 Oct 2018','R','Crime, Drama, Thriller','7.6/10','83','Denmark','Jakob Cedergren, Jessica Dinnage, Omar Shargawi, Johan Olsen');
INSERT INTO "movies" VALUES (1,'Mission: Impossible - Fallout','27 Jul 2018','PG-13','Action, Adventure, Thriller','7.8/10','86','USA, China, France, Norway','Tom Cruise, Henry Cavill, Ving Rhames, Simon Pegg');
INSERT INTO "movies" VALUES (2,'Searching','31 Aug 2018','PG-13','Drama, Mystery, Thriller','7.7/10','71','Russia, USA','John Cho, Sara Sohn, Alex Jayne Go, Megan Liu');
INSERT INTO "movies" VALUES (3,'A Star Is Born','05 Oct 2018','R','Drama, Music, Romance','7.8/10','88','USA','Lady Gaga, Bradley Cooper, Sam Elliott, Andrew Dice Clay');
INSERT INTO "movies" VALUES (4,'Spider-Man: Into the Spider-Verse','14 Dec 2018','PG','Animation, Action, Adventure, Family, Sci-Fi','8.5/10','87','USA','Shameik Moore, Jake Johnson, Hailee Steinfeld, Mahershala Ali');
INSERT INTO "movies" VALUES (5,'Blindspotting','27 Jul 2018','R','Comedy, Crime, Drama','7.4/10','77','USA','Daveed Diggs, Rafael Casal, Janina Gavankar, Jasmine Cephas Jones');
INSERT INTO "movies" VALUES (6,'You Were Never Really Here','06 Apr 2018','R','Crime, Drama, Mystery, Thriller','6.8/10','84','UK, France, USA','Joaquin Phoenix, Dante Pereira-Olson, Larry Canady, Vinicius Damasceno');
INSERT INTO "movies" VALUES (7,'A Quiet Place','06 Apr 2018','PG-13','Drama, Horror, Mystery, Sci-Fi, Thriller','7.6/10','82','USA','Emily Blunt, John Krasinski, Millicent Simmonds, Noah Jupe');
INSERT INTO "movies" VALUES (8,'The Miseducation of Cameron Post','18 Jul 2018','Not Rated','Drama, Romance','6.6/10','69','USA','Chloë Grace Moretz, Steven Hauck, Quinn Shephard, Kerry Butler');
INSERT INTO "movies" VALUES (9,'Eighth Grade','03 Aug 2018','R','Comedy, Drama','7.5/10','90','USA','Elsie Fisher, Josh Hamilton, Emily Robinson, Jake Ryan');
INSERT INTO "movies" VALUES (10,'Free Solo','14 Dec 2018','PG-13','Documentary, Sport','8.3/10','83','USA','Alex Honnold, Tommy Caldwell, Jimmy Chin, Cheyne Lempe');
INSERT INTO "movies" VALUES (11,'A Prayer Before Dawn','10 Aug 2018','R','Action, Biography, Crime, Drama, Sport','6.9/10','76','UK, France, China, Cambodia, USA','Joe Cole, Pornchanok Mabklang, Vithaya Pansringarm, Panya Yimmumphai');
INSERT INTO "movies" VALUES (12,'Deadpool 2','18 May 2018','R','Action, Adventure, Comedy, Sci-Fi','7.8/10','66','USA','Ryan Reynolds, Josh Brolin, Morena Baccarin, Julian Dennison');
INSERT INTO "movies" VALUES (13,'Apostle','12 Oct 2018','TV-MA','Drama, Fantasy, Horror, Mystery, Thriller','6.3/10','62','UK, USA','Dan Stevens, Richard Elfyn, Paul Higgins, Bill Milner');
INSERT INTO "movies" VALUES (14,'Hold the Dark','28 Sep 2018','TV-MA','Adventure, Drama, Horror, Mystery, Thriller','5.6/10','63','USA','Beckam Crawford, Riley Keough, Jeffrey Wright, Michael Tayles');
INSERT INTO "movies" VALUES (15,'Widows','16 Nov 2018','R','Crime, Drama, Thriller','7.0/10','84','UK, USA','Viola Davis, Liam Neeson, Jon Bernthal, Manuel Garcia-Rulfo');
INSERT INTO "movies" VALUES (16,'Avengers: Infinity War','27 Apr 2018','PG-13','Action, Adventure, Sci-Fi','8.5/10','68','USA','Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans');
INSERT INTO "movies" VALUES (17,'BlacKkKlansman','10 Aug 2018','R','Biography, Crime, Drama','7.5/10','83','USA','Alec Baldwin, John David Washington, Isiah Whitlock Jr., Robert John Burke');
INSERT INTO "movies" VALUES (18,'Overlord','09 Nov 2018','R','Action, Adventure, Horror, Mystery, Sci-Fi, War','6.7/10','60','USA, Canada','Jovan Adepo, Wyatt Russell, Mathilde Ollivier, Pilou Asbæk');
INSERT INTO "movies" VALUES (19,'Assassination Nation','21 Sep 2018','R','Action, Comedy, Crime, Drama, Thriller','5.9/10','56','USA','Odessa Young, Abra, Suki Waterhouse, Hari Nef');
INSERT INTO "movies" VALUES (20,'Incredibles 2','15 Jun 2018','PG','Animation, Action, Adventure, Comedy, Family, Sci-Fi','7.7/10','80','USA','Craig T. Nelson, Holly Hunter, Sarah Vowell, Huck Milner');
INSERT INTO "movies" VALUES (21,'Mowgli: Legend of the Jungle','07 Dec 2018','PG-13','Adventure, Drama, Fantasy','6.5/10','51','UK, USA','Christian Bale, Cate Blanchett, Benedict Cumberbatch, Naomie Harris');
INSERT INTO "movies" VALUES (22,'Revenge','21 Sep 2011','TV-PG','Drama, Mystery, Thriller','7.9/10','N/A','USA','Madeleine Stowe, Emily VanCamp, Gabriel Mann, Nick Wechsler');
INSERT INTO "movies" VALUES (23,'6 Balloons','06 Apr 2018','TV-MA','Drama','5.9/10','66','USA','Abbi Jacobson, Dave Franco, Charlotte Carel, Madeline Carel');
INSERT INTO "movies" VALUES (24,'Monsters and Men','28 Sep 2018','R','Crime, Drama, Thriller','5.5/10','68','USA','John David Washington, Anthony Ramos, Kelvin Harrison Jr., Chanté Adams');
INSERT INTO "movies" VALUES (25,'Disobedience','27 Apr 2018','R','Drama, Romance','6.6/10','74','Ireland, UK, USA','Anton Lesser, Alessandro Nivola, Allan Corduner, Nicholas Woodeson');
INSERT INTO "movies" VALUES (26,'Black Panther','16 Feb 2018','PG-13','Action, Adventure, Sci-Fi','7.3/10','88','USA','Chadwick Boseman, Michael B. Jordan, Lupita Nyong''o, Danai Gurira');
INSERT INTO "movies" VALUES (27,'Isle of Dogs','13 Apr 2018','PG-13','Animation, Adventure, Comedy, Drama, Fantasy, Sci-Fi','7.9/10','82','Germany, USA','Bryan Cranston, Koyu Rankin, Edward Norton, Bob Balaban');
INSERT INTO "movies" VALUES (28,'Juliet, Naked','17 Aug 2018','R','Comedy, Drama, Music, Romance','6.6/10','67','USA, UK','Chris O''Dowd, Rose Byrne, Kitty O''Beirne, Alex Clatworthy');
INSERT INTO "movies" VALUES (29,'Black Mirror: Bandersnatch','28 Dec 2018','TV-MA','Drama, Mystery, Sci-Fi, Thriller','7.3/10','N/A','USA, UK','Fionn Whitehead, Craig Parkinson, Alice Lowe, Asim Chaudhry');
INSERT INTO "movies" VALUES (30,'Mandy','14 Sep 2018','Not Rated','Action, Fantasy, Horror, Mystery, Thriller','6.6/10','81','USA, Belgium, UK','Nicolas Cage, Andrea Riseborough, Linus Roache, Ned Dennehy');
INSERT INTO "movies" VALUES (31,'RBG','14 Sep 2018','PG','Documentary, Biography','7.5/10','71','USA','Bill Clinton, Sharron Frontiero, James Steven Ginsburg, Jane C. Ginsburg');
INSERT INTO "movies" VALUES (32,'Ready Player One','29 Mar 2018','PG-13','Action, Adventure, Sci-Fi','7.5/10','64','USA','Tye Sheridan, Olivia Cooke, Ben Mendelsohn, Lena Waithe');
INSERT INTO "movies" VALUES (33,'Jurassic World: Fallen Kingdom','22 Jun 2018','PG-13','Action, Adventure, Sci-Fi','6.2/10','51','USA','Chris Pratt, Bryce Dallas Howard, Rafe Spall, Justice Smith');
INSERT INTO "movies" VALUES (34,'The Kindergarten Teacher','12 Oct 2018','R','Drama','6.8/10','75','USA','Maggie Gyllenhaal, Gael García Bernal, Ato Blankson-Wood, Libya Pugh');
INSERT INTO "movies" VALUES (35,'Game Night','23 Feb 2018','R','Action, Comedy, Crime, Mystery','7.0/10','66','USA','Jason Bateman, Rachel McAdams, Kyle Chandler, Sharon Horgan');
INSERT INTO "movies" VALUES (36,'The Tale','27 May 2018','TV-MA','Drama, Mystery, Thriller','7.3/10','90','USA, Germany','Elizabeth Debicki, Laura Dern, John Heard, Ellen Burstyn');
INSERT INTO "movies" VALUES (37,'Halloween','27 Oct 1978','R','Horror, Thriller','7.8/10','81','USA','Donald Pleasence, Jamie Lee Curtis, Nancy Kyes, P.J. Soles');
INSERT INTO "movies" VALUES (38,'Annihilation','23 Feb 2018','R','Adventure, Drama, Horror, Mystery, Sci-Fi, Thriller','6.9/10','79','UK, USA','Natalie Portman, Benedict Wong, Sonoya Mizuno, David Gyasi');
INSERT INTO "movies" VALUES (39,'A Simple Favor','14 Sep 2018','R','Comedy, Crime, Drama, Mystery, Thriller','6.9/10','67','Canada, USA','Anna Kendrick, Ian Ho, Joshua Satine, Glenda Braganza');
INSERT INTO "movies" VALUES (40,'Hereditary','08 Jun 2018','R','Drama, Horror, Mystery, Thriller','7.3/10','87','USA','Alex Wolff, Gabriel Byrne, Toni Collette, Milly Shapiro');
INSERT INTO "movies" VALUES (41,'Unsane','23 Mar 2018','R','Drama, Horror, Mystery, Thriller','6.4/10','63','USA','Joshua Leonard, Claire Foy, Sarah Stiles, Marc Kudisch');
INSERT INTO "movies" VALUES (42,'The Night Comes for Us','19 Oct 2018','N/A','Action, Thriller','7.0/10','69','Indonesia, USA','Iko Uwais, Julie Estelle, Joe Taslim, Zack Lee');
INSERT INTO "movies" VALUES (43,'Aquaman','21 Dec 2018','PG-13','Action, Adventure, Fantasy, Sci-Fi','7.2/10','55','Australia, USA','Jason Momoa, Amber Heard, Willem Dafoe, Patrick Wilson');
INSERT INTO "movies" VALUES (44,'To All the Boys I''ve Loved Before','17 Aug 2018','TV-14','Drama, Romance','7.3/10','64','USA','Lana Condor, Noah Centineo, Janel Parrish, Anna Cathcart');
INSERT INTO "movies" VALUES (45,'Venom','05 Oct 2018','PG-13','Action, Sci-Fi, Thriller','6.8/10','35','China, USA','Tom Hardy, Michelle Williams, Riz Ahmed, Scott Haze');
INSERT INTO "movies" VALUES (46,'Upgrade','01 Jun 2018','R','Action, Sci-Fi, Thriller','7.6/10','67','Australia','Logan Marshall-Green, Melanie Vallejo, Steve Danielsen, Abby Craden');
INSERT INTO "movies" VALUES (47,'Sierra Burgess Is a Loser','07 Sep 2018','PG-13','Comedy, Drama, Romance','6.0/10','60','USA','Shannon Purser, Kristine Froseth, RJ Cyler, Noah Centineo');
INSERT INTO "movies" VALUES (48,'Blockers','06 Apr 2018','R','Comedy','6.2/10','69','USA','Leslie Mann, John Cena, Ike Barinholtz, Kathryn Newton');
INSERT INTO "movies" VALUES (49,'Thoroughbreds','09 Mar 2018','R','Comedy, Crime, Drama, Thriller','6.7/10','75','USA','Olivia Cooke, Anya Taylor-Joy, Anton Yelchin, Paul Sparks');
INSERT INTO "movies" VALUES (50,'The Land of Steady Habits','14 Sep 2018','TV-MA','Comedy, Drama','6.2/10','71','USA','Ben Mendelsohn, Connie Britton, Edie Falco, Charlie Tahan');
INSERT INTO "movies" VALUES (51,'Support the Girls','24 Aug 2018','R','Comedy, Drama','6.5/10','85','USA','Regina Hall, Haley Lu Richardson, Dylan Gelula, Zoe Graham');
INSERT INTO "movies" VALUES (52,'The Equalizer 2','20 Jul 2018','R','Action, Crime, Thriller','6.7/10','50','USA','Denzel Washington, Pedro Pascal, Ashton Sanders, Orson Bean');
INSERT INTO "movies" VALUES (53,'Love, Simon','16 Mar 2018','PG-13','Comedy, Drama, Romance','7.7/10','72','USA','Nick Robinson, Jennifer Garner, Josh Duhamel, Katherine Langford');
INSERT INTO "movies" VALUES (54,'Incident in a Ghostland','22 Jun 2018','Not Rated','Drama, Horror, Mystery, Thriller','6.4/10','44','France, Canada','Crystal Reed, Mylène Farmer, Anastasia Phillips, Emilia Jones');
INSERT INTO "movies" VALUES (55,'Den of Thieves','19 Jan 2018','R','Action, Crime, Drama, Mystery, Thriller','7.0/10','49','USA','Gerard Butler, Pablo Schreiber, O''Shea Jackson Jr., 50 Cent');
INSERT INTO "movies" VALUES (56,'Teen Titans Go! To the Movies','27 Jul 2018','PG','Animation, Action, Comedy, Family, Musical, Sci-Fi','6.8/10','69','USA','Greg Cipes, Scott Menville, Khary Payton, Tara Strong');
INSERT INTO "movies" VALUES (57,'In Darkness','05 Jan 2012','R','Drama, War','7.3/10','74','Poland, Germany, Canada','Robert Wieckiewicz, Benno Fürmann, Agnieszka Grochowska, Maria Schrader');
INSERT INTO "movies" VALUES (58,'Bumblebee','21 Dec 2018','PG-13','Action, Adventure, Sci-Fi','7.0/10','66','USA, China','Hailee Steinfeld, Jorge Lendeborg Jr., John Cena, Jason Drucker');
INSERT INTO "movies" VALUES (59,'Rampage','13 Apr 2018','PG-13','Action, Adventure, Sci-Fi','6.1/10','45','USA','Dwayne Johnson, Naomie Harris, Malin Akerman, Jeffrey Dean Morgan');
INSERT INTO "movies" VALUES (60,'12 Strong','19 Jan 2018','R','Action, Drama, History, War','6.6/10','54','USA','Chris Hemsworth, Michael Shannon, Michael Peña, Navid Negahban');
INSERT INTO "movies" VALUES (61,'Don''t Worry, He Won''t Get Far on Foot','04 Apr 2018','R','Biography, Comedy, Drama','6.9/10','67','France, USA','Joaquin Phoenix, Jonah Hill, Rooney Mara, Jack Black');
INSERT INTO "movies" VALUES (62,'Nostalgia','01 Mar 1992','Not Rated','Drama','8.1/10','N/A','Italy, Soviet Union','Oleg Yankovskiy, Erland Josephson, Domiziana Giordano, Patrizia Terreno');
INSERT INTO "movies" VALUES (63,'Tully','04 May 2018','R','Comedy, Drama, Mystery','7.0/10','75','USA, Canada','Charlize Theron, Mackenzie Davis, Ron Livingston, Asher Miles Fallica');
INSERT INTO "movies" VALUES (64,'A Wrinkle in Time','09 Mar 2018','PG','Adventure, Family, Fantasy, Sci-Fi','4.2/10','53','USA','Storm Reid, Oprah Winfrey, Reese Witherspoon, Mindy Kaling');
INSERT INTO "movies" VALUES (65,'Roma','21 Nov 2018','R','Drama','7.8/10','96','Mexico, USA','Yalitza Aparicio, Marina de Tavira, Diego Cortina Autrey, Carlos Peralta');
INSERT INTO "movies" VALUES (66,'Sicario: Day of the Soldado','29 Jun 2018','R','Action, Crime, Drama, Thriller','7.1/10','61','USA','Benicio Del Toro, Josh Brolin, Isabela Moner, Jeffrey Donovan');
INSERT INTO "movies" VALUES (67,'Gringo','09 Mar 2018','R','Action, Comedy, Crime, Drama','6.1/10','46','Australia, USA','Joel Edgerton, Charlize Theron, David Oyelowo, Thandie Newton');
INSERT INTO "movies" VALUES (68,'Solo: A Star Wars Story','25 May 2018','PG-13','Action, Adventure, Fantasy, Sci-Fi','7.0/10','62','USA','Alden Ehrenreich, Joonas Suotamo, Woody Harrelson, Emilia Clarke');
INSERT INTO "movies" VALUES (69,'Overboard','16 Dec 1987','PG','Comedy, Romance','6.9/10','53','USA','Goldie Hawn, Kurt Russell, Edward Herrmann, Katherine Helmond');
INSERT INTO "movies" VALUES (70,'The First Purge','04 Jul 2018','R','Action, Horror, Sci-Fi, Thriller','5.1/10','54','USA','Y''lan Noel, Lex Scott Davis, Joivan Wade, Mugga');
INSERT INTO "movies" VALUES (71,'The Nun','07 Sep 2018','R','Horror, Mystery, Thriller','5.4/10','46','USA','Demián Bichir, Taissa Farmiga, Jonas Bloquet, Bonnie Aarons');
INSERT INTO "movies" VALUES (72,'Ant-Man and the Wasp','06 Jul 2018','PG-13','Action, Adventure, Comedy, Sci-Fi','7.1/10','70','USA','Paul Rudd, Evangeline Lilly, Michael Peña, Walton Goggins');
INSERT INTO "movies" VALUES (73,'The Girl in the Spider''s Web','09 Nov 2018','R','Action, Crime, Drama, Thriller','6.1/10','43','Germany, Sweden, USA','Claire Foy, Beau Gadsdon, Sverrir Gudnason, LaKeith Stanfield');
INSERT INTO "movies" VALUES (74,'The Meg','10 Aug 2018','PG-13','Action, Horror, Sci-Fi, Thriller','5.7/10','46','China, USA','Jason Statham, Bingbing Li, Rainn Wilson, Cliff Curtis');
INSERT INTO "movies" VALUES (75,'First Man','12 Oct 2018','PG-13','Biography, Drama, History','7.4/10','84','USA, Japan','Ryan Gosling, Claire Foy, Jason Clarke, Kyle Chandler');
INSERT INTO "movies" VALUES (76,'White Boy Rick','14 Sep 2018','R','Crime, Drama','6.5/10','59','USA','Matthew McConaughey, Richie Merritt, Bel Powley, Jennifer Jason Leigh');
INSERT INTO "movies" VALUES (77,'The Grinch','09 Nov 2018','PG','Animation, Comedy, Family, Fantasy, Musical','6.3/10','51','France, China, Japan, USA','Benedict Cumberbatch, Cameron Seely, Rashida Jones, Pharrell Williams');
INSERT INTO "movies" VALUES (78,'Fantastic Beasts: The Crimes of Grindelwald','16 Nov 2018','PG-13','Adventure, Family, Fantasy','6.7/10','52','UK, USA','Johnny Depp, Kevin Guthrie, Carmen Ejogo, Wolf Roth');
INSERT INTO "movies" VALUES (79,'Sherlock Holmes: A Game of Shadows','16 Dec 2011','PG-13','Action, Adventure, Crime, Mystery, Thriller','7.5/10','48','USA, UK','Robert Downey Jr., Jude Law, Noomi Rapace, Rachel McAdams');
INSERT INTO "movies" VALUES (80,'Creed II','21 Nov 2018','PG-13','Drama, Sport','7.3/10','66','USA','Michael B. Jordan, Sylvester Stallone, Tessa Thompson, Phylicia Rashad');
INSERT INTO "movies" VALUES (81,'Bad Times at the El Royale','12 Oct 2018','R','Crime, Drama, Mystery, Thriller','7.1/10','60','USA','Jeff Bridges, Cynthia Erivo, Dakota Johnson, Jon Hamm');
INSERT INTO "movies" VALUES (82,'Ralph Breaks the Internet','21 Nov 2018','PG','Animation, Adventure, Comedy, Family, Fantasy','7.2/10','71','USA','John C. Reilly, Sarah Silverman, Gal Gadot, Taraji P. Henson');
INSERT INTO "movies" VALUES (83,'Castle Rock','25 Jul 2018','TV-MA','Drama, Fantasy, Horror, Mystery, Sci-Fi, Thriller','7.8/10','N/A','USA','André Holland, Melanie Lynskey, Bill Skarsgård, Jane Levy');
INSERT INTO "movies" VALUES (84,'Sharp Objects','08 Jul 2018','TV-MA','Crime, Drama, Mystery, Thriller','8.2/10','N/A','USA','Amy Adams, Patricia Clarkson, Chris Messina, Eliza Scanlen');
INSERT INTO "movies" VALUES (85,'Daredevil','10 Apr 2015','TV-MA','Action, Crime, Drama, Fantasy, Sci-Fi, Thriller','8.7/10','N/A','USA','Charlie Cox, Deborah Ann Woll, Elden Henson, Vincent D''Onofrio');
INSERT INTO "movies" VALUES (86,'Titans','12 Oct 2018','TV-MA','Action, Adventure, Drama, Fantasy, Sci-Fi','8.1/10','N/A','USA','Teagan Croft, Brenton Thwaites, Anna Diop, Ryan Potter');
INSERT INTO "movies" VALUES (87,'Ozark','21 Jul 2017','TV-MA','Crime, Drama, Thriller','8.3/10','N/A','USA','Jason Bateman, Laura Linney, Julia Garner, Sofia Hublitz');
INSERT INTO "movies" VALUES (88,'American Vandal','15 Sep 2017','TV-MA','Comedy, Crime, Drama, Mystery','8.2/10','N/A','USA','Tyler Alvarez, Griffin Gluck, Jimmy Tatro, Travis Tope');
INSERT INTO "movies" VALUES (89,'Jack Ryan: Shadow Recruit','17 Jan 2014','PG-13','Action, Drama, Thriller','6.2/10','57','USA, Russia','Chris Pine, Keira Knightley, Kevin Costner, Kenneth Branagh');
INSERT INTO "movies" VALUES (90,'Cobra Kai','02 May 2018','TV-14','Action, Comedy, Drama','8.9/10','N/A','USA','Ralph Macchio, William Zabka, Courtney Henggeler, Xolo Maridueña');
INSERT INTO "movies" VALUES (91,'Atlanta','06 Sep 2016','TV-MA','Comedy, Drama, Music','8.6/10','N/A','USA','Donald Glover, Brian Tyree Henry, LaKeith Stanfield, Zazie Beetz');
INSERT INTO "movies" VALUES (92,'UnREAL','01 Jun 2015','TV-MA','Drama','7.9/10','N/A','USA','Shiri Appleby, Craig Bierko, Jeffrey Bowyer-Chapman, Brennan Elliott');
INSERT INTO "movies" VALUES (93,'Casual','07 Oct 2015','TV-MA','Comedy, Drama','7.6/10','N/A','USA','Michaela Watkins, Tommy Dewey, Tara Lynne Barr, Nyasha Hatendi');
INSERT INTO "movies" VALUES (94,'The Marvelous Mrs. Maisel','17 Mar 2017','TV-MA','Comedy, Drama','8.7/10','N/A','USA','Rachel Brosnahan, Tony Shalhoub, Alex Borstein, Michael Zegen');
INSERT INTO "movies" VALUES (95,'Altered Carbon','02 Feb 2018','TV-MA','Action, Drama, Sci-Fi, Thriller','8.2/10','N/A','USA','Chris Conner, Renée Elise Goldsberry, Joel Kinnaman, James Purefoy');
INSERT INTO "movies" VALUES (96,'Barry','25 Mar 2018','TV-MA','Comedy, Crime, Drama','8.1/10','N/A','USA','Bill Hader, Stephen Root, Sarah Goldberg, Glenn Fleshler');
INSERT INTO "movies" VALUES (97,'Santa Clarita Diet','03 Feb 2017','TV-MA','Comedy, Horror','7.8/10','N/A','USA','Drew Barrymore, Timothy Olyphant, Liv Hewson, Skyler Gisondo');
CREATE INDEX IF NOT EXISTS "ix_movies_index" ON "movies" (
	"index"
);
COMMIT;
