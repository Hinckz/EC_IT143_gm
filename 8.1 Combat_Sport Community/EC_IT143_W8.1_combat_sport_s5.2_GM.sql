DROP TABLE IF EXISTS dbo.t_ali_ko;
GO

CREATE TABLE dbo.t_ali_ko
(character       VARCHAR(25) NOT NULL,
 ko_rate  VARCHAR(25) NOT NULL
  CONSTRAINT PK_t_ali_ko PRIMARY KEY CLUSTERED(character ASC)
  );
  GO