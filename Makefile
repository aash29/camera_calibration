SOURCES = camera_calibration.cpp
CC = g++
CFLAGS =  -g -lopencv_calib3d -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_highgui -lopencv_imgproc -lopencv_ml -lopencv_objdetect  -lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_video -lopencv_videostab -lopencv_imgcodecs -lopencv_videoio

calib: $(SOURCES)
	$(CC) -o calib $(SOURCES) $(CFLAGS)

.PHONY : clean
clean :
	rm -f calib *.o
