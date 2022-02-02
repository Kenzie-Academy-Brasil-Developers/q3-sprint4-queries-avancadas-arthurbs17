CREATE TABLE IF NOT EXISTS redes_sociais(
    id      BIGSERIAL CONSTRAINT pk_rede_social PRIMARY KEY,
    nome    VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS enderecos(
    id      BIGSERIAL CONSTRAINT pk_endereco PRIMARY KEY,
    rua     VARCHAR NOT NULL,
    pais    VARCHAR(100) NOT NULL,
    cidade  VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuarios(
    id      BIGSERIAL CONSTRAINT pk_usuario PRIMARY KEY,
    nome    VARCHAR(100),
    email   VARCHAR NOT NULL UNIQUE,
    senha   VARCHAR NOT NULL,
    endereco_id INTEGER NOT NULL,
    FOREIGN KEY (endereco_id) REFERENCES enderecos(id)
);

CREATE TABLE IF NOT EXISTS usuario_rede_sociais(
    id              BIGSERIAL CONSTRAINT pk_usuario_rede_social PRIMARY KEY,
    usuario_id      INTEGER NOT NULL,
    rede_social_id  INTEGER NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (rede_social_id) REFERENCES redes_sociais(id)
);