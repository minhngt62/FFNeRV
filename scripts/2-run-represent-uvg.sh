#!/bin/bash

# Beauty
mkdir -p data/uvg/Beauty_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/UVG_dataset/Beauty_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/Beauty_1920x1080_120fps_420_8bit_YUV/f%05d.png

python main.py -e 300 --lower-width 24 --num-blocks 1 \
    --dataset data/uvg/Beauty_1920x1080_120fps_420_8bit_YUV --outf beauty \
    --fc-hw-dim 9_16_60 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 3.09M

python main.py -e 300 --lower-width 32 --num-blocks 1 \
    --dataset data/uvg/Beauty_1920x1080_120fps_420_8bit_YUV --outf beauty \
    --fc-hw-dim 9_16_98 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 6.001M

python main.py -e 300 --lower-width 96 --num-blocks 1 \
    --dataset data/uvg/Beauty_1920x1080_120fps_420_8bit_YUV --outf beauty \
    --fc-hw-dim 9_16_148 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 12.19M

# HoneyBee
mkdir -p data/uvg/HoneyBee_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/UVG_dataset/HoneyBee_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/HoneyBee_1920x1080_120fps_420_8bit_YUV/f%05d.png

python main.py -e 300 --lower-width 24 --num-blocks 1 \
    --dataset data/uvg/HoneyBee_1920x1080_120fps_420_8bit_YUV --outf honey \
    --fc-hw-dim 9_16_60 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 3.09M

python main.py -e 300 --lower-width 32 --num-blocks 1 \
    --dataset data/uvg/HoneyBee_1920x1080_120fps_420_8bit_YUV --outf honey \
    --fc-hw-dim 9_16_98 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 6.001M

python main.py -e 300 --lower-width 96 --num-blocks 1 \
    --dataset data/uvg/HoneyBee_1920x1080_120fps_420_8bit_YUV --outf honey \
    --fc-hw-dim 9_16_148 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 12.19M

# Bosphorus
mkdir -p data/uvg/Bosphorus_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/UVG_dataset/Bosphorus_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/Bosphorus_1920x1080_120fps_420_8bit_YUV/f%05d.png

python main.py -e 300 --lower-width 24 --num-blocks 1 \
    --dataset data/uvg/Bosphorus_1920x1080_120fps_420_8bit_YUV --outf bosphorus \
    --fc-hw-dim 9_16_60 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 3.09M

python main.py -e 300 --lower-width 32 --num-blocks 1 \
    --dataset data/uvg/Bosphorus_1920x1080_120fps_420_8bit_YUV --outf bosphorus \
    --fc-hw-dim 9_16_98 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 6.001M

python main.py -e 300 --lower-width 96 --num-blocks 1 \
    --dataset data/uvg/Bosphorus_1920x1080_120fps_420_8bit_YUV --outf bosphorus \
    --fc-hw-dim 9_16_148 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 12.19M

# Jockey
mkdir -p data/uvg/Jockey_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/UVG_dataset/Jockey_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/Jockey_1920x1080_120fps_420_8bit_YUV/f%05d.png

python main.py -e 300 --lower-width 24 --num-blocks 1 \
    --dataset data/uvg/Jockey_1920x1080_120fps_420_8bit_YUV --outf jockey \
    --fc-hw-dim 9_16_60 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 3.09M

python main.py -e 300 --lower-width 32 --num-blocks 1 \
    --dataset data/uvg/Jockey_1920x1080_120fps_420_8bit_YUV --outf jockey \
    --fc-hw-dim 9_16_98 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 6.001M

python main.py -e 300 --lower-width 96 --num-blocks 1 \
    --dataset data/uvg/Jockey_1920x1080_120fps_420_8bit_YUV --outf jockey \
    --fc-hw-dim 9_16_148 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 12.19M

# ReadySetGo
mkdir -p data/uvg/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/UVG_dataset/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV/f%05d.png

python main.py -e 300 --lower-width 24 --num-blocks 1 \
    --dataset data/uvg/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV --outf ready \
    --fc-hw-dim 9_16_60 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 3.09M

python main.py -e 300 --lower-width 32 --num-blocks 1 \
    --dataset data/uvg/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV --outf ready \
    --fc-hw-dim 9_16_98 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 6.001M

python main.py -e 300 --lower-width 96 --num-blocks 1 \
    --dataset data/uvg/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV --outf ready \
    --fc-hw-dim 9_16_148 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 12.19M

# ShakenDry
mkdir -p data/uvg/ShakeNDry_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/UVG_dataset/ShakeNDry_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/ShakeNDry_1920x1080_120fps_420_8bit_YUV/f%05d.png

python main.py -e 300 --lower-width 24 --num-blocks 1 \
    --dataset data/uvg/ShakeNDry_1920x1080_120fps_420_8bit_YUV --outf shake \
    --fc-hw-dim 9_16_60 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 192 288 \
    --resol 1920 1080 --test-gap 150 # 3.09M

python main.py -e 300 --lower-width 32 --num-blocks 1 \
    --dataset data/uvg/ShakeNDry_1920x1080_120fps_420_8bit_YUV --outf shake \
    --fc-hw-dim 9_16_98 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 192 288 \
    --resol 1920 1080 --test-gap 150 # 6.07M

python main.py -e 300 --lower-width 96 --num-blocks 1 \
    --dataset data/uvg/ShakeNDry_1920x1080_120fps_420_8bit_YUV --outf shake \
    --fc-hw-dim 9_16_148 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 192 288 \
    --resol 1920 1080 --test-gap 150 # 12.19M

# YachtRide
mkdir -p data/uvg/YachtRide_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/UVG_dataset/YachtRide_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/YachtRide_1920x1080_120fps_420_8bit_YUV/f%05d.png

python main.py -e 300 --lower-width 24 --num-blocks 1 \
    --dataset data/uvg/YachtRide_1920x1080_120fps_420_8bit_YUV --outf yatch \
    --fc-hw-dim 9_16_60 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 3.09M

python main.py -e 300 --lower-width 32 --num-blocks 1 \
    --dataset data/uvg/YachtRide_1920x1080_120fps_420_8bit_YUV --outf yatch \
    --fc-hw-dim 9_16_98 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 6.001M

python main.py -e 300 --lower-width 96 --num-blocks 1 \
    --dataset data/uvg/YachtRide_1920x1080_120fps_420_8bit_YUV --outf yatch \
    --fc-hw-dim 9_16_148 --expansion 1 --loss Fusion6 --strides 5 3 2 2 2 \
    --conv-type conv -b 1  --lr 0.0005 --agg-ind -2 -1 1 2 --lw 0.1 --t-dim 64 128 256 512 \
    --resol 1920 1080 --test-gap 150 # 12.19M