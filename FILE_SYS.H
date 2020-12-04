

#ifndef	__CH376_FS_H__
#define __CH376_FS_H__

#include	"HAL.H"

#define	STRUCT_OFFSET( s, m )	( (UINT8)( & ((s *)0) -> m ) )

#ifdef	EN_LONG_NAME
#ifndef	LONG_NAME_BUF_LEN
#define	LONG_NAME_BUF_LEN	( LONG_NAME_PER_DIR * 20 )
#endif
#endif


UINT8	CH376ReadBlock( PUINT8 buf );

UINT8	CH376WriteReqBlock( PUINT8 buf );

void	CH376WriteHostBlock( PUINT8 buf, UINT8 len );

void	CH376WriteOfsBlock( PUINT8 buf, UINT8 ofs, UINT8 len );

void	CH376SetFileName( PUINT8 name );

UINT32	CH376Read32bitDat( void );

UINT8	CH376ReadVar8( UINT8 var );

void	CH376WriteVar8( UINT8 var, UINT8 dat );

UINT32	CH376ReadVar32( UINT8 var );

void	CH376WriteVar32( UINT8 var, UINT32 dat );

void	CH376EndDirInfo( void );

UINT32	CH376GetFileSize( void );

UINT8	CH376GetDiskStatus( void );

UINT8	CH376GetIntStatus( void );

#ifndef	NO_DEFAULT_CH376_INT
UINT8	Wait376Interrupt( void );
#endif

UINT8	CH376SendCmdWaitInt( UINT8 mCmd );

UINT8	CH376SendCmdDatWaitInt( UINT8 mCmd, UINT8 mDat );

UINT8	CH376DiskReqSense( void );

UINT8	CH376DiskConnect( void );

UINT8	CH376DiskMount( void );

UINT8	CH376FileOpen( PUINT8 name );

UINT8	CH376FileCreate( PUINT8 name );

UINT8	CH376DirCreate( PUINT8 name );

UINT8	CH376SeparatePath( PUINT8 path );

UINT8	CH376FileOpenDir( PUINT8 PathName, UINT8 StopName );

UINT8	CH376FileOpenPath( PUINT8 PathName );

UINT8	CH376FileCreatePath( PUINT8 PathName );

#ifdef	EN_DIR_CREATE
UINT8	CH376DirCreatePath( PUINT8 PathName );
#endif

UINT8	CH376FileErase( PUINT8 PathName );

UINT8	CH376FileClose( UINT8 UpdateSz );

UINT8	CH376DirInfoRead( void );

UINT8	CH376DirInfoSave( void );

UINT8	CH376ByteLocate( UINT32 offset );

UINT8	CH376ByteRead( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount );

UINT8	CH376ByteWrite( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount );

#ifdef	EN_DISK_QUERY

UINT8	CH376DiskCapacity( PUINT32 DiskCap );

UINT8	CH376DiskQuery( PUINT32 DiskFre );

#endif

UINT8	CH376SecLocate( UINT32 offset );

#ifdef	EN_SECTOR_ACCESS

UINT8	CH376DiskReadSec( PUINT8 buf, UINT32 iLbaStart, UINT8 iSectorCount );

UINT8	CH376DiskWriteSec( PUINT8 buf, UINT32 iLbaStart, UINT8 iSectorCount );

UINT8	CH376SecRead( PUINT8 buf, UINT8 ReqCount, PUINT8 RealCount );

UINT8	CH376SecWrite( PUINT8 buf, UINT8 ReqCount, PUINT8 RealCount );

#endif

#ifdef	EN_LONG_NAME

UINT8	CH376LongNameWrite( PUINT8 buf, UINT16 ReqCount );

UINT8	CH376CheckNameSum( PUINT8 DirName );

UINT8	CH376LocateInUpDir( PUINT8 PathName );
UINT8	CH376GetLongName( PUINT8 PathName, PUINT8 LongName );
UINT8	CH376CreateLongName( PUINT8 PathName, PUINT8 LongName );
#endif

#endif
