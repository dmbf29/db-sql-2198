-- Livecode Queries

-- 1. List all customers (names + email), ordered alphabetically (no extra information)
-- (Should yield 59 results)
-- SELECT first_name, last_name, email
-- FROM customers
-- ORDER BY last_name ASC;

-- 2. Count the number of tracks that are shorter than 2 minutes
-- (Should yield 93 results)
-- SELECT COUNT(*)
-- FROM tracks
-- WHERE milliseconds < 2 * 60000;

-- 3. List all 'Rock' tracks (only names)
-- (Should yield 1297 results)
-- SELECT tracks.name FROM tracks
-- JOIN genres ON tracks.genre_id = genres.id
-- WHERE genres.name = "Rock";

-- 4. List tracks (Name + Composer) of the 'Classical' playlist
-- (Should yield 75 results)
-- SELECT tracks.name, tracks.composer
-- FROM tracks
-- JOIN playlist_tracks
-- ON tracks.id = playlist_tracks.track_id
-- JOIN playlists
-- ON playlists.id = playlist_tracks.playlist_id
-- WHERE playlists.name = "Classical";

-- 5. Which customers (first_name, last_name) has spent the most money and how much?
-- (Helena Holý should be first with 49.62)
-- SELECT customers.first_name, customers.last_name, SUM(invoices.total) i FROM customers
-- JOIN invoices
-- ON customers.id = invoices.customer_id
-- GROUP BY customers.id
-- ORDER BY i DESC;

-- SELECT customers.first_name, customers.last_name, SUM(invoices.total) i FROM customers
-- JOIN invoices
-- ON customers.id = invoices.customer_id
-- GROUP BY customers.id
-- ORDER BY i DESC;


-- 6. List the 10 artists most listed in all playlists
-- (First result should be Iron Maiden with 516 results)
-- SELECT artists.name, COUNT(*) c FROM artists
-- JOIN albums ON artists.id = albums.artist_id
-- JOIN tracks ON albums.id = tracks.album_id
-- JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
-- GROUP BY artists.id
-- ORDER BY c DESC
-- LIMIT 10;


-- 7. List the tracks(composer + name) which have been purchased at least twice, ordered by number of purchases
-- (Should yield 265 results Steve Harris - The Trooper having 5 purchases)
-- SELECT tracks.name, tracks.composer,
-- COUNT(*) c FROM tracks
-- JOIN invoice_lines ON tracks.id = invoice_lines.track_id
-- GROUP BY track_id
-- HAVING c > 1
-- ORDER BY c DESC;
