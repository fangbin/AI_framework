frama-c -load-script cfg_print.ml test.c
dot cfg.out -o cfg
dot -T png -O cfg
