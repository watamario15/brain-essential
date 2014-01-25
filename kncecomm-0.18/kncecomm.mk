TARGET=kncecomm-0.18.dll
CPP=clarm
CPPFLAGS=/nologo /W3 /O2 /EHsc /QRarch4T /QRinterwork-return \
	/D "ARM" /D "_ARM_" /D "ARMV4I" /D UNDER_CE=400 \
	/D "UNICODE" /D "_UNICODE" \
	/D "KNCECOMM_EXPORTS"
LDFLAGS=/NOLOGO /DLL /SUBSYSTEM:WINDOWSCE
LIBS=
OBJS=\
	kncecomm.obj \
	kncedirdlg.obj \
	kncefiledlg.obj \
	kncefontdlg.obj \
	kncecapkeydlg.obj \
	knceappdlg.obj \
	kncewaitbox.obj
RESOURCE=kncecomm.res

all : $(TARGET)

$(TARGET) : $(OBJS) $(RESOURCE)
	link $(LDFLAGS) /OUT:$@ $(OBJS) $(RESOURCE) $(LIBS)

clean :
	-del $(TARGET) $(OBJS) kncecomm-0.18.exp kncecomm-0.18.lib

kncecomm.obj : kncecomm.h
kncedirdlg.obj : kncecomm.h
kncefiledlg.obj : kncecomm.h
kncefontdlg.obj : kncecomm.h
kncecapkeydlg.obj : kncecomm.h
knceappdlg.obj : kncecomm.h
kncewaitbox : kncecomm.h
