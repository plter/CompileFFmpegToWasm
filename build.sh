
wget https://ffmpeg.org/releases/ffmpeg-4.1.tar.bz2
tar -xvf ffmpeg-4.1.tar.bz2
mv ffmpeg-4.1 ffmpeg

cd ffmpeg
emconfigure ./configure --cc=emcc --nm=llvm-nm --ar=llvm-ar --as=llvm-as --enable-cross-compile --target-os=none --arch=x86_32 --cpu=generic --disable-ffplay --disable-ffprobe --disable-asm --disable-doc --disable-devices --disable-pthreads --disable-w32threads --disable-network --disable-hwaccels --disable-parsers --disable-bsfs --disable-debug --disable-protocols --disable-indevs --disable-outdevs --enable-protocol=file
emmake make

mv ffmpeg_g ffmpeg.bc
emcc ffmpeg.bc -o ffmpeg.js

