
#ifndef __FX_DOS_
#define __FX_DOS_

#include "fxtypes.h"

#define CONST_FXINFO_FILE		"/FXDISK.INF"
#define CONST_FXPREF_FILE		"/FXDISK.PRF"
#define CONST_FXDRIVER_DIR		"/DRIVERS"
#define CONST_FXSYSTEM_DIR	 	"/SYSTEM"
#define CONST_FXRESOURCE_DIR	"/RES"

#define CLOSE_NOUPDATE	0

//void k_sd_init(void);
//void k_sd_present(void);
//void k_sd_dir(void);
//void k_sd_ismounted(void);
typedef struct _fx_sd_direntry
{
	UCHAR filename[11];
	UCHAR type;
	UCHAR attrs[20];
}DIRENTRY;
typedef DIRENTRY FAR *PDIRENTRY;

typedef struct _fx_info
{
	CHAR 	stgName[32];
	BYTE	Reserved1;
	UINT	stgType;
	BYTE	Reserved2;
	BYTE	stgReserved[16];
}DISKINFO;
typedef DISKINFO FAR *PDISKINFO;

typedef struct _fx_fileinfo
{
	BYTE	type;
	LPCHAR	pFilename;
	ULONG	lSize;
	ULONG	lcreateDate;
	ULONG	lchangeDate;
}FILEINFO;
typedef FILEINFO FAR *PFILEINFO;


/*
typedef struct _FAT_DIR_INFO
{
   UINT8	DIR_Name[11];
   UINT8	DIR_Attr;
   UINT8	DIR_NTRes;
   UINT8	DIR_CrtTimeTenth;
   UINT16	DIR_CrtTime;
   UINT16	DIR_CrtDate;
   UINT16	DIR_LstAccDate;
   UINT16	DIR_FstClusHI;
   UINT16	DIR_WrtTime;
   UINT16	DIR_WrtDate;
   UINT16	DIR_FstClusLO;
   UINT32	DIR_FileSize;
} FAT_DIR_INFO, *P_FAT_DIR_INFO;
*/

typedef struct fat_extBS_32
{
	//extended fat32 stuff
	unsigned long		table_size_32;
	unsigned int		extended_flags;
	unsigned int		fat_version;
	unsigned long		root_cluster;
	unsigned int		fat_info;
	unsigned int		backup_BS_sector;
	unsigned char 		reserved_0[12];
	unsigned char		drive_number;
	unsigned char 		reserved_1;
	unsigned char		boot_signature;
	unsigned int 		volume_id;
	unsigned char		volume_label[11];
	unsigned char		fat_type_label[8];

} fat_extBS_32_t;
typedef fat_extBS_32_t FAR *PFAT32EXT;

typedef struct fat_extBS_16
{
	//extended fat12 and fat16 stuff
	unsigned char		bios_drive_num;
	unsigned char		reserved1;
	unsigned char		boot_signature;
	unsigned int		volume_id;
	unsigned char		volume_label[11];
	unsigned char		fat_type_label[8];

} fat_extBS_16_t;

typedef struct fat_BS
{
	unsigned char 		bootjmp[3];
	unsigned char 		oem_name[8];
	unsigned int 	    bytes_per_sector;
	unsigned char		sectors_per_cluster;
	unsigned int		reserved_sector_count;
	unsigned char		table_count;
	unsigned int		root_entry_count;
	unsigned int		total_sectors_16;
	unsigned char		media_type;
	unsigned int		table_size_16;
	unsigned int		sectors_per_track;
	unsigned int		head_side_count;
	unsigned int 		hidden_sector_count;
	unsigned int 		total_sectors_32;

	//this will be cast to it's specific type once the driver actually knows what type of FAT this is.
	unsigned char		extended_section[54];

} fat_BS_t;

typedef struct __FATBootSector
{
	unsigned char 		bootjmp[3];
	unsigned char 		oem_name[8];
	unsigned int 	    bytes_per_sector;
	unsigned char		sectors_per_cluster;
	unsigned int		reserved_sector_count;
	unsigned char		fat_table_count;
	unsigned int		root_entry_count;
	unsigned int		total_sectors_16;
	unsigned char		media_type;
	unsigned int		sectors_per_fat;
	unsigned int		sectors_per_track;
	unsigned int		head_side_count;
	unsigned long 		hidden_sector_count;
	unsigned long 		total_sectors_32;
	unsigned char		drive_number;
	unsigned char		reserved1;
	unsigned char 		boot_sig;
	unsigned long 		vol_id;
	unsigned char 		vol_name[11];
	unsigned char 		file_system_type[8];

	//this will be cast to it's specific type once the driver actually knows what type of FAT this is.
	unsigned char		extended_section[54];

} FATBOOTSECTOR;
typedef FATBOOTSECTOR FAR *PFATBOOTSECTOR;

typedef struct __PARTITIONTABLE{
    unsigned char first_byte;
    unsigned char start_chs[3];
    unsigned char partition_type;
    unsigned char end_chs[3];
    unsigned long start_sector;
    unsigned long length_sectors;
} PARTITIONTABLE;
typedef PARTITIONTABLE FAR *PPARTITIONTABLE;


typedef struct {
    unsigned char jmp[3];
    char oem[8];
    unsigned short sector_size;
    unsigned char sectors_per_cluster;
    unsigned short reserved_sectors;
    unsigned char number_of_fats;
    unsigned short root_dir_entries;
    unsigned short total_sectors_short; // if zero, later field is used
    unsigned char media_descriptor;
    unsigned short fat_size_sectors;
    unsigned short sectors_per_track;
    unsigned short number_of_heads;
    unsigned long hidden_sectors;
    unsigned long total_sectors_long;

    unsigned char drive_number;
    unsigned char current_head;
    unsigned char boot_signature;
    unsigned long volume_id;
    char volume_label[11];
    char fs_type[8];
    char boot_code[448];
    unsigned short boot_sector_signature;
} Fat16BootSector;

typedef struct __FAT16ENTRY{
    unsigned char filename[8];
    unsigned char ext[3];
    unsigned char attributes;
    unsigned char reserved[10];
    unsigned int  modify_time;
    unsigned int  modify_date;
    unsigned int  starting_cluster;
    unsigned long file_size;
} FAT16ENTRY;
typedef FAT16ENTRY FAR *PFAT16ENTRY;

typedef struct __FAT16ENTRYLONG{
    unsigned char filename[8];
    unsigned char ext[3];
    unsigned char attributes;
    unsigned char reserved[10];
    unsigned int  modify_time;
    unsigned int  modify_date;
    unsigned int  starting_cluster;
    unsigned long file_size;
    LPSTR 		  plongfileName;
} FAT16ENTRYLONG;
typedef FAT16ENTRYLONG FAR *PFAT16ENTRYLONG;

typedef struct _LongFileName
{
   BYTE sequenceNo;            // Sequence number, 0xe5 fordeleted entry
   BYTE fileName_Part1[10];    // file name part
   BYTE fileattribute;         // File attibute
   BYTE type;
   BYTE checksum;              // Checksum
   BYTE fileName_Part2[12];    // WORD reserved_2;
   INT	fstclusLO;
   BYTE fileName_Part3[4];
}LFN;
typedef LFN FAR *PLFN;

#define FAT_PAGE_SIZE				(512)
#define FAT_PARTITION_TABLE_1		(0x1BE)
#define FAT_PARTITION_TABLE_2		(0x1CE)
#define FAT_PARTITION_TABLE_3		(0x1DE)
#define FAT_PARTITION_TABLE_4		(0x1EE)
#define FAT_BOOT_SIGNATURE			(0x1FE)

#define FAT_PARTITION_TYPE_DOS30	(0x04)
#define FAT_PARTITION_TYPE_DOS33	(0x06)
#define FAT_PARTITION_TYPE_DOS70	(0x0E)


PFILEINFO _k_dos_alloc_fileinfo(FAT_DIR_INFO FAR *direntry);
LPCHAR    _k_dos_alloc_filename(LPCHAR filename11);

VOID	  k_dos_dealloc_filelist(PFXNODE plist);


#ifdef USE_FX256_FMX

typedef struct _IDSECTOR
{
   USHORT  wGenConfig;
   USHORT  wNumCyls;
   USHORT  wReserved;
   USHORT  wNumHeads;
   USHORT  wBytesPerTrack;
   USHORT  wBytesPerSector;
   USHORT  wSectorsPerTrack;
   USHORT  wVendorUnique[3];
   CHAR    sSerialNumber[20];
   USHORT  wBufferType;
   USHORT  wBufferSize;
   USHORT  wECCSize;
   CHAR    sFirmwareRev[8];
   CHAR    sModelNumber[40];
   USHORT  wMoreVendorUnique;
   USHORT  wDoubleWordIO;
   USHORT  wCapabilities;
   USHORT  wReserved1;
   USHORT  wPIOTiming;
   USHORT  wDMATiming;
   USHORT  wBS;
   USHORT  wNumCurrentCyls;
   USHORT  wNumCurrentHeads;
   USHORT  wNumCurrentSectorsPerTrack;
   ULONG   ulCurrentSectorCapacity;
   USHORT  wMultSectorStuff;
   ULONG   ulTotalAddressableSectors;
   USHORT  wSingleWordDMA;
   USHORT  wMultiWordDMA;
   BYTE    bReserved[128];
} IDSECTOR, *PIDSECTOR;

typedef struct _IDENTIFY_DEVICE_DATA
{
  struct {
    USHORT Reserved1 : 1;
    USHORT Retired3 : 1;
    USHORT ResponseIncomplete : 1;
    USHORT Retired2 : 3;
    USHORT FixedDevice : 1;
    USHORT RemovableMedia : 1;
    USHORT Retired1 : 7;
    USHORT DeviceType : 1;
  } GeneralConfiguration;
  USHORT NumCylinders;
  USHORT SpecificConfiguration;
  USHORT NumHeads;
  //USHORT Retired1[2];
  UCHAR  Retired1Bytes[4];
  USHORT NumSectorsPerTrack;
  //USHORT VendorUnique1[3];
  UCHAR  VendorUnique1Bytes[6];
  UCHAR  SerialNumber[20];
  USHORT Retired2[2];
  USHORT Obsolete1;
  UCHAR  FirmwareRevision[8];
  UCHAR  ModelNumber[40];
  UCHAR  MaximumBlockTransfer;
  UCHAR  VendorUnique2;
  struct {
    USHORT FeatureSupported : 1;
    USHORT Reserved : 15;
  } TrustedComputing;
  struct {
    UCHAR  CurrentLongPhysicalSectorAlignment : 2;
    UCHAR  ReservedByte49 : 6;
    UCHAR  DmaSupported : 1;
    UCHAR  LbaSupported : 1;
    UCHAR  IordyDisable : 1;
    UCHAR  IordySupported : 1;
    UCHAR  Reserved1 : 1;
    UCHAR  StandybyTimerSupport : 1;
    UCHAR  Reserved2 : 2;
    USHORT ReservedWord50;
  } Capabilities;
  USHORT ObsoleteWords51[2];
  USHORT TranslationFieldsValid : 3;
  USHORT Reserved3 : 5;
  USHORT FreeFallControlSensitivity : 8;
  USHORT NumberOfCurrentCylinders;
  USHORT NumberOfCurrentHeads;
  USHORT CurrentSectorsPerTrack;
  ULONG  CurrentSectorCapacity;
  UCHAR  CurrentMultiSectorSetting;
  UCHAR  MultiSectorSettingValid : 1;
  UCHAR  ReservedByte59 : 3;
  UCHAR  SanitizeFeatureSupported : 1;
  UCHAR  CryptoScrambleExtCommandSupported : 1;
  UCHAR  OverwriteExtCommandSupported : 1;
  UCHAR  BlockEraseExtCommandSupported : 1;
  ULONG  UserAddressableSectors;
  USHORT ObsoleteWord62;
  USHORT MultiWordDMASupport : 8;
  USHORT MultiWordDMAActive : 8;
  USHORT AdvancedPIOModes : 8;
  USHORT ReservedByte64 : 8;
  USHORT MinimumMWXferCycleTime;
  USHORT RecommendedMWXferCycleTime;
  USHORT MinimumPIOCycleTime;
  USHORT MinimumPIOCycleTimeIORDY;
  struct {
    USHORT ZonedCapabilities : 2;
    USHORT NonVolatileWriteCache : 1;
    USHORT ExtendedUserAddressableSectorsSupported : 1;
    USHORT DeviceEncryptsAllUserData : 1;
    USHORT ReadZeroAfterTrimSupported : 1;
    USHORT Optional28BitCommandsSupported : 1;
    USHORT IEEE1667 : 1;
    USHORT DownloadMicrocodeDmaSupported : 1;
    USHORT SetMaxSetPasswordUnlockDmaSupported : 1;
    USHORT WriteBufferDmaSupported : 1;
    USHORT ReadBufferDmaSupported : 1;
    USHORT DeviceConfigIdentifySetDmaSupported : 1;
    USHORT LPSAERCSupported : 1;
    USHORT DeterministicReadAfterTrimSupported : 1;
    USHORT CFastSpecSupported : 1;
  } AdditionalSupported;
  USHORT ReservedWords70[5];
  USHORT QueueDepth : 5;
  USHORT ReservedWord75 : 11;
  struct {
    USHORT Reserved0 : 1;
    USHORT SataGen1 : 1;
    USHORT SataGen2 : 1;
    USHORT SataGen3 : 1;
    USHORT Reserved1 : 4;
    USHORT NCQ : 1;
    USHORT HIPM : 1;
    USHORT PhyEvents : 1;
    USHORT NcqUnload : 1;
    USHORT NcqPriority : 1;
    USHORT HostAutoPS : 1;
    USHORT DeviceAutoPS : 1;
    USHORT ReadLogDMA : 1;
    USHORT Reserved2 : 1;
    USHORT CurrentSpeed : 3;
    USHORT NcqStreaming : 1;
    USHORT NcqQueueMgmt : 1;
    USHORT NcqReceiveSend : 1;
    USHORT DEVSLPtoReducedPwrState : 1;
    USHORT Reserved3 : 8;
  } SerialAtaCapabilities;
  struct {
    USHORT Reserved0 : 1;
    USHORT NonZeroOffsets : 1;
    USHORT DmaSetupAutoActivate : 1;
    USHORT DIPM : 1;
    USHORT InOrderData : 1;
    USHORT HardwareFeatureControl : 1;
    USHORT SoftwareSettingsPreservation : 1;
    USHORT NCQAutosense : 1;
    USHORT DEVSLP : 1;
    USHORT HybridInformation : 1;
    USHORT Reserved1 : 6;
  } SerialAtaFeaturesSupported;
  struct {
    USHORT Reserved0 : 1;
    USHORT NonZeroOffsets : 1;
    USHORT DmaSetupAutoActivate : 1;
    USHORT DIPM : 1;
    USHORT InOrderData : 1;
    USHORT HardwareFeatureControl : 1;
    USHORT SoftwareSettingsPreservation : 1;
    USHORT DeviceAutoPS : 1;
    USHORT DEVSLP : 1;
    USHORT HybridInformation : 1;
    USHORT Reserved1 : 6;
  } SerialAtaFeaturesEnabled;
  USHORT MajorRevision;
  USHORT MinorRevision;
  struct {
    USHORT SmartCommands : 1;
    USHORT SecurityMode : 1;
    USHORT RemovableMediaFeature : 1;
    USHORT PowerManagement : 1;
    USHORT Reserved1 : 1;
    USHORT WriteCache : 1;
    USHORT LookAhead : 1;
    USHORT ReleaseInterrupt : 1;
    USHORT ServiceInterrupt : 1;
    USHORT DeviceReset : 1;
    USHORT HostProtectedArea : 1;
    USHORT Obsolete1 : 1;
    USHORT WriteBuffer : 1;
    USHORT ReadBuffer : 1;
    USHORT Nop : 1;
    USHORT Obsolete2 : 1;
    USHORT DownloadMicrocode : 1;
    USHORT DmaQueued : 1;
    USHORT Cfa : 1;
    USHORT AdvancedPm : 1;
    USHORT Msn : 1;
    USHORT PowerUpInStandby : 1;
    USHORT ManualPowerUp : 1;
    USHORT Reserved2 : 1;
    USHORT SetMax : 1;
    USHORT Acoustics : 1;
    USHORT BigLba : 1;
    USHORT DeviceConfigOverlay : 1;
    USHORT FlushCache : 1;
    USHORT FlushCacheExt : 1;
    USHORT WordValid83 : 2;
    USHORT SmartErrorLog : 1;
    USHORT SmartSelfTest : 1;
    USHORT MediaSerialNumber : 1;
    USHORT MediaCardPassThrough : 1;
    USHORT StreamingFeature : 1;
    USHORT GpLogging : 1;
    USHORT WriteFua : 1;
    USHORT WriteQueuedFua : 1;
    USHORT WWN64Bit : 1;
    USHORT URGReadStream : 1;
    USHORT URGWriteStream : 1;
    USHORT ReservedForTechReport : 2;
    USHORT IdleWithUnloadFeature : 1;
    USHORT WordValid : 2;
  } CommandSetSupport;
  struct {
    USHORT SmartCommands : 1;
    USHORT SecurityMode : 1;
    USHORT RemovableMediaFeature : 1;
    USHORT PowerManagement : 1;
    USHORT Reserved1 : 1;
    USHORT WriteCache : 1;
    USHORT LookAhead : 1;
    USHORT ReleaseInterrupt : 1;
    USHORT ServiceInterrupt : 1;
    USHORT DeviceReset : 1;
    USHORT HostProtectedArea : 1;
    USHORT Obsolete1 : 1;
    USHORT WriteBuffer : 1;
    USHORT ReadBuffer : 1;
    USHORT Nop : 1;
    USHORT Obsolete2 : 1;
    USHORT DownloadMicrocode : 1;
    USHORT DmaQueued : 1;
    USHORT Cfa : 1;
    USHORT AdvancedPm : 1;
    USHORT Msn : 1;
    USHORT PowerUpInStandby : 1;
    USHORT ManualPowerUp : 1;
    USHORT Reserved2 : 1;
    USHORT SetMax : 1;
    USHORT Acoustics : 1;
    USHORT BigLba : 1;
    USHORT DeviceConfigOverlay : 1;
    USHORT FlushCache : 1;
    USHORT FlushCacheExt : 1;
    USHORT Resrved3 : 1;
    USHORT Words119_120Valid : 1;
    USHORT SmartErrorLog : 1;
    USHORT SmartSelfTest : 1;
    USHORT MediaSerialNumber : 1;
    USHORT MediaCardPassThrough : 1;
    USHORT StreamingFeature : 1;
    USHORT GpLogging : 1;
    USHORT WriteFua : 1;
    USHORT WriteQueuedFua : 1;
    USHORT WWN64Bit : 1;
    USHORT URGReadStream : 1;
    USHORT URGWriteStream : 1;
    USHORT ReservedForTechReport : 2;
    USHORT IdleWithUnloadFeature : 1;
    USHORT Reserved4 : 2;
  } CommandSetActive;
  USHORT UltraDMASupport : 8;
  USHORT UltraDMAActive : 8;
  struct {
    USHORT TimeRequired : 15;
    USHORT ExtendedTimeReported : 1;
  } NormalSecurityEraseUnit;
  struct {
    USHORT TimeRequired : 15;
    USHORT ExtendedTimeReported : 1;
  } EnhancedSecurityEraseUnit;
  USHORT CurrentAPMLevel : 8;
  USHORT ReservedWord91 : 8;
  USHORT MasterPasswordID;
  USHORT HardwareResetResult;
  USHORT CurrentAcousticValue : 8;
  USHORT RecommendedAcousticValue : 8;
  USHORT StreamMinRequestSize;
  USHORT StreamingTransferTimeDMA;
  USHORT StreamingAccessLatencyDMAPIO;
  ULONG  StreamingPerfGranularity;
  ULONG  Max48BitLBA[2];
  USHORT StreamingTransferTime;
  USHORT DsmCap;
  struct {
    USHORT LogicalSectorsPerPhysicalSector : 4;
    USHORT Reserved0 : 8;
    USHORT LogicalSectorLongerThan256Words : 1;
    USHORT MultipleLogicalSectorsPerPhysicalSector : 1;
    USHORT Reserved1 : 2;
  } PhysicalLogicalSectorSize;
  USHORT InterSeekDelay;
  USHORT WorldWideName[4];
  USHORT ReservedForWorldWideName128[4];
  USHORT ReservedForTlcTechnicalReport;
  USHORT WordsPerLogicalSector[2];
  struct {
    USHORT ReservedForDrqTechnicalReport : 1;
    USHORT WriteReadVerify : 1;
    USHORT WriteUncorrectableExt : 1;
    USHORT ReadWriteLogDmaExt : 1;
    USHORT DownloadMicrocodeMode3 : 1;
    USHORT FreefallControl : 1;
    USHORT SenseDataReporting : 1;
    USHORT ExtendedPowerConditions : 1;
    USHORT Reserved0 : 6;
    USHORT WordValid : 2;
  } CommandSetSupportExt;
  struct {
    USHORT ReservedForDrqTechnicalReport : 1;
    USHORT WriteReadVerify : 1;
    USHORT WriteUncorrectableExt : 1;
    USHORT ReadWriteLogDmaExt : 1;
    USHORT DownloadMicrocodeMode3 : 1;
    USHORT FreefallControl : 1;
    USHORT SenseDataReporting : 1;
    USHORT ExtendedPowerConditions : 1;
    USHORT Reserved0 : 6;
    USHORT Reserved1 : 2;
  } CommandSetActiveExt;
  USHORT ReservedForExpandedSupportandActive[6];
  USHORT MsnSupport : 2;
  USHORT ReservedWord127 : 14;
  struct {
    USHORT SecuritySupported : 1;
    USHORT SecurityEnabled : 1;
    USHORT SecurityLocked : 1;
    USHORT SecurityFrozen : 1;
    USHORT SecurityCountExpired : 1;
    USHORT EnhancedSecurityEraseSupported : 1;
    USHORT Reserved0 : 2;
    USHORT SecurityLevel : 1;
    USHORT Reserved1 : 7;
  } SecurityStatus;
  USHORT ReservedWord129[31];
  struct {
    USHORT MaximumCurrentInMA : 12;
    USHORT CfaPowerMode1Disabled : 1;
    USHORT CfaPowerMode1Required : 1;
    USHORT Reserved0 : 1;
    USHORT Word160Supported : 1;
  } CfaPowerMode1;
  USHORT ReservedForCfaWord161[7];
  USHORT NominalFormFactor : 4;
  USHORT ReservedWord168 : 12;
  struct {
    USHORT SupportsTrim : 1;
    USHORT Reserved0 : 15;
  } DataSetManagementFeature;
  USHORT AdditionalProductID[4];
  USHORT ReservedForCfaWord174[2];
  USHORT CurrentMediaSerialNumber[30];
  struct {
    USHORT Supported : 1;
    USHORT Reserved0 : 1;
    USHORT WriteSameSuported : 1;
    USHORT ErrorRecoveryControlSupported : 1;
    USHORT FeatureControlSuported : 1;
    USHORT DataTablesSuported : 1;
    USHORT Reserved1 : 6;
    USHORT VendorSpecific : 4;
  } SCTCommandTransport;
  USHORT ReservedWord207[2];
  struct {
    USHORT AlignmentOfLogicalWithinPhysical : 14;
    USHORT Word209Supported : 1;
    USHORT Reserved0 : 1;
  } BlockAlignment;
  USHORT WriteReadVerifySectorCountMode3Only[2];
  USHORT WriteReadVerifySectorCountMode2Only[2];
  struct {
    USHORT NVCachePowerModeEnabled : 1;
    USHORT Reserved0 : 3;
    USHORT NVCacheFeatureSetEnabled : 1;
    USHORT Reserved1 : 3;
    USHORT NVCachePowerModeVersion : 4;
    USHORT NVCacheFeatureSetVersion : 4;
  } NVCacheCapabilities;
  USHORT NVCacheSizeLSW;
  USHORT NVCacheSizeMSW;
  USHORT NominalMediaRotationRate;
  USHORT ReservedWord218;
  struct {
    UCHAR NVCacheEstimatedTimeToSpinUpInSeconds;
    UCHAR Reserved;
  } NVCacheOptions;
  USHORT WriteReadVerifySectorCountMode : 8;
  USHORT ReservedWord220 : 8;
  USHORT ReservedWord221;
  struct {
    USHORT MajorVersion : 12;
    USHORT TransportType : 4;
  } TransportMajorVersion;
  USHORT TransportMinorVersion;
  USHORT ReservedWord224[6];
  ULONG  ExtendedNumberOfUserAddressableSectors[2];
  USHORT MinBlocksPerDownloadMicrocodeMode03;
  USHORT MaxBlocksPerDownloadMicrocodeMode03;
  USHORT ReservedWord236[19];
  USHORT Signature : 8;
  USHORT CheckSum : 8;
} IDENTIFY_DEVICE_DATA;
typedef IDENTIFY_DEVICE_DATA *PIDENTIFY_DEVICE_DATA;


typedef UCHAR (*DOSSECTORREADER)(unsigned long offset,LPCHAR receiveBuffer);
typedef UCHAR (*DOSSECTORWRITER)(unsigned long offset,LPCHAR receiveBuffer);

typedef VOID (*DOSINITDEVICE)(LPVOID);


typedef struct _FXDosDevice
{
	UCHAR		   type;
	BOOL		   initialized;
	LPVOID		   devdata;
	UCHAR		   devstatus;
	FATBOOTSECTOR  bootSector;
	PARTITIONTABLE partitionTable;
	UCHAR 		   fileAllocationTable[FAT_PAGE_SIZE];
	ULONG		   bsOffset;
	ULONG 		   rootDirSectors;
	INT 		   root_entry_count;
	INT            rootEntriesPerPage;
	INT 		   sectors_per_cluster;
	ULONG		   fatTableOffset;
	UCHAR		   volume_name[12];
	UCHAR		   root_volume_name[12];
	UINT8		   errorCode;
	DOSINITDEVICE   pfInit;
	DOSSECTORREADER pfReader;
	DOSSECTORWRITER pfWriter;
}FXDOSDEVICE;
typedef FXDOSDEVICE FAR *PFXDOSDEVICE;

#define FXDOS_SDC		0x01
#define FXDOS_HDD		0x02
#define FXDOS_FDD		0x03

BOOL 		 k_read_volume_name(PFAT16ENTRY entry,PFXDOSDEVICE pdev);
PFXDOSDEVICE k_create_dos_device(UINT type);
PFXNODELIST  k_read_dos_directory(PFXDOSDEVICE pfxdosDevice);
LPSTR 		 k_dos_alloc_short_name(PFAT16ENTRYLONG entry);
ULONG 		 k_dos_get_name(PFAT16ENTRYLONG entry,LPCHAR mbsBuffer);


UINT 		 k_dos_read_file(PFXDOSDEVICE pfxdosDevice,LPCSTR fileName);

void 		 k_sd_dos_init(PFXDOSDEVICE pfxdosDevice);
void 	     k_hd_dos_init(PFXDOSDEVICE pfxdosDevice);
void 	     k_fd_dos_init(PFXDOSDEVICE pfxdosDevice);

UCHAR 		k_read_sd_sector(unsigned long offset,LPCHAR receiveBuffer);
UCHAR 		k_read_fd_sector(unsigned long offset,LPCHAR receiveBuffer);


UCHAR readSDSector(unsigned long offset,LPCHAR receiveBuffer);

BOOL 		 k_sd_read_vol(PDISKINFO pdiskInfo);

BOOL 		k_sd_openfile(LPCHAR filename);
UINT8 		k_sd_createfile( LPCHAR name );
BOOL 		k_sd_close(UCHAR update);
BOOL 		k_sd_setfilename(LPCHAR filename);
BOOL	    k_sd_getdirinfo(P_FAT_DIR_INFO pdirName);

UINT8 		 k_sd_initialize(void);
BOOL 		 k_sd_ispresent(void);
UINT8 		 k_sd_status(VOID);
PFXDOSDEVICE k_sd_mount(void);
PFXNODE 	 k_sd_read_dir(void);
void 		 k_sd_search_dir(LPCHAR searchString);
BOOL 		 k_sd_create_dir(LPCHAR dirName);
BOOL 		 k_sd_delete(LPCHAR dirorFileName);

UINT8 		k_sd_byte_locate( UINT32 offset );
UINT8 		k_sd_byte_read( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount );
UINT8 		k_sd_byte_write( LPCHAR buf, UINT16 ReqCount, PUINT16 RealCount );

UINT16 k_read_disk_sector( LPCHAR buf, UINT32 iLbaStart, UINT8 iSectorCount );
UINT8  k_sd_read_block( PUINT8 buf );
UINT8  k_sd_write_req_block( PUINT8 buf );
void   k_sd_write_host_block( PUINT8 buf, UINT8 len );
void   k_sd_write_ofs_blocks( PUINT8 buf, UINT8 ofs, UINT8 len );
UINT8  k_sd_disk_req_sense( void );


BOOL k_sd_read_file(LPCHAR fineName,LPVOID data,UINT size);
BOOL k_sd_write_file(LPCHAR fineName,LPVOID data,UINT size);

void k_sd_test(void);

VOID k_GetDirectory(VOID);
VOID GetDirectory(LPCSTR deviceName);

UINT8 k_sd_full_test(VOID);

#else

UCHAR k_sd_waitforirq(void);
void k_sd_sendcmd(UCHAR command);
void k_sd_senddta(UCHAR data);
void k_sd_cmd_delay(void);
void k_sd_dta_delay(void);

BOOL k_sd_read_vol(PDISKINFO pdiskInfo);

BOOL k_sd_openfile(LPCHAR filename);
UINT8 k_sd_createfile( LPCHAR name );
BOOL k_sd_close(UCHAR update);
BOOL k_sd_setfilename(LPCHAR filename);
BOOL k_sd_getdirinfo(P_FAT_DIR_INFO pdirName);

BOOL k_sd_initialize(void);
BOOL k_sd_ispresent(void);
UINT8 k_sd_status(VOID);
BOOL k_sd_mount(void);
PFXNODE k_sd_read_dir(void);
void k_sd_search_dir(LPCHAR searchString);
BOOL k_sd_create_dir(LPCHAR dirName);
BOOL k_sd_delete(LPCHAR dirorFileName);

UINT8 k_sd_byte_locate( UINT32 offset );
UINT8 k_sd_byte_read( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount );
UINT8 k_sd_byte_write( LPCHAR buf, UINT16 ReqCount, PUINT16 RealCount );

UINT16 k_read_disk_sector( LPCHAR buf, UINT32 iLbaStart, UINT8 iSectorCount );
UINT8 k_sd_read_block( PUINT8 buf );
UINT8 k_sd_write_req_block( PUINT8 buf );
void  k_sd_write_host_block( PUINT8 buf, UINT8 len );
void  k_sd_write_ofs_blocks( PUINT8 buf, UINT8 ofs, UINT8 len );
UINT8 k_sd_disk_req_sense( void );
UINT8 k_sd_cmd_and_irq( UINT8 mCmd );


BOOL k_sd_read_file(LPCHAR fineName,LPVOID data,UINT size);
BOOL k_sd_write_file(LPCHAR fineName,LPVOID data,UINT size);

void k_sd_test(void);
#endif


#endif
