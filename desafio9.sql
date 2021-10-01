DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN singer VARCHAR(100))
BEGIN
    SELECT 
		a.artista,
        al.album
    FROM (SELECT * FROM SpotifyClone.artistas ar WHERE ar.artista = singer) a
    INNER JOIN SpotifyClone.albuns al ON al.artista_id = a.artista_id;
END $$

DELIMITER ;
