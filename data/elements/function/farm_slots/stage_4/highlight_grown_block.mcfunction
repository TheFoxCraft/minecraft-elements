execute align xyz positioned ~0.2 ~1 ~0.2 run particle dust{color:1425414,scale:0.5}
execute align xyz positioned ~0.8 ~1 ~.2 run particle dust{color:1425414,scale:0.5}
execute align xyz positioned ~0.2 ~1 ~0.8 run particle dust{color:1425414,scale:0.5}
execute align xyz positioned ~0.8 ~1 ~0.8 run particle dust{color:1425414,scale:0.5}
execute unless block ~ ~1 ~ #slabs align xyz positioned ~0.5 ~1 ~0.5 run particle flame
execute if block ~ ~1 ~ #slabs align xyz positioned ~0.5 ~1.75 ~0.5 run particle flame

