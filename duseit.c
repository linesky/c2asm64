#include <dlfcn.h>
extern void clearss();
extern void putss(int msg);
extern void prints(int msg);
extern void fputss(int msg,int handler );
extern void fgetss(int msg,int sizes,int handler );
extern void writess(int msg,int sizes,int handler );
extern int creatss(int msg,int acesss );
extern int openss(int msg,int acesss ,int permition );
extern int closess(int handler );
extern void exitss(int codes);
int *handler;
void (*strs)(int,int);
int (*strlens)(int);
void (*strcps)(int,int);
void (*strncps)(int,int,int);
void (*strcats)(char*,char*);
void (*memcps)(char*,int,int);
void (*memfills)(int,int,char);
int (*getout)();
int (*getesp)();
int (*getin)();
int (*getreadss)();
int (*getwritess)();
int (*getreadswritess)();
void (*strchrreplace)(int,char,char);
void *NULL=(void *)0x0L;
int address(char *c){
    int i=0;
    char *cc;
    i=(int) c;
    return i;
    cc=(char*)i;
    //return cc;

}
void sstart(){
	char *l="\x1b[43;37mhello world....";
        prints(address(l));
        prints(address(l));
        prints(address(l));

}
int main(){


	char *varerror="error on lib";
	
        int i;
        
	handler=dlopen("/lib/dlib.so.0.1",RTLD_LAZY);
	if (!handler){
		putss(address(varerror));
		exitss(1);
	}

	strs=dlsym(handler,"strs");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}
	
		
	strlens=dlsym(handler,"strlens");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}
		
	strcps=dlsym(handler,"strcps");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}
		
        strncps=dlsym(handler,"strncps");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}	
	
	strcats=dlsym(handler,"strcats");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}	
	
	memcps=dlsym(handler,"memcps");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}	
	memfills=dlsym(handler,"memfills");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}
		
	getout=dlsym(handler,"getout");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}	
	getesp=dlsym(handler,"getesp");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}	
	
	getin=dlsym(handler,"getin");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}	
	
	getreadss=dlsym(handler,"getreadss");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}
		
	getwritess=dlsym(handler,"getwritess");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}
		
	getreadswritess=dlsym(handler,"getreadswritess");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}
		
		
        strchrreplace=dlsym(handler,"strchrreplace");
	if(dlerror()!=NULL){
		putss(address(varerror));
		exitss(1);
	}
	
        sstart();
	dlclose(handler);

	return 0;
}
