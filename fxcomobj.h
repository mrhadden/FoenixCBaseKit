
#ifndef __FX_COMOBJ_
#define __FX_COMOBJ_

#include "fxos.h"

typedef enum tagCLSCTX
{
  CLSCTX_INPROC_SERVER,
  CLSCTX_INPROC_HANDLER,
  CLSCTX_LOCAL_SERVER,
  CLSCTX_INPROC_SERVER16,
  CLSCTX_REMOTE_SERVER,
  CLSCTX_INPROC_HANDLER16,
  CLSCTX_RESERVED1,
  CLSCTX_RESERVED2,
  CLSCTX_RESERVED3,
  CLSCTX_RESERVED4,
  CLSCTX_NO_CODE_DOWNLOAD,
  CLSCTX_RESERVED5,
  CLSCTX_NO_CUSTOM_MARSHAL,
  CLSCTX_ENABLE_CODE_DOWNLOAD,
  CLSCTX_NO_FAILURE_LOG,
  CLSCTX_DISABLE_AAA,
  CLSCTX_ENABLE_AAA,
  CLSCTX_FROM_DEFAULT_CONTEXT,
  CLSCTX_ACTIVATE_X86_SERVER,
  CLSCTX_ACTIVATE_32_BIT_SERVER,
  CLSCTX_ACTIVATE_64_BIT_SERVER,
  CLSCTX_ENABLE_CLOAKING,
  CLSCTX_APPCONTAINER,
  CLSCTX_ACTIVATE_AAA_AS_IU,
  CLSCTX_RESERVED6,
  CLSCTX_ACTIVATE_ARM32_SERVER,
  CLSCTX_PS_DLL
} CLSCTX;

typedef struct _GUID
{
  unsigned long Data1;
  unsigned short Data2;
  unsigned short Data3;
  unsigned char Data4[8];
} GUID;

typedef GUID  IID;
typedef GUID  CLSID;
typedef GUID  FAR* REFGUID;
typedef IID   FAR* REFIID;
typedef CLSID FAR* REFCLSID;

typedef DWORD HRESULT;

typedef ULONG (*IUNK_ADDREF)(void);
typedef HRESULT (*IUNK_QUERYINF)(REFIID riid,LPVOID* ppObj);
typedef ULONG (*IUNK_RELEASE)(void);

/*
typedef struct
{
IExampleVtbl	*lpVtbl;
DWORD			count;
char			buffer[80];
} MyRealIExample;
*/

typedef struct _IUnknown
{
	IUNK_ADDREF 	AddRef;
	IUNK_QUERYINF 	QueryInterface;
	IUNK_RELEASE 	Release;
}IUnknown;
typedef IUnknown FAR* LPUNKNOWN;

typedef struct _Instance
{
	LPVOID    this;
	IUnknown  pUnk;
}OBJINSTANCE;

HRESULT CoCreateInstance(REFCLSID  rclsid,
						 LPUNKNOWN pUnkOuter,
						 DWORD     dwClsContext,
						 REFIID    riid,
						 LPVOID    *ppv);

#endif
