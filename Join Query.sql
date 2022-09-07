

SELECT [home]
      ,[dnp]
      ,[goals]
      ,[assists]
      ,[shots]
      ,[sog]
      ,[yellow]
      ,[red]
      ,[saves]
      ,[ga]
	  ,opp.[opponent_name]
	  ,player.l_f_name
	  ,dates.full_date
FROM dbo.colts_jvb_2022_fact fact
LEFT JOIN dbo.colts_opponent_dim opp
ON fact.opponent_sk = opp.opponent_sk
LEFT JOIN dbo.[2022_jvb_player_dim] player
ON fact.player_sk = player.player_sk
LEFT JOIN dbo.date_dim dates
ON fact.date_sk = dates.date_sk;