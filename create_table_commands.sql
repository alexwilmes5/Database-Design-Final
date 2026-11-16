# We have five tables
/* We have five tables:
* Game Servers
* Players
* Game Modes
* Regions
* Parties 
*/

/* Group Number: group07
* Group members: Evan, Alex, 
*/

CREATE TABLE game_servers (
    server_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    max_players int,
    server_status int
);

CREATE TABLE players(
    player_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    server_id bigint REFERENCES game_servers(server_id)
);

CREATE TABLE game_modes(
    gamemode_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
);

CREATE TABLE regions(
    region_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
);

CREATE TABLE parties(
 party_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
);