TARGET=brainapi.lib
CPP=clarm
CPPFLAGS=/nologo /W3 /O2 /EHsc /QRarch4T /QRinterwork-return \
	/D "ARM" /D "_ARM_" /D "ARMV4I" /D UNDER_CE=400 \
	/D "UNICODE" /D "_UNICODE"
OBJS=\
	brainapi.obj \

all : $(TARGET)

$(TARGET) : $(OBJS)
	lib /NOLOGO /OUT:$@ $(OBJS)

clean :
	-del $(TARGET) $(OBJS)

brainapi.obj : brainapi.h
