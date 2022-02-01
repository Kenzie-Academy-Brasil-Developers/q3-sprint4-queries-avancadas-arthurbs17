-- PRIMEIRO
SELECT * FROM enderecos;

-- SEGUNDO
SELECT * FROM enderecos e
JOIN usuarios u
    ON e.id = u.endereco_id;

-- TERCEIRO
SELECT rs.*, u.*
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS urs
    ON urs.rede_social_id = rs.id
JOIN usuarios AS u
    ON u.id = urs.usuario_id;

-- QUARTO
SELECT rs.*, u.*, e.*
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS urs
    ON urs.rede_social_id = rs.id
JOIN usuarios AS u
    ON u.id = urs.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id;

-- QUINTO
SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS urs
    ON urs.rede_social_id = rs.id
JOIN usuarios AS u
    ON u.id = urs.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id;

-- SEXTO
SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS urs
    ON urs.rede_social_id = rs.id
JOIN usuarios AS u
    ON u.id = urs.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE rs.nome = 'Youtube';

-- SÉTIMO
SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS urs
    ON urs.rede_social_id = rs.id
JOIN usuarios AS u
    ON u.id = urs.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE rs.nome = 'Instagram';

-- OITAVO
SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS urs
    ON urs.rede_social_id = rs.id
JOIN usuarios AS u
    ON u.id = urs.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE rs.nome = 'Facebook';

--NONO
SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS urs
    ON urs.rede_social_id = rs.id
JOIN usuarios AS u
    ON u.id = urs.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE rs.nome = 'TikTok';

--DÉCIMO
SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS urs
    ON urs.rede_social_id = rs.id
JOIN usuarios AS u
    ON u.id = urs.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE rs.nome = 'Twitter';