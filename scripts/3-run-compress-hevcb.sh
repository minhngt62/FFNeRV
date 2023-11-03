#!/bin/bash

# BQTerrace
mkdir -p data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/BQTerrace2_1920x1080_60Hz_8bit_P420.yuv -f image2 data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420/f%05d.png

python main.py -e 300 --lower-width 16 --num-blocks 1 --dataset data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420 --outf bqt \
    --fc-hw-dim 9_16_24 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420 --outf bqt \
    --fc-hw-dim 9_16_32 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420 --outf bqt \
    --fc-hw-dim 9_16_48 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 32 --num-blocks 1 --dataset data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420 --outf bqt \
    --fc-hw-dim 9_16_64 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

# BasketballDrive
mkdir -p data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/BasketballDrive2_1920x1080_50Hz_8bit_P420.yuv -f image2 data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420/f%05d.png

python main.py -e 300 --lower-width 16 --num-blocks 1 --dataset data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420 --outf basket \
    --fc-hw-dim 9_16_24 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420 --outf basket \
    --fc-hw-dim 9_16_32 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420 --outf basket \
    --fc-hw-dim 9_16_48 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 32 --num-blocks 1 --dataset data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420 --outf basket \
    --fc-hw-dim 9_16_64 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

# Cactus
mkdir -p data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/Cactus_1920x1080_50Hz_8bit_P420.yuv -f image2 data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420/f%05d.png

python main.py -e 300 --lower-width 16 --num-blocks 1 --dataset data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420 --outf cactus \
    --fc-hw-dim 9_16_24 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420 --outf cactus \
    --fc-hw-dim 9_16_32 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420 --outf cactus \
    --fc-hw-dim 9_16_48 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 32 --num-blocks 1 --dataset data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420 --outf cactus \
    --fc-hw-dim 9_16_64 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

# Kimono
mkdir -p data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/Kimono_1920x1080_24Hz_8bit_P420.yuv -f image2 data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420/f%05d.png

python main.py -e 300 --lower-width 16 --num-blocks 1 --dataset data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420 --outf kimono \
    --fc-hw-dim 9_16_24 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420 --outf kimono \
    --fc-hw-dim 9_16_32 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420 --outf kimono \
    --fc-hw-dim 9_16_48 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 32 --num-blocks 1 --dataset data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420 --outf kimono \
    --fc-hw-dim 9_16_64 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

# ParkScene
mkdir -p data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/ParkScene_1920x1080_24Hz_8bit_P420.yuv -f image2 data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420/f%05d.png

python main.py -e 300 --lower-width 16 --num-blocks 1 --dataset data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420 --outf park \
    --fc-hw-dim 9_16_24 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420 --outf park \
    --fc-hw-dim 9_16_32 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 24 --num-blocks 1 --dataset data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420 --outf park \
    --fc-hw-dim 9_16_48 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150

python main.py -e 300 --lower-width 32 --num-blocks 1 --dataset data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420 --outf park \
    --fc-hw-dim 9_16_64 --expansion 8 --loss Fusion6 --strides 5 3 2 2 2  --conv-type compact -b 1  --lr 0.0005 \
    --agg-ind -2 -1 1 2 --lw 0.1 --wbit 8 --t-dim 300 600 \
    --resol 1920 1080 --test-gap 150