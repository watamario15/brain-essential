TARGET=kncedlg.dll
CPP=clarm
CPPFLAGS=/nologo /W3 /O2 /EHsc /QRarch4T /QRinterwork-return \
	/D "ARM" /D "_ARM_" /D "ARMV4I" /D UNDER_CE=400 \
	/D "UNICODE" /D "_UNICODE" \
	/D "KNCEDLG_EXPORTS" \
	/I../knceutil
LDFLAGS=/NOLOGO /DLL /SUBSYSTEM:WINDOWSCE
LIBS=../knceutil/knceutil.lib
OBJS=\
	kncedlg.obj \
	kncedirdlg.obj \
	kncefiledlg.obj \
	kncefontdlg.obj \
	kncecapkeydlg.obj \
	knceappdlg.obj \
	kncewaitbox.obj
RESOURCE=kncedlg.res

all : $(TARGET)

$(TARGET) : $(OBJS) $(RESOURCE)
	link $(LDFLAGS) /OUT:$@ $(OBJS) $(RESOURCE) $(LIBS)

clean :
	-del $(TARGET) $(OBJS) kncedlg.exp kncedlg.lib

kncedlg.obj : kncedlg.h
kncedirdlg.obj : kncedlg.h
kncefiledlg.obj : kncedlg.h
kncefontdlg.obj : kncedlg.h
kncecapkeydlg.obj : kncedlg.h
knceappdlg.obj : kncedlg.h
kncewaitbox : kncedlg.h
