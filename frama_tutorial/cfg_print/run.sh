
#by script 
frama-c -load-script cfg_print.ml test.c
dot cfg.out -o cfg
dot -T png -O cfg

# node in color
frama-c test.c -load-script cfg_print.ml -val -then -cfg
dot cfg.out -o cfg
dot -T png -O cfg


# makefile
frama-c test.c -val -then -cfg -cfg-output cfg.out
dot cfg.out -o cfg
dot -T png -O cfg
