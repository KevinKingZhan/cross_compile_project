# FFmpeg 编译流程
## 需要的资源

* [gas-preprocessor](https://github.com/libav/gas-preprocessor)
* [yasm](https://github.com/yasm/yasm)
* [FFmpeg source]()
* [fdk-aac source](https://sourceforge.net/projects/opencore-amr/files/)
* [x264 source](https://trac.ffmpeg.org/wiki/CompilationGuide/Quick/libx264)

## 安装gas-preprocessor
* 进入下载后的`gas-preprocesso`文件夹
* 将文件夹内的`gas-preprocessor.pl`文件拷贝到`/usr/local/bin/`目录下

          cp gas-preprocessor.pl /usr/local/bin 

* 修改`/usr/local/bin/gas-preprocessor.pl`的文件权限为可执行权限

		chmod 777 /usr/local/bin/gas-preprocessor.pl		
		
## 安装yasm
* 方法1：Terminal进入下载后的`yasm`文件夹，直接编译安装

		./configure && make -j 4 && sudo make install
			 
* 方法2：使用Homebrew安装	
	
		brew install yasm
	
* 测试是否安装成功
 
		yasm --verision
		
## 编译fdk-aac
* 将下载好的`fdk-aac source`文件夹放到`build-fdk-aac.sh`文件同级目录下
* 修改`build-fdk-aac.sh`文件中的`SOURCE`改为对应的文件夹名称
* 如果说找不到路径，则进入源码目录执行make distclean
* `ARCHS`对应需要编译哪些arm下的lib包，根据需要修改
* 运行`build-fdk-aac.sh`脚本

		./build-fdk-aac.sh

* 编译好的lib在`fdk-aac-ios`文件夹下面

## 编译x264
* 将下载好的`x264 source`文件夹放到`build-x264.sh`文件同级目录下
* 修改`build-x264.sh`文件中的`SOURCE`改为对应的文件夹名称
* 如果报“Out of tree builds are impossible with config.h/x264_config.h in source dir.”，则删除x264中的config.h/x264_config.h。
* `ARCHS`对应需要编译哪些arm下的lib包，根据需要修改
* 运行`build-x264.sh`脚本

		./build-x264.sh

* 编译好的lib在`x264-ios`文件夹下面

## 编译FFmpeg
* 将上面编译好的`x264-ios`文件夹和`fdk-aac-ios`文件夹直接拖到`build-ffmpeg.sh`文件同级目录下
* 修改`build-ffmpeg.sh`文件中的`SOURCE`为你想编译的FFmpeg版本，比如`ffmpeg-2.1`
* 如果遇到Out of tree builds are impossible with config.h in source dir.，则需要删除源码目录中的config.h
* `ARCHS`对应需要编译哪些arm下的lib包，根据需要修改
* 运行`build-ffmpeg.sh`脚本

		./build-ffmpeg.sh

* 最终编译好的lib在`FFmpeg-iOS`文件夹下面

## 使用
* 将编译好的lib下的lib文件和include下的头文件拖入工程中，同时还需要引入3个额外的lib
	* libz.dylib
	* libbz2.dylib
	* libiconv.dylib
		
