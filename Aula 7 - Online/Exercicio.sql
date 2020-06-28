USE aulaMerge;

/* 
Para a regra de Merge funcionar no MYSQL, a tabela deve ter uma restrição de único valor,
para isso, eu alterei a tabela e coloquei para que o valor de Nome + Sobrenome sejam únicos
ou seja se Nome com o Sobrenome já existir na tabela o valor não será cadastrado,
a restrição não afeta se o nome se repetir mas com um sobrenome diferente de algum já cadastrado,
ou se um sonrenome se repetir com um nome diferente já cadastrado
*/
ALTER TABLE proprietario
ADD CONSTRAINT uc_nome_unico UNIQUE (nm_proprietario, nm_sobrenome_proprietario);

INSERT IGNORE INTO proprietario(nm_proprietario, nm_sobrenome_proprietario) 
SELECT nm_donos, nm_sobrenome_donos FROM donos
-- Se houver algum dado duplicado seguindo as regras daquela tabela, ele é ignorado
ON DUPLICATE KEY UPDATE 
nm_proprietario = VALUES(nm_proprietario), 
nm_sobrenome_proprietario = VALUES(nm_sobrenome_proprietario);

SELECT * FROM proprietario;