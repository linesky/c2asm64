#include <dlfcn.h>
int *handler;
void(*clearss)();
void (*strs)(int,char*);
void (*putss)(char*);
void (*prints)(char*);
void (*fputss)(char*,int);
void (*fgetss)(char*,int,int);
void (*writess)(char*,int,int);
int (*creatss)(char*,int);
int (*openss)(char*msg,int,int);
void (*closess)(int);
void (*strlens)(char*);
void (*strcps)(char*,char*);
void (*strncps)(char*,char*,int);
void (*strcats)(char*,char*);
void (*exitss)(int);
void (*memcps)(char*,char*,int);
void (*memfills)(char*,int,char);
int (*getout)();
int (*getesp)();
int (*getin)();
int (*getreadss)();
int (*getwritess)();
int (*getreadswritess)();
void (*strchrreplace)(char*,char,char);
void *NULL=(void *)0x0L;
int main(){


	char *varerror="error on lib";

	handler=dlopen("./dlib.so.0.1",RTLD_LAZY);
	if (!handler){
		
		return 0;
	}
	exitss=dlsym(handler,"exitss");
	if(dlerror()!=NULL){
		
		return 0;
	}
	putss=dlsym(handler,"putss");
	if(dlerror()!=NULL){
		
		return 0;
	}
	
	clearss=dlsym(handler,"clearss");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
	
	strs=dlsym(handler,"strs");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
	prints=dlsym(handler,"prints");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
	
	fputss=dlsym(handler,"fputss");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
	
	fgetss=dlsym(handler,"fgetss");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
	
        writess=dlsym(handler,"writess");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}	
	creatss=dlsym(handler,"creatss");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}	
	
	openss=dlsym(handler,"openss");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
		
	closess=dlsym(handler,"closess");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
		
	strlens=dlsym(handler,"strlens");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
		
	strcps=dlsym(handler,"strcps");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
		
        strncps=dlsym(handler,"strncps");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}	
	
	strcats=dlsym(handler,"strcats");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}	
	
	memcps=dlsym(handler,"memcps");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}	
	memfills=dlsym(handler,"memfills");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
		
	getout=dlsym(handler,"getout");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}	
	getesp=dlsym(handler,"getesp");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}	
	
	getin=dlsym(handler,"getin");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}	
	
	getreadss=dlsym(handler,"getreadss");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
		
	getwritess=dlsym(handler,"getwritess");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
		
	getreadswritess=dlsym(handler,"getreadswritess");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
		
		
        strchrreplace=dlsym(handler,"strchrreplace");
	if(dlerror()!=NULL){
		putss(varerror);
		exitss(1);
	}
	putss("\x1b[43;37mhello world....\n");

	dlclose(handler);
	exitss(0);
	return 0;
}
