#marioKart-ddl.sql


SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS wheels;
DROP TABLE IF EXISTS gliders;
# ... 
SET FOREIGN_KEY_CHECKS=1;


CREATE TABLE characters (
        id int not null,
        name varchar(255) not null,
        wg int not null,
        on int not null,
        of int not null,
        mt int not null,
        sl int not null,
        sw int not null,
        sa int not null,
        sg int not null,
        tl int not null,
        tw int not null,
        ta int not null,
        tg int not null,
        iv int not null,
        primary key (id)
    );

INSERT INTO characters (id, name, wg, on, of, mt, sl, sw, sa, sg, tl, tw, ta, tg, iv) values
    (1, 'Mario' 6,2,4,2,3,7,7,7,7,4,4,4,4,3),
    (2, 'Luigi' 6,2,5,1,3,7,7,7,7,5,5,5,5,3),
    (3, 'Peach' 4,3,3,3,4,6,6,6,6,5,5,5,5,1),
    (4, 'Daisy' 4,3,3,3,4,6,6,6,6,5,5,5,5,1),
    (5, 'Yoshi' 4,3,3,3,4,6,6,6,6,5,5,5,5,1),
    (6, 'Toad' 3,4,3,4,4,4,4,4,4,7,7,7,7,3),
    (7, 'Toadette', 2,5,4,2,4,3,3,3,3,7,7,7,7,3),
    (8, 'Koopa Troopa', 2,4,1,5,4,3,3,3,3,8,8,8,8,4),
    (9, 'Bowser', 10,0,6,0,0,10,10,10,10,0,0,0,0,6),
    (10, 'Donkey Kong', 8,1,10,0,1,9,9,9,9,2,2,2,2,4),
    (11, 'Wario', 9,0,5,1,0,10,10,10,10,1,1,1,1,5),
    (12, 'Waluigi', 8,1,10,0,1,9,9,9,9,2,2,2,2,4),
    (13, 'Baby Mario', 2,1,5,2,4,5,2,2,2,2,8,8,8,8,5),
    (14, 'Baby Luigi', 1,5,2,4,5,2,2,2,2,8,8,8,8,5),
    (15, 'Baby Peach', 0,4,3,5,5,1,1,1,1,10,10,10,10,6),
    (16, 'Baby Daisy', 0,4,3,5,5,1,1,1,1,10,10,10,10,6),
    (17, 'Baby Rosalina', 0,5,4,3,5,1,1,1,1,9,9,9,9,6),
    (18, 'Larry', 3,4,3,4,4,4,4,4,4,7,7,7,7,3),
    (19, 'Lemmy', 0,5,4,3,5,1,1,1,1,9,9,9,9,6),
    (20, 'Wendy', 2,5,4,2,4,3,3,3,3,7,7,7,7,3),
    (21, 'Ludwig', 6,2,4,2,3,7,7,7,7,4,4,4,4,3),
    (22, 'Iggy', 6,2,5,1,3,7,7,7,7,5,5,5,5,3),
    (23, 'Roy', 8,1,10,0,1,9,9,9,9,2,2,2,2,4),
    (24, 'Morton', 10,0,6,0,0,10,10,10,10,0,0,0,0,6),
    (25, 'Mii (medium)', 2,3,6,2,4,2,3,7,7,7,7,4,4,4,4,3),
    (26, 'Tanooki Mario', 5,3,7,1,4,6,6,6,6,5,5,5,5,1),
    (27, 'Link', 7,1,9,3,2,8,8,8,8,3,3,3,3,4),
    (28, 'Villager (male)', 5,3,7,1,4,6,6,6,6,5,5,5,5,1),
    (29, 'Isabelle', 2,5,4,2,4,3,3,3,3,7,7,7,7,3),
    (30, 'Cat Peach', 3,4,2,3,4,5,5,5,5,6,6,6,6,3),
    (31, 'Dry Bowser', 3,9,0,5,1,0,10,10,10,10,1,1,1,1,5),
    (32, 'Villager (female)', 3,4,2,3,4,5,5,5,5,6,6,6,6,3),
    (33, 'Gold Mario', 10,1,8,1,1,8,8,8,8,3,3,3,3,3),
    (34, 'Dry Bones', 1,5,2,4,5,2,2,2,2,8,8,8,8,5),
    (35, 'Bowser Jr.', 2,4,1,5,4,3,3,3,3,8,8,8,8,4),
    (36, 'King Boo', 7,1,9,3,2,8,8,8,8,3,3,3,3,4),
    (37, 'Inkling Girl', 1,3,4,2,3,4,5,5,5,5,6,6,6,6,3),
    (38, 'Inkling Boy', 1,5,3,7,1,4,6,6,6,6,5,5,5,5,1),
    (39, 'Link (Breath of the Wild)', 7,1,9,3,2,8,8,8,8,3,3,3,3,4),
    (40, 'Birdo', 1,4,3,3,3,4,6,6,6,6,5,5,5,5,1),
    (41, 'Kamek', 6,2,5,1,3,7,7,7,7,5,5,5,5,3),
    (42, 'Petey Piranha', 10,1,8,1,1,8,8,8,8,3,3,3,3,6),
    (43, 'Wiggler', 8,1,10,0,1,9,9,9,9,2,2,2,2,4),
    (44, 'Diddy Kong', 3,4,2,3,4,5,5,5,5,6,6,6,6,3),
    (45, 'Funky Kong', 9,0,5,1,0,10,10,10,10,1,1,1,1,5),
    (46, 'Peachette', 4,3,3,3,4,6,6,6,6,5,5,5,5,1),
    (47, 'Pauline', 7,1,9,3,2,8,8,8,8,3,3,3,3,4);


CREATE TABLE vehicles (
        id int not null,
        name varchar(255) not null,
        wg int not null,
        on int not null,
        of int not null,
        mt int not null,
        sl int not null,
        sw int not null,
        sa int not null,
        sg int not null,
        tl int not null,
        tw int not null,
        ta int not null,
        tg int not null,
        iv int not null,
        primary key (id)
    );

INSERT INTO vehicles (id, name, wg, on, of, mt, sl, sw, sa, sg, tl, tw, ta, tg, iv) values
    (1, 'Standard Kart', 2,4,3,3,5,3,3,3,3,3,2,3,3,3),
    (2, 'Pipe Frame', 1,6,3,4,6,2,3,1,1,5,4,4,2,3),
    (3, 'Mach8', 3,3,2,4,5,3,3,5,4,2,2,4,2,3),
    (4, 'Steel Driver', 4,1,1,3,3,4,5,2,0,1,5,1,1,6),
    (5, 'Cat Cruiser', 2,5,4,3,6,2,2,3,4,4,2,3,4,3),
    (6, 'Circuit Special', 3,1,3,1,3,5,1,4,2,1,1,2,0,6),
    (7, 'Tri-Speeder', 4,1,1,3,3,4,5,2,0,1,5,1,1,6),
    (8, 'Badwagon', 4,0,2,5,3,5,2,3,1,0,1,1,0,7),
    (9, 'Prancer', 1,2,1,2,4,4,3,3,3,3,3,2,3,5),
    (10, 'Biddybuggy', 0,7,1,4,7,0,1,2,1,5,4,5,4,0),
    (11, 'Landship', 0,6,0,6,6,2,5,0,2,4,5,2,3,2),
    (12, 'Sneeker', 2,2,1,0,4,4,2,3,3,3,2,3,2,5),
    (13, 'Sports Coupe', 3,3,2,4,5,3,3,5,4,2,2,4,2,3),
    (14, 'Gold Standard', 2,2,1,0,4,4,2,3,3,3,2,3,2,4),
    (15, 'Standard Bike', 1,5,3,5,5,2,2,4,3,4,3,4,3,4),
    (16, 'Comet', 2,5,4,3,6,2,2,3,4,4,2,3,4,2),
    (17, 'Sport Bike', 1,2,1,2,4,4,3,3,3,3,3,2,3,3),
    (18, 'The Duke', 2,4,3,3,5,3,3,3,3,3,2,3,3,3),
    (19, 'Flame Rider', 1,5,3,5,5,2,2,4,3,4,3,4,3,4),
    (20, 'Varmint', 1,6,3,4,6,2,3,1,1,5,4,4,2,2),
    (21, 'Mr.Scooty', 0,7,1,4,7,0,1,2,1,5,4,5,4,0),
    (22, 'Jet Bike', 1,2,1,2,4,4,3,3,3,3,3,2,3,3),
    (23, 'Yoshi Bike', 2,5,4,3,6,2,2,3,4,4,2,3,4,2),
    (24, 'Standard ATV', 4,0,2,5,3,5,2,3,1,0,1,1,0,6),
    (25, 'Wild Wiggler', 1,5,3,5,5,2,2,4,3,4,3,4,3,4),
    (26, 'Teddy Buggy', 2,5,4,3,6,2,2,3,4,4,2,3,4,1),
    (27, 'GLA', 4,0,2,5,3,5,2,3,1,0,1,1,0,7),
    (28, 'W 25 SilverArrow', 1,5,3,5,5,2,2,4,3,4,3,4,3,4),
    (29, '300 SL Roadster', 2,4,3,3,5,3,3,3,3,3,2,3,3,4),
    (30, 'Blue Falcon', 0,3,1,3,4,4,2,4,3,2,3,5,1,4),
    (31, 'Tanooki Kart', 3,2,4,7,5,3,4,3,3,4,4,3,3,4),
    (32, 'B Dasher', 3,1,3,1,3,5,1,4,2,1,1,2,0,6),
    (33, 'Master Cycle', 2,2,1,0,4,4,2,3,3,3,2,3,2,3),
    (34, 'Streetle', 0,6,0,6,6,2,5,0,2,4,5,2,3,3),
    (35, 'P-Wing', 3,1,3,1,3,5,1,4,2,1,1,2,0,6),
    (36, 'City Tripper', 1,6,3,4,6,2,3,1,1,5,4,4,2,2),
    (37, 'Bone Rattler', 4,1,1,3,3,4,5,2,0,1,5,1,1,5),
    (38, 'Koopa Clown', 3,2,4,7,5,3,4,3,3,4,4,3,3,3),
    (39, 'Splat Buggy', 0,3,1,3,4,4,2,4,3,2,3,5,1,3),
    (40, 'Inkstriker', 3,3,2,4,5,3,3,5,4,2,2,4,2,1),
    (41, 'Master Cycle Zero', 3,2,4,7,5,3,4,3,3,4,4,3,3,3);



CREATE TABLE wheels (
        id int not null,
        name varchar(255) not null,
        wg int not null,
        on int not null,
        of int not null,
        mt int not null,
        sl int not null,
        sw int not null,
        sa int not null,
        sg int not null,
        tl int not null,
        tw int not null,
        ta int not null,
        tg int not null,
        iv int not null,
        primary key (id)
    );

INSERT INTO wheels (id, name, wg, on, of, mt, sl, sw, sa, sg, tl, tw, ta, tg, iv) values
    (1, 'Standard', 2,4,2,5,4,2,3,2,3,3,3,3,3,4),
    (2, 'Monster', 4,2,3,7,3,3,2,2,1,0,1,0,1,6),
    (3, 'Roller', 0,6,0,4,6,0,3,0,3,4,4,4,4,0),
    (4, 'Slim', 2,2,4,1,3,3,2,4,2,4,4,3,4,5),
    (5, 'Slick', 3,1,4,0,2,4,0,4,0,2,0,2,1,5),
    (6, 'Metal', 4,0,1,2,2,4,3,1,2,2,2,1,0,6),
    (7, 'Button', 0,5,1,3,5,1,2,2,2,3,3,4,2,3),
    (8, 'Off-Road', 3,3,3,6,3,3,4,2,1,1,1,2,2,6),
    (9, 'Sponge', 1,4,2,6,5,1,1,1,4,2,1,2,3,4),
    (10, 'Wood', 2,2,4,1,3,3,2,4,2,4,4,3,4,5),
    (11, 'Cushion', 1,4,2,6,5,1,1,1,4,2,1,2,3,6),
    (12, 'Blue Standard', 2,4,2,5,4,2,3,2,3,3,3,3,3,4),
    (13, 'Hot Monster', 4,2,3,7,3,3,2,2,1,0,1,0,1,6),
    (14, 'Azure Roller', 0,6,0,4,6,0,3,0,3,4,4,4,4,0),
    (15, 'Crimson Slim', 2,2,4,1,3,3,2,4,2,4,4,3,4,5),
    (16, 'Cyber Slick', 3,1,4,0,2,4,0,4,0,2,0,2,1,5),
    (17, 'Retro Off-Road', 3,3,3,6,3,3,4,2,1,1,1,2,2,6),
    (18, 'Gold Tires', 4,0,1,2,2,4,3,1,2,2,2,1,0,5),
    (19, 'GLA Tires', 2,4,2,5,4,2,3,2,3,3,3,3,3,5),
    (20, 'Triforce Tires', 3,3,3,6,3,3,4,2,1,1,1,2,2,5),
    (21, 'Leaf Tires', 0,5,1,3,5,1,2,2,2,3,3,4,2,3),
    (22, 'Ancient Tires', 4,2,3,7,3,3,2,2,1,0,1,0,1,5),


CREATE TABLE gliders (
        id int not null,
        name varchar(255) not null,
        wg int not null,
        on int not null,
        of int not null,
        mt int not null,
        sl int not null,
        sw int not null,
        sa int not null,
        sg int not null,
        tl int not null,
        tw int not null,
        ta int not null,
        tg int not null,
        iv int not null,
        primary key (id)
    );

INSERT INTO wheels (id, name, wg, on, of, mt, sl, sw, sa, sg, tl, tw, ta, tg, iv) values
    (1, 'Super Glider', 1,1,1,1,1,1,1,0,2,1,0,1,1,1),
    (2, 'Cloud Glider', 0,2,1,1,2,0,1,1,1,1,0,1,2,0),
    (3, 'Wario Wing', 2,1,2,0,1,1,0,1,2,1,1,0,1,1),
    (4, 'Waddle Wing', 1,1,1,1,1,1,1,0,2,1,0,1,1,1),
    (5, 'Peach Parasol', 1,2,2,0,2,0,0,1,1,1,1,0,2,0),
    (6, 'Parachute', 0,2,1,1,2,0,1,1,1,1,0,1,2,0),
    (7, 'Parafoil', 1,2,2,0,2,0,0,1,1,1,1,0,2,0),
    (8, 'Flower Glider', 0,2,1,1,2,0,1,1,1,1,0,1,2,0),
    (9, 'Bowser Kite', 1,2,2,0,2,0,0,1,1,1,1,0,2,0),
    (10, 'Plane Glider', 2,1,2,0,1,1,0,1,2,1,1,0,1,1),
    (11, 'MKTV Parafoil', 1,2,2,0,2,0,0,1,1,1,1,0,2,0),
    (12, 'Gold Glider', 2,1,2,0,1,1,0,1,2,1,1,0,1,1),
    (13, 'Hylian Kite', 1,1,1,1,1,1,1,0,2,1,0,1,1,1),
    (14, 'Paper Glider', 0,2,1,1,2,0,1,1,1,1,0,1,2,0),
    (15, 'Paraglider', 2,1,2,0,1,1,0,1,2,1,1,0,1,1),