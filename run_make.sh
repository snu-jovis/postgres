#!/bin/bash

pg_ctl -D $JOVIS_PG/data -l $JOVIS_PG/logfile stop
make clean;make -j16;sudo make install
pg_ctl -D $JOVIS_PG/data -l $JOVIS_PG/logfile start