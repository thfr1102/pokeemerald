# 1 "src/anim_mon_front_pics.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/anim_mon_front_pics.c"
# 1 "include/global.h" 1



# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 5 "include/global.h" 2
# 1 "tools/agbcc/include/limits.h" 1
# 6 "include/global.h" 2
# 1 "include/config.h" 1
# 7 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;
typedef vu8 vbool8;
typedef vu16 vbool16;
typedef vu32 vbool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 120 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    const u8 *boot_srcp;
    const u8 *boot_endp;
    const u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const u32 *src, void *dest);

void LZ77UnCompVram(const u32 *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);

s32 Div(s32 num, s32 denom);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 11 "include/gba/gba.h" 2
# 8 "include/global.h" 2
# 1 "include/constants/global.h" 1
# 9 "include/global.h" 2
# 1 "include/constants/flags.h" 1



# 1 "include/constants/opponents.h" 1
# 5 "include/constants/flags.h" 2
# 10 "include/global.h" 2
# 1 "include/constants/vars.h" 1
# 11 "include/global.h" 2
# 1 "include/constants/species.h" 1
# 12 "include/global.h" 2
# 132 "include/global.h"
struct Coords8
{
    s8 x;
    s8 y;
};

struct UCoords8
{
    u8 x;
    u8 y;
};

struct Coords16
{
    s16 x;
    s16 y;
};

struct UCoords16
{
    u16 x;
    u16 y;
};

struct Coords32
{
    s32 x;
    s32 y;
};

struct UCoords32
{
    u32 x;
    u32 y;
};

struct Time
{
             s16 days;
             s8 hours;
             s8 minutes;
             s8 seconds;
};

struct Pokedex
{
             u8 order;
             u8 mode;
             u8 nationalMagic;
             u8 unknown2;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
             u8 owned[((((412) / 8) + (((412) % 8) ? 1 : 0)))];
             u8 seen[((((412) / 8) + (((412) % 8) ? 1 : 0)))];
};

struct PokemonJumpResults
{
    u16 jumpsInRow;
    u16 field2;
    u16 excellentsInRow;
    u16 field6;
    u32 field8;
    u32 bestJumpScore;
};

struct BerryPickingResults
{
    u32 bestScore;
    u16 berriesPicked;
    u16 berriesPickedInRow;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
};


struct PyramidBag
{
    u16 itemId[2][10];
    u8 quantity[2][10];
};

struct BerryCrush
{
    u16 berryCrushResults[4];
    u32 berryPowderAmount;
    u32 unk;
};

struct ApprenticeMon
{
    u16 species;
    u16 moves[4];
    u16 item;
};



struct Apprentice
{
    u8 id:5;
    u8 lvlMode:2;
    u8 numQuestions;
    u8 number;
    struct ApprenticeMon party[6 / 2];
    u16 speechWon[6];
    u8 playerId[4];
    u8 playerName[7];
    u8 language;
    u32 checksum;
};

struct BattleTowerPokemon
{
    u16 species;
    u16 heldItem;
    u16 moves[4];
    u8 level;
    u8 ppBonuses;
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u32 otId;
    u32 hpIV:5;
    u32 attackIV:5;
    u32 defenseIV:5;
    u32 speedIV:5;
    u32 spAttackIV:5;
    u32 spDefenseIV:5;
    u32 gap:1;
    u32 abilityNum:1;
    u32 personality;
    u8 nickname[10 + 1];
    u8 friendship;
};



struct EmeraldBattleTowerRecord
{
             u8 lvlMode;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 speechWon[6];
             u16 speechLost[6];
             struct BattleTowerPokemon party[4];
             u8 language;
             u32 checksum;
};

struct BattleTowerInterview
{
    u16 playerSpecies;
    u16 opponentSpecies;
    u8 opponentName[7 + 1];
    u8 opponentMonNickname[10 + 1];
    u8 opponentLanguage;
};

struct BattleTowerEReaderTrainer
{
             u8 unk0;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 farewellPlayerLost[6];
             u16 farewellPlayerWon[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};


struct DomeMonData
{
    u16 moves[4];
    u8 evs[6];
    u8 nature;
};

struct RentalMon
{
    u16 monId;
    u32 personality;
    u8 ivs;
    u8 abilityNum;
};

struct BattleDomeTrainer
{
    u16 trainerId:10;
    u16 isEliminated:1;
    u16 eliminatedAt:2;
    u16 forfeited:3;
};




struct BattleFrontier
{
              struct EmeraldBattleTowerRecord towerPlayer;
              struct EmeraldBattleTowerRecord towerRecords[5];
              struct BattleTowerInterview towerInterview;
              struct BattleTowerEReaderTrainer ereaderTrainer;
              u8 challengeStatus;
              u8 lvlMode:2;
              u8 challengePaused:1;
              u8 disableRecordBattle:1;
              u16 selectedPartyMons[4];
              u16 curChallengeBattleNum;
              u16 trainerIds[20];
              u32 winStreakActiveFlags;
              u16 towerWinStreaks[4][2];
              u16 towerRecordWinStreaks[4][2];
              u16 battledBrainFlags;
              u16 towerSinglesStreak;
              u16 towerNumWins;
              u8 towerBattleOutcome;
              u8 towerLvlMode;
              u8 domeAttemptedSingles50:1;
              u8 domeAttemptedSinglesOpen:1;
              u8 domeHasWonSingles50:1;
              u8 domeHasWonSinglesOpen:1;
              u8 domeAttemptedDoubles50:1;
              u8 domeAttemptedDoublesOpen:1;
              u8 domeHasWonDoubles50:1;
              u8 domeHasWonDoublesOpen:1;
              u8 domeUnused;
              u8 domeLvlMode;
              u8 domeBattleMode;
              u16 domeWinStreaks[2][2];
              u16 domeRecordWinStreaks[2][2];
              u16 domeTotalChampionships[2][2];
              struct BattleDomeTrainer domeTrainers[16];
              u16 domeMonIds[16][3];
              u16 unused_DC4;
              u16 palacePrize;
              u16 palaceWinStreaks[2][2];
              u16 palaceRecordWinStreaks[2][2];
              u16 arenaPrize;
              u16 arenaWinStreaks[2];
              u16 arenaRecordStreaks[2];
              u16 factoryWinStreaks[2][2];
              u16 factoryRecordWinStreaks[2][2];
              u16 factoryRentsCount[2][2];
              u16 factoryRecordRentsCount[2][2];
              u16 pikePrize;
              u16 pikeWinStreaks[2];
              u16 pikeRecordStreaks[2];
              u16 pikeTotalStreaks[2];
              u8 pikeHintedRoomIndex:3;
              u8 pikeHintedRoomType:4;
              u8 pikeHealingRoomsDisabled:1;
              u16 pikeHeldItemsBackup[3];
              u16 pyramidPrize;
              u16 pyramidWinStreaks[2];
              u16 pyramidRecordStreaks[2];
              u16 pyramidRandoms[4];
              u8 pyramidTrainerFlags;
              struct PyramidBag pyramidBag;
              u8 pyramidLightRadius;
              u16 verdanturfTentPrize;
              u16 fallarborTentPrize;
              u16 slateportTentPrize;
              struct RentalMon rentalMons[3 * 2];
              u16 battlePoints;
              u16 cardBattlePoints;
              u32 battlesCount;
              u16 domeWinningMoves[16];
              u8 trainerFlags;
              u8 opponentNames[2][7 + 1];
              u8 opponentTrainerIds[2][4];
              u8 unk_EF9:7;
              u8 savedGame:1;
              u8 unused_EFA;
              u8 unused_EFB;
              struct DomeMonData domePlayerPartyData[3];
};

struct ApprenticeQuestion
{
    u8 questionId:2;
    u8 monId:2;
    u8 moveSlot:2;
    u8 suggestedChange:2;
    u16 data;
};

struct PlayersApprentice
{
             u8 id;
             u8 lvlMode:2;
             u8 questionsAnswered:4;
             u8 leadMonId:2;
             u8 party:3;
             u8 saveId:2;
             u8 unused;
             u8 speciesIds[6 / 2];
             struct ApprenticeQuestion questions[9];
};

struct RankingHall1P
{
    u8 id[4];
    u16 winStreak;
    u8 name[7 + 1];
    u8 language;
};

struct RankingHall2P
{
    u8 id1[4];
    u8 id2[4];
    u16 winStreak;
    u8 name1[7 + 1];
    u8 name2[7 + 1];
    u8 language;
};

struct SaveBlock2
{
             u8 playerName[7 + 1];
             u8 playerGender;
             u8 specialSaveWarpFlags;
             u8 playerTrainerId[4];
             u16 playTimeHours;
             u8 playTimeMinutes;
             u8 playTimeSeconds;
             u8 playTimeVBlanks;
             u8 optionsButtonMode;
             u16 optionsTextSpeed:3;
             u16 optionsWindowFrameType:5;
             u16 optionsSound:1;
             u16 optionsBattleStyle:1;
             u16 optionsBattleSceneOff:1;
             u16 regionMapZoom:1;
             struct Pokedex pokedex;
             u8 filler_90[0x8];
             struct Time localTimeOffset;
             struct Time lastBerryTreeUpdate;
             u32 gcnLinkFlags;
             u32 encryptionKey;
             struct PlayersApprentice playerApprentice;
             struct Apprentice apprentices[4];
              struct BerryCrush berryCrush;
              struct PokemonJumpResults pokeJump;
              struct BerryPickingResults berryPick;
              struct RankingHall1P hallRecords1P[9][2][3];
              struct RankingHall2P hallRecords2P[2][3];
              u16 contestLinkResults[5][4];
              struct BattleFrontier frontier;
};

extern struct SaveBlock2 *gSaveBlock2Ptr;

struct SecretBaseParty
{
    u32 personality[6];
    u16 moves[6 * 4];
    u16 species[6];
    u16 heldItems[6];
    u8 levels[6];
    u8 EVs[6];
};

struct SecretBase
{
               u8 secretBaseId;
               u8 sbr_field_1_0:4;
               u8 gender:1;
               u8 battledOwnerToday:1;
               u8 registryStatus:2;
               u8 trainerName[7];
               u8 trainerId[4];
               u8 language;
               u16 numSecretBasesReceived;
               u8 numTimesEntered;
               u8 sbr_field_11;
               u8 decorations[16];
               u8 decorationPositions[16];
               struct SecretBaseParty party;
};

# 1 "include/constants/game_stat.h" 1
# 531 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1
# 13 "include/global.fieldmap.h"
enum
{
    CONNECTION_SOUTH = 1,
    CONNECTION_NORTH,
    CONNECTION_WEST,
    CONNECTION_EAST,
    CONNECTION_DIVE,
    CONNECTION_EMERGE
};

typedef void (*TilesetCB)(void);

struct Tileset
{
             bool8 isCompressed;
             bool8 isSecondary;
             void *tiles;
             void *palettes;
             u16 *metatiles;
             u16 *metatileAttributes;
             TilesetCB callback;
};

struct MapLayout
{
             s32 width;
             s32 height;
             u16 *border;
             u16 *map;
             struct Tileset *primaryTileset;
             struct Tileset *secondaryTileset;
};

struct BackupMapLayout
{
    s32 width;
    s32 height;
    u16 *map;
};

struct ObjectEventTemplate
{
             u8 localId;
             u8 graphicsId;
             u8 inConnection;
             s16 x;
             s16 y;
             u8 elevation;
             u8 movementType;
             u16 movementRangeX:4;
             u16 movementRangeY:4;
             u16 trainerType;
             u16 trainerRange_berryTreeId;
             const u8 *script;
             u16 flagId;
};

struct WarpEvent
{
    s16 x, y;
    u8 elevation;
    u8 warpId;
    u8 mapNum;
    u8 mapGroup;
};

struct CoordEvent
{
    s16 x, y;
    u8 elevation;
    u16 trigger;
    u16 index;
    u8 *script;
};

struct BgEvent
{
    u16 x, y;
    u8 elevation;
    u8 kind;
    union {
        u8 *script;
        struct {
            u16 item;
            u16 hiddenItemId;
        } hiddenItem;
        u32 secretBaseId;
    } bgUnion;
};

struct MapEvents
{
    u8 objectEventCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;
    struct ObjectEventTemplate *objectEvents;
    struct WarpEvent *warps;
    struct CoordEvent *coordEvents;
    struct BgEvent *bgEvents;
};

struct MapConnection
{
    u8 direction;
    u32 offset;
    u8 mapGroup;
    u8 mapNum;
};

struct MapConnections
{
    s32 count;
    struct MapConnection *connections;
};

struct MapHeader
{
               const struct MapLayout *mapLayout;
               const struct MapEvents *events;
               const u8 *mapScripts;
               const struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;
               u8 filler_18[2];
               u8 flags;
               u8 battleType;
};
# 156 "include/global.fieldmap.h"
struct ObjectEvent
{
             u32 active:1;
             u32 singleMovementActive:1;
             u32 triggerGroundEffectsOnMove:1;
             u32 triggerGroundEffectsOnStop:1;
             u32 disableCoveringGroundEffects:1;
             u32 landingJump:1;
             u32 heldMovementActive:1;
             u32 heldMovementFinished:1;
             u32 frozen:1;
             u32 facingDirectionLocked:1;
             u32 disableAnim:1;
             u32 enableAnim:1;
             u32 inanimate:1;
             u32 invisible:1;
             u32 offScreen:1;
             u32 trackedByCamera:1;
             u32 isPlayer:1;
             u32 hasReflection:1;
             u32 inShortGrass:1;
             u32 inShallowFlowingWater:1;
             u32 inSandPile:1;
             u32 inHotSprings:1;
             u32 hasShadow:1;
             u32 spriteAnimPausedBackup:1;
             u32 spriteAffineAnimPausedBackup:1;
             u32 disableJumpLandingGroundEffect:1;
             u32 fixedPriority:1;
             u32 hideReflection:1;
             u8 spriteId;
             u8 graphicsId;
             u8 movementType;
             u8 trainerType;
             u8 localId;
             u8 mapNum;
             u8 mapGroup;
             u8 currentElevation:4;
             u8 previousElevation:4;
             struct Coords16 initialCoords;
             struct Coords16 currentCoords;
             struct Coords16 previousCoords;
             u16 facingDirection:4;
             u16 movementDirection:4;
             u16 rangeX:4;
             u16 rangeY:4;
             u8 fieldEffectSpriteId;
             u8 warpArrowSpriteId;
             u8 movementActionId;
             u8 trainerRange_berryTreeId;
             u8 currentMetatileBehavior;
             u8 previousMetatileBehavior;
             u8 previousMovementDirection;
             u8 directionSequenceIndex;
             u8 playerCopyableMovement;

};

struct ObjectEventGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag;
             u16 reflectionPaletteTag;
             u16 size;
             s16 width;
             s16 height;
             u8 paletteSlot:4;
             u8 shadowSize:2;
             u8 inanimate:1;
             u8 disableReflectionPaletteLoad:1;
             u8 tracks;
             const struct OamData *oam;
             const struct SubspriteTable *subspriteTables;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
};

enum {
    PLAYER_AVATAR_STATE_NORMAL,
    PLAYER_AVATAR_STATE_MACH_BIKE,
    PLAYER_AVATAR_STATE_ACRO_BIKE,
    PLAYER_AVATAR_STATE_SURFING,
    PLAYER_AVATAR_STATE_UNDERWATER,
    PLAYER_AVATAR_STATE_FIELD_MOVE,
    PLAYER_AVATAR_STATE_FISHING,
    PLAYER_AVATAR_STATE_WATERING,
};
# 254 "include/global.fieldmap.h"
enum
{
    ACRO_BIKE_NORMAL,
    ACRO_BIKE_TURNING,
    ACRO_BIKE_WHEELIE_STANDING,
    ACRO_BIKE_BUNNY_HOP,
    ACRO_BIKE_WHEELIE_MOVING,
    ACRO_BIKE_STATE5,
    ACRO_BIKE_STATE6,
};

enum
{
    COLLISION_NONE,
    COLLISION_OUTSIDE_RANGE,
    COLLISION_IMPASSABLE,
    COLLISION_ELEVATION_MISMATCH,
    COLLISION_OBJECT_EVENT,
    COLLISION_STOP_SURFING,
    COLLISION_LEDGE_JUMP,
    COLLISION_PUSHED_BOULDER,
    COLLISION_ROTATING_GATE,
    COLLISION_WHEELIE_HOP,
    COLLISION_ISOLATED_VERTICAL_RAIL,
    COLLISION_ISOLATED_HORIZONTAL_RAIL,
    COLLISION_VERTICAL_RAIL,
    COLLISION_HORIZONTAL_RAIL,
};


enum
{
    NOT_MOVING,
    TURN_DIRECTION,
    MOVING,
};


enum
{
    T_NOT_MOVING,
    T_TILE_TRANSITION,
    T_TILE_CENTER,
};

struct PlayerAvatar
{
             u8 flags;
             u8 transitionFlags;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 objectEventId;
             bool8 preventStep;
             u8 gender;
             u8 acroBikeState;
             u8 newDirBackup;
             u8 bikeFrameCounter;
             u8 bikeSpeed;

             u32 directionHistory;
             u32 abStartSelectHistory;

             u8 dirTimerHistory[8];
             u8 abStartSelectTimerHistory[8];
};

struct Camera
{
    bool8 active:1;
    s32 x;
    s32 y;
};

extern struct ObjectEvent gObjectEvents[16];
extern u8 gSelectedObjectEvent;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
extern struct Camera gCamera;
# 532 "include/global.h" 2
# 1 "include/global.berry.h" 1






struct Berry
{
    const u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    const u8 *description1;
    const u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};



struct Berry2
{
    u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    u8 *description1;
    u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};

struct EnigmaBerry
{
    struct Berry2 berry;
    u8 itemEffect[18];
    u8 holdEffect;
    u8 holdEffectParam;
    u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[6 + 1];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
    u8 berry;
    u8 stage:7;
    u8 growthSparkle:1;
    u16 minutesUntilNextStage;
    u8 berryYield;
    u8 regrowthCount:4;
    u8 watered1:1;
    u8 watered2:1;
    u8 watered3:1;
    u8 watered4:1;
};
# 533 "include/global.h" 2
# 1 "include/global.tv.h" 1



typedef union
{

    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[26];
                 u8 srcTrainerId3Lo;
                 u8 srcTrainerId3Hi;
                 u8 srcTrainerId2Lo;
                 u8 srcTrainerId2Hi;
                 u8 srcTrainerIdLo;
                 u8 srcTrainerIdHi;
                 u8 trainerIdLo;
                 u8 trainerIdHi;
    } common;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[34];
    } commonInit;



    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[6];
                 u8 playerName[7 + 1];
                 u8 language;
    } fanclubLetter;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 var02;
                 u16 words[6];
                 u8 playerName[7 + 1];
                 u8 language;
    } recentHappenings;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 friendshipHighNybble:4;
                 u8 questionAsked:4;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_0F[1];
                 u8 nickname[7 + 1];
                 u16 words18[2];
                 u16 words[4];
    } fanclubOpinions;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 words[2];
                 u16 var06;
                 u8 pad_08[3];
                 u8 string_0b[12];
                 u8 language;
    } unkShow04;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 pokemonName[10 + 1];
                 u8 trainerName[11];
                 u8 random;
                 u8 random2;
                 u16 randomSpecies;
                 u8 language;
                 u8 pokemonNameLanguage;
    } nameRaterShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[2];
                 u8 pokemonNickname[10 + 1];
                 u8 contestCategory:3;
                 u8 contestRank:2;
                 u8 contestResult:2;
                 u16 move;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 trainerName[7 + 1];
                 u16 species;
                 u8 pokemonName[8];
                 u16 defeatedSpecies;
                 u16 numFights;
                 u16 words[1];
                 u8 btLevel;
                 u8 interviewResponse;
                 bool8 wonTheChallenge;
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainerTower;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 losingSpecies;
                 u8 losingTrainerName[7 + 1];
                 u8 loserAppealFlag;
                 u8 round1Placing;
                 u8 round2Placing;
                 u8 winnerAppealFlag;
                 u16 move;
                 u16 winningSpecies;
                 u8 winningTrainerName[7 + 1];
                 u8 category;
                 u8 winningTrainerLanguage;
                 u8 losingTrainerLanguage;
    } contestLiveUpdates;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 sheen;
                 u8 flavor:3;
                 u8 color:2;
                 u8 worstBlenderName[7 + 1];
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 worstBlenderLanguage;
    } threeCheers;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 speciesOpponent;
                 u8 playerName[7 + 1];
                 u8 linkOpponentName[7 + 1];
                 u16 move;
                 u16 speciesPlayer;
                 u8 battleType;
                 u8 language;
                 u8 linkOpponentLanguage;
    } battleUpdate;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[7 + 1];
                 u8 idLo;
                 u8 idHi;
                 u8 idolName[7 + 1];
                 u16 words[1];
                 u8 score;
                 u8 language;
                 u8 idolNameLanguage;
    } fanClubSpecial;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[7 + 1];
                 u8 contestCategory;
                 u8 nickname[10 + 1];
                 u8 pokeblockState;
                 u8 language;
                 u8 pokemonNameLanguage;
    } contestLiveUpdates2;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 language2;
                 u8 nickname[10 + 1];
                 u8 ball;
                 u16 species;
                 u8 nBallsUsed;
                 u8 playerName[7 + 1];
    } pokemonToday;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 priceReduced;
                 u8 language;
                 u8 pad04[2];
                 u16 itemIds[3];
                 u16 itemAmounts[3];
                 u8 shopLocation;
                 u8 playerName[7 + 1];
    } smartshopperShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 pad03[9];
                 u16 species;
                 u16 species2;
                 u8 nBallsUsed;
                 u8 outcome;
                 u8 location;
                 u8 playerName[7 + 1];
    } pokemonTodayFailed;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nBites;
                 u8 nFails;
                 u16 species;
                 u8 language;
                 u8 pad07[12];
                 u8 playerName[7 + 1];
    } pokemonAngler;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 numPokeCaught;
                 u16 caughtPoke;
                 u16 steps;
                 u16 species;
                 u8 location;
                 u8 language;
                 u8 pad0c[7];
                 u8 playerName[7 + 1];
    } worldOfMasters;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 dexCount;
                 u8 badgeCount;
                 u8 nSilverSymbols;
                 u8 nGoldSymbols;
                 u8 location;
                 u16 battlePoints;
                 u16 mapLayoutId;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[7 + 1];
    } rivalTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 gender;
                 u8 language;
                 u8 filler_0a[9];
                 u8 playerName[7 + 1];
    } trendWatcher;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 location;
                 u8 language;
                 u16 mapLayoutId;
                 u8 filler_08[11];
                 u8 playerName[7 + 1];
    } treasureInvestigators;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 won;
                 u8 whichGame;
                 u16 nCoins;
                 u8 filler_06[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[7 + 1];
    } findThatGamer;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 lastOpponentSpecies;
                 u8 location;
                 u8 outcome;
                 u16 caughtMonBall;
                 u16 balls;
                 u16 poke1Species;
                 u16 lastUsedMove;
                 u8 language;
                 u8 filler_0f[4];
                 u8 playerName[7 + 1];
    } breakingNews;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 avgLevel;
                 u8 nDecorations;
                 u8 decorations[4];
                 u16 species;
                 u16 move;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[7 + 1];
    } secretBaseVisit;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 whichPrize;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[7 + 1];
    } lottoWinner;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 move;
                 u16 foeSpecies;
                 u16 species;
                 u16 otherMoves[3];
                 u16 betterMove;
                 u8 nOtherMoves;
                 u8 language;
                 u8 filler_12[1];
                 u8 playerName[7 + 1];
    } battleSeminar;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[7 + 1];
    } trainerFanClub;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nRibbons;
                 u8 selectedRibbon;
                 u8 nickname[10 + 1];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_12[2];
                 u8 playerName[7 + 1];
    } cuties;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winStreak;
                 u16 species1;
                 u16 species2;
                 u16 species3;
                 u16 species4;
                 u8 language;
                 u8 facility;
                 u8 filler_0e[5];
                 u8 playerName[7 + 1];
    } frontier;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 count;
                 u8 actionIdx;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[7 + 1];
    } numberOne;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 stepsInBase;
                 u8 baseOwnersName[7 + 1];
                 u32 flags;
                 u16 item;
                 u8 savedState;
                 u8 playerName[7 + 1];
                 u8 language;
                 u8 baseOwnersNameLanguage;
    } secretBaseSecrets;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nMonsCaught;
                 u8 nPkblkUsed;
                 u8 language;
                 u8 filler_05[14];
                 u8 playerName[7 + 1];
    } safariFanClub;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 var02;
                 u8 var03;
                 u16 moves[4];
                 u16 species;
                 u16 var0E;
                 u8 locationMapNum;
                 u8 locationMapGroup;
                 u8 var12;
                 u8 probability;
                 u8 level;
                 u8 var15;
                 u16 daysLeft;
                 u8 language;
    } massOutbreak;
} TVShow;

typedef struct
{
    u8 kind;
    u8 state;
    u16 days;
} PokeNews;

struct GabbyAndTyData
{
             u16 mon1;
             u16 mon2;
             u16 lastMove;
             u16 quote[1];
             u8 mapnum;
             u8 battleNum;
             u8 battleTookMoreThanOneTurn:1;
             u8 playerLostAMon:1;
             u8 playerUsedHealingItem:1;
             u8 playerThrewABall:1;
             u8 onAir:1;
             u8 valA_5:3;
             u8 battleTookMoreThanOneTurn2:1;
             u8 playerLostAMon2:1;
             u8 playerUsedHealingItem2:1;
             u8 playerThrewABall2:1;
             u8 valB_4:4;
};
# 534 "include/global.h" 2
# 1 "include/pokemon.h" 1



# 1 "include/constants/pokemon.h" 1
# 5 "include/pokemon.h" 2
# 1 "gflib/sprite.h" 1






struct SpriteSheet
{
    const void *data;
    u16 size;
    u16 tag;
};

struct CompressedSpriteSheet
{
    const u32 *data;
    u16 size;
    u16 tag;
};

struct SpriteFrameImage
{
    const void *data;
    u16 size;
};





struct SpritePalette
{
    const u16 *data;
    u16 tag;
};

struct CompressedSpritePalette
{
    const u32 *data;
    u16 tag;
};

struct AnimFrameCmd
{


    u32 imageValue:16;

    u32 duration:6;
    u32 hFlip:1;
    u32 vFlip:1;
};

struct AnimLoopCmd
{
    u32 type:16;
    u32 count:6;
};

struct AnimJumpCmd
{
    u32 type:16;
    u32 target:6;
};




union AnimCmd
{
    s16 type;
    struct AnimFrameCmd frame;
    struct AnimLoopCmd loop;
    struct AnimJumpCmd jump;
};
# 86 "gflib/sprite.h"
struct AffineAnimFrameCmd
{
    s16 xScale;
    s16 yScale;
    u8 rotation;
    u8 duration;
};

struct AffineAnimLoopCmd
{
    s16 type;
    s16 count;
};

struct AffineAnimJumpCmd
{
    s16 type;
    u16 target;
};

struct AffineAnimEndCmdAlt
{
    s16 type;
    u16 val;
};

union AffineAnimCmd
{
    s16 type;
    struct AffineAnimFrameCmd frame;
    struct AffineAnimLoopCmd loop;
    struct AffineAnimJumpCmd jump;
    struct AffineAnimEndCmdAlt end;
};
# 136 "gflib/sprite.h"
struct AffineAnimState
{
    u8 animNum;
    u8 animCmdIndex;
    u8 delayCounter;
    u8 loopCounter;
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

enum
{
    SUBSPRITES_OFF,
    SUBSPRITES_ON,
    SUBSPRITES_IGNORE_PRIORITY,
};

struct Subsprite
{
    s8 x;
    s8 y;
    u16 shape:2;
    u16 size:2;
    u16 tileOffset:10;
    u16 priority:2;
};

struct SubspriteTable
{
    u8 subspriteCount;
    const struct Subsprite *subsprites;
};

struct Sprite;

typedef void (*SpriteCallback)(struct Sprite *);

struct SpriteTemplate
{
    u16 tileTag;
    u16 paletteTag;
    const struct OamData *oam;
    const union AnimCmd *const *anims;
    const struct SpriteFrameImage *images;
    const union AffineAnimCmd *const *affineAnims;
    SpriteCallback callback;
};





struct Sprite
{
             struct OamData oam;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
             const struct SpriteTemplate *template;
             const struct SubspriteTable *subspriteTables;
             SpriteCallback callback;

             struct Coords16 pos1;
             struct Coords16 pos2;
             s8 centerToCornerVecX;
             s8 centerToCornerVecY;

             u8 animNum;
             u8 animCmdIndex;
             u8 animDelayCounter:6;
             bool8 animPaused:1;
             bool8 affineAnimPaused:1;
             u8 animLoopCounter;


             s16 data[8];

             bool16 inUse:1;
             bool16 coordOffsetEnabled:1;
             bool16 invisible:1;
             bool16 flags_3:1;
             bool16 flags_4:1;
             bool16 flags_5:1;
             bool16 flags_6:1;
             bool16 flags_7:1;
             bool16 hFlip:1;
             bool16 vFlip:1;
             bool16 animBeginning:1;
             bool16 affineAnimBeginning:1;
             bool16 animEnded:1;
             bool16 affineAnimEnded:1;
             bool16 usingSheet:1;
             bool16 flags_f:1;

             u16 sheetTileStart;

             u8 subspriteTableNum:6;
             u8 subspriteMode:2;

             u8 subpriority;
};

struct OamMatrix
{
    s16 a;
    s16 b;
    s16 c;
    s16 d;
};

extern const struct OamData gDummyOamData;
extern const union AnimCmd *const gDummySpriteAnimTable[];
extern const union AffineAnimCmd *const gDummySpriteAffineAnimTable[];
extern const struct SpriteTemplate gDummySpriteTemplate;

extern u8 gReservedSpritePaletteCount;
extern struct Sprite gSprites[];
extern u8 gOamLimit;
extern u16 gReservedSpriteTileCount;
extern s16 gSpriteCoordOffsetX;
extern s16 gSpriteCoordOffsetY;
extern struct OamMatrix gOamMatrices[];
extern bool8 gAffineAnimsDisabled;

void ResetSpriteData(void);
void AnimateSprites(void);
void BuildOamBuffer(void);
u8 CreateSprite(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateSpriteAtEnd(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateInvisibleSprite(void (*callback)(struct Sprite *));
u8 CreateSpriteAndAnimate(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
void DestroySprite(struct Sprite *sprite);
void ResetOamRange(u8 a, u8 b);
void LoadOam(void);
void SetOamMatrix(u8 matrixNum, u16 a, u16 b, u16 c, u16 d);
void CalcCenterToCornerVec(struct Sprite *sprite, u8 shape, u8 size, u8 affineMode);
void SpriteCallbackDummy(struct Sprite *sprite);
void ProcessSpriteCopyRequests(void);
void RequestSpriteCopy(const u8 *src, u8 *dest, u16 size);
void FreeSpriteTiles(struct Sprite *sprite);
void FreeSpritePalette(struct Sprite *sprite);
void FreeSpriteOamMatrix(struct Sprite *sprite);
void DestroySpriteAndFreeResources(struct Sprite *sprite);
void sub_800142C(u32 a1, u32 a2, u16 *a3, u16 a4, u32 a5);
void AnimateSprite(struct Sprite *sprite);
void sub_8007E18(struct Sprite* sprite, s16 a2, s16 a3);
void StartSpriteAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SeekSpriteAnim(struct Sprite *sprite, u8 animCmdIndex);
void StartSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SetSpriteSheetFrameTileNum(struct Sprite *sprite);
u8 AllocOamMatrix(void);
void FreeOamMatrix(u8 matrixNum);
void InitSpriteAffineAnim(struct Sprite *sprite);
void SetOamMatrixRotationScaling(u8 matrixNum, s16 xScale, s16 yScale, u16 rotation);
u16 LoadSpriteSheet(const struct SpriteSheet *sheet);
void LoadSpriteSheets(const struct SpriteSheet *sheets);
u16 AllocTilesForSpriteSheet(struct SpriteSheet *sheet);
void AllocTilesForSpriteSheets(struct SpriteSheet *sheets);
void LoadTilesForSpriteSheet(const struct SpriteSheet *sheet);
void LoadTilesForSpriteSheets(struct SpriteSheet *sheets);
void FreeSpriteTilesByTag(u16 tag);
void FreeSpriteTileRanges(void);
u16 GetSpriteTileStartByTag(u16 tag);
u16 GetSpriteTileTagByTileStart(u16 start);
void RequestSpriteSheetCopy(const struct SpriteSheet *sheet);
u16 LoadSpriteSheetDeferred(const struct SpriteSheet *sheet);
void FreeAllSpritePalettes(void);
u8 LoadSpritePalette(const struct SpritePalette *palette);
void LoadSpritePalettes(const struct SpritePalette *palettes);
u8 AllocSpritePalette(u16 tag);
u8 IndexOfSpritePaletteTag(u16 tag);
u16 GetSpritePaletteTagByPaletteNum(u8 paletteNum);
void FreeSpritePaletteByTag(u16 tag);
void SetSubspriteTables(struct Sprite *sprite, const struct SubspriteTable *subspriteTables);
bool8 AddSpriteToOamBuffer(struct Sprite *object, u8 *oamIndex);
bool8 AddSubspritesToOamBuffer(struct Sprite *sprite, struct OamData *destOam, u8 *oamIndex);
void CopyToSprites(u8 *src);
void CopyFromSprites(u8 *dest);
u8 SpriteTileAllocBitmapOp(u16 bit, u8 op);
void ClearSpriteCopyRequests(void);
void ResetAffineAnimData(void);
# 6 "include/pokemon.h" 2



struct PokemonSubstruct0
{
    u16 species;
    u16 heldItem;
    u32 experience;
    u8 ppBonuses;
    u8 friendship;
    u16 filler;
};

struct PokemonSubstruct1
{
    u16 moves[4];
    u8 pp[4];
};

struct PokemonSubstruct2
{
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
};

struct PokemonSubstruct3
{
            u8 pokerus;
            u8 metLocation;

            u16 metLevel:7;
            u16 metGame:4;
            u16 pokeball:4;
            u16 otGender:1;

            u32 hpIV:5;
            u32 attackIV:5;
            u32 defenseIV:5;
            u32 speedIV:5;
            u32 spAttackIV:5;
            u32 spDefenseIV:5;
            u32 isEgg:1;
            u32 abilityNum:1;

            u32 coolRibbon:3;
            u32 beautyRibbon:3;
            u32 cuteRibbon:3;
            u32 smartRibbon:3;
            u32 toughRibbon:3;
            u32 championRibbon:1;
            u32 winningRibbon:1;
            u32 victoryRibbon:1;
            u32 artistRibbon:1;
            u32 effortRibbon:1;
            u32 giftRibbon1:1;
            u32 giftRibbon2:1;
            u32 giftRibbon3:1;
            u32 giftRibbon4:1;
            u32 giftRibbon5:1;
            u32 giftRibbon6:1;
            u32 giftRibbon7:1;
            u32 fatefulEncounter:4;
            u32 obedient:1;
};

union PokemonSubstruct
{
    struct PokemonSubstruct0 type0;
    struct PokemonSubstruct1 type1;
    struct PokemonSubstruct2 type2;
    struct PokemonSubstruct3 type3;
    u16 raw[6];
};

struct BoxPokemon
{
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg:1;
    u8 hasSpecies:1;
    u8 isEgg:1;
    u8 unused:5;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;

    union
    {
        u32 raw[12];
        union PokemonSubstruct substructs[4];
    } secure;
};

struct Pokemon
{
    struct BoxPokemon box;
    u32 status;
    u8 level;
    u8 mail;
    u16 hp;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
};

struct Unknown_806F160_Struct
{
    u32 field_0_0:4;
    u32 field_0_1:4;
    u32 field_1:8;
    u16 magic:8;
    u32 field_3_0:4;
    u32 field_3_1:4;
    void *bytes;
    u8 **byteArrays;
    struct SpriteTemplate *templates;
    struct SpriteFrameImage *frameImages;
};

struct BattlePokemon
{
             u16 species;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
             u16 moves[4];
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 abilityNum:2;
             s8 statStages[6 + 2];
             u16 ability;
             u8 type1;
             u8 type2;
             u8 type3;
             u8 pp[4];
             u16 hp;
             u8 level;
             u8 friendship;
             u16 maxHP;
             u16 item;
             u8 nickname[10 + 1];
             u8 ppBonuses;
             u8 otName[7 + 1];
             u32 experience;
             u32 personality;
             u32 status1;
             u32 status2;
             u32 otId;
};

struct BaseStats
{
            u8 baseHP;
            u8 baseAttack;
            u8 baseDefense;
            u8 baseSpeed;
            u8 baseSpAttack;
            u8 baseSpDefense;
            u8 type1;
            u8 type2;
            u8 catchRate;
            u8 expYield;
            u16 evYield_HP:2;
            u16 evYield_Attack:2;
            u16 evYield_Defense:2;
            u16 evYield_Speed:2;
            u16 evYield_SpAttack:2;
            u16 evYield_SpDefense:2;
            u16 item1;
            u16 item2;
            u8 genderRatio;
            u8 eggCycles;
            u8 friendship;
            u8 growthRate;
            u8 eggGroup1;
            u8 eggGroup2;
            u16 abilities[2];



            u8 safariZoneFleeRate;
            u8 bodyColor : 7;
            u8 noFlip : 1;
};

# 1 "include/constants/battle_config.h" 1
# 214 "include/pokemon.h" 2
struct BattleMove
{
    u16 effect;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;
    u8 target;
    s8 priority;
    u32 flags;
    u8 split;
    u8 argument;
};

struct SpindaSpot
{
    u8 x, y;
    u16 image[16];
};

struct LevelUpMove
{
    u16 move;
    u16 level;
};

struct Evolution
{
    u16 method;
    u16 param;
    u16 targetSpecies;
};
# 257 "include/pokemon.h"
extern u8 gPlayerPartyCount;
extern struct Pokemon gPlayerParty[6];
extern u8 gEnemyPartyCount;
extern struct Pokemon gEnemyParty[6];
extern struct SpriteTemplate gMultiuseSpriteTemplate;

extern const struct BattleMove gBattleMoves[];
extern const u8 gFacilityClassToPicIndex[];
extern const u8 gFacilityClassToTrainerClass[];
extern const struct BaseStats gBaseStats[];
extern const u8 *const gItemEffectTable[];
extern const struct Evolution gEvolutionTable[][5];
extern const u32 gExperienceTables[][100 + 1];
extern const struct LevelUpMove *const gLevelUpLearnsets[];
extern const u8 gPPUpGetMask[];
extern const u8 gPPUpSetMask[];
extern const u8 gPPUpAddMask[];
extern const u8 gStatStageRatios[12 + 1][2];
extern const u16 gLinkPlayerFacilityClasses[];
extern const struct SpriteTemplate gUnknown_08329D98[];
extern const s8 gNatureStatTable[][5];

void ZeroBoxMonData(struct BoxPokemon *boxMon);
void ZeroMonData(struct Pokemon *mon);
void ZeroPlayerPartyMons(void);
void ZeroEnemyPartyMons(void);
void CreateMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateBoxMon(struct BoxPokemon *boxMon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 nature);
void CreateMonWithGenderNatureLetter(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 gender, u8 nature, u8 unownLetter);
void CreateMaleMon(struct Pokemon *mon, u16 species, u8 level);
void CreateMonWithIVsPersonality(struct Pokemon *mon, u16 species, u8 level, u32 ivs, u32 personality);
void CreateMonWithIVsOTID(struct Pokemon *mon, u16 species, u8 level, u8 *ivs, u32 otId);
void CreateMonWithEVSpread(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 evSpread);
void CreateBattleTowerMon(struct Pokemon *mon, struct BattleTowerPokemon *src);
void CreateBattleTowerMon2(struct Pokemon *mon, struct BattleTowerPokemon *src, bool8 lvl50);
void CreateApprenticeMon(struct Pokemon *mon, const struct Apprentice *src, u8 monId);
void CreateMonWithEVSpreadNatureOTID(struct Pokemon *mon, u16 species, u8 level, u8 nature, u8 fixedIV, u8 evSpread, u32 otId);
void ConvertPokemonToBattleTowerPokemon(struct Pokemon *mon, struct BattleTowerPokemon *dest);
void CreateObedientMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
bool8 sub_80688F8(u8 caseId, u8 battlerId);
void SetDeoxysStats(void);
u16 GetUnionRoomTrainerPic(void);
u16 GetUnionRoomTrainerClass(void);
void CreateObedientEnemyMon(void);
void CalculateMonStats(struct Pokemon *mon);
void BoxMonToMon(const struct BoxPokemon *src, struct Pokemon *dest);
u8 GetLevelFromMonExp(struct Pokemon *mon);
u8 GetLevelFromBoxMonExp(struct BoxPokemon *boxMon);
u16 GiveMoveToMon(struct Pokemon *mon, u16 move);
u16 GiveMoveToBattleMon(struct BattlePokemon *mon, u16 move);
void SetMonMoveSlot(struct Pokemon *mon, u16 move, u8 slot);
void SetBattleMonMoveSlot(struct BattlePokemon *mon, u16 move, u8 slot);
void GiveMonInitialMoveset(struct Pokemon *mon);
void GiveBoxMonInitialMoveset(struct BoxPokemon *boxMon);
u16 MonTryLearningNewMove(struct Pokemon *mon, bool8 firstMove);
void DeleteFirstMoveAndGiveMoveToMon(struct Pokemon *mon, u16 move);
void DeleteFirstMoveAndGiveMoveToBoxMon(struct BoxPokemon *boxMon, u16 move);

u8 CountAliveMonsInBattle(u8 caseId);




u8 GetDefaultMoveTarget(u8 battlerId);
u8 GetMonGender(struct Pokemon *mon);
u8 GetBoxMonGender(struct BoxPokemon *boxMon);
u8 GetGenderFromSpeciesAndPersonality(u16 species, u32 personality);
void SetMultiuseSpriteTemplateToPokemon(u16 speciesTag, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerBack(u16 trainerSpriteId, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerFront(u16 arg0, u8 battlerPosition);





u32 GetMonData();
u32 GetBoxMonData();

void SetMonData(struct Pokemon *mon, s32 field, const void *dataArg);
void SetBoxMonData(struct BoxPokemon *boxMon, s32 field, const void *dataArg);
void CopyMon(void *dest, void *src, size_t size);
u8 GiveMonToPlayer(struct Pokemon *mon);
u8 SendMonToPC(struct Pokemon* mon);
u8 CalculatePlayerPartyCount(void);
u8 CalculateEnemyPartyCount(void);
u8 GetMonsStateToDoubles(void);
u8 GetMonsStateToDoubles_2(void);
u16 GetAbilityBySpecies(u16 species, u8 abilityNum);
u16 GetMonAbility(struct Pokemon *mon);
void CreateSecretBaseEnemyParty(struct SecretBase *secretBaseRecord);
u8 GetSecretBaseTrainerPicIndex(void);
u8 GetSecretBaseTrainerClass(void);
bool8 IsPlayerPartyAndPokemonStorageFull(void);
bool8 IsPokemonStorageFull(void);
void GetSpeciesName(u8 *name, u16 species);
u8 CalculatePPWithBonus(u16 move, u8 ppBonuses, u8 moveIndex);
void RemoveMonPPBonus(struct Pokemon *mon, u8 moveIndex);
void RemoveBattleMonPPBonus(struct BattlePokemon *mon, u8 moveIndex);
void PokemonToBattleMon(struct Pokemon *src, struct BattlePokemon *dst);
void CopyPlayerPartyMonToBattleData(u8 battlerId, u8 partyIndex);
bool8 ExecuteTableBasedItemEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
bool8 PokemonUseItemEffects(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex, u8 e);
bool8 HealStatusConditions(struct Pokemon *mon, u32 battlePartyId, u32 healMask, u8 battlerId);
u8 GetItemEffectParamOffset(u16 itemId, u8 effectByte, u8 effectBit);
u8 *UseStatIncreaseItem(u16 itemId);
u8 GetNature(struct Pokemon *mon);
u8 GetNatureFromPersonality(u32 personality);
u16 GetEvolutionTargetSpecies(struct Pokemon *mon, u8 type, u16 evolutionItem);
u16 HoennPokedexNumToSpecies(u16 hoennNum);
u16 NationalPokedexNumToSpecies(u16 nationalNum);
u16 NationalToHoennOrder(u16 nationalNum);
u16 SpeciesToNationalPokedexNum(u16 species);
u16 SpeciesToHoennPokedexNum(u16 species);
u16 HoennToNationalOrder(u16 hoennNum);
u16 SpeciesToCryId(u16 species);
void sub_806D544(u16 species, u32 personality, u8 *dest);
void DrawSpindaSpots(u16 species, u32 personality, u8 *dest, u8 a4);
void EvolutionRenameMon(struct Pokemon *mon, u16 oldSpecies, u16 newSpecies);
u8 GetPlayerFlankId(void);
u16 GetLinkTrainerFlankId(u8 id);
s32 GetBattlerMultiplayerId(u16 a1);
u8 GetTrainerEncounterMusicId(u16 trainerOpponentId);
u16 ModifyStatByNature(u8 nature, u16 n, u8 statIndex);
void AdjustFriendship(struct Pokemon *mon, u8 event);
void MonGainEVs(struct Pokemon *mon, u16 defeatedSpecies);
u16 GetMonEVCount(struct Pokemon *mon);
void RandomlyGivePartyPokerus(struct Pokemon *party);
u8 CheckPartyPokerus(struct Pokemon *party, u8 selection);
u8 CheckPartyHasHadPokerus(struct Pokemon *party, u8 selection);
void UpdatePartyPokerusTime(u16 days);
void PartySpreadPokerus(struct Pokemon *party);
bool8 TryIncrementMonLevel(struct Pokemon *mon);
u32 CanMonLearnTMHM(struct Pokemon *mon, u8 tm);
u32 CanSpeciesLearnTMHM(u16 species, u8 tm);
u8 GetMoveRelearnerMoves(struct Pokemon *mon, u16 *moves);
u8 GetLevelUpMovesBySpecies(u16 species, u16 *moves);
u8 GetNumberOfRelearnableMoves(struct Pokemon *mon);
u16 SpeciesToPokedexNum(u16 species);
bool32 IsSpeciesInHoennDex(u16 species);
void ClearBattleMonForms(void);
u16 GetBattleBGM(void);
void PlayBattleBGM(void);
void PlayMapChosenOrBattleBGM(u16 songId);
void CreateTask_PlayMapChosenOrBattleBGM(u16 songId);
const u32 *GetMonFrontSpritePal(struct Pokemon *mon);
const u32 *GetMonSpritePalFromSpeciesAndPersonality(u16 species, u32 otId, u32 personality);
const struct CompressedSpritePalette *GetMonSpritePalStruct(struct Pokemon *mon);
const struct CompressedSpritePalette *GetMonSpritePalStructFromOtIdPersonality(u16 species, u32 otId , u32 personality);
bool32 IsHMMove2(u16 move);
bool8 IsMonSpriteNotFlipped(u16 species);
s8 GetMonFlavorRelation(struct Pokemon *mon, u8 flavor);
s8 GetFlavorRelationByPersonality(u32 personality, u8 flavor);
bool8 IsTradedMon(struct Pokemon *mon);
bool8 IsOtherTrainer(u32 otId, u8 *otName);
void MonRestorePP(struct Pokemon *mon);
void BoxMonRestorePP(struct BoxPokemon *boxMon);
void SetMonPreventsSwitchingString(void);
void SetWildMonHeldItem(void);
bool8 IsMonShiny(struct Pokemon *mon);
bool8 IsShinyOtIdPersonality(u32 otId, u32 personality);
const u8 *GetTrainerPartnerName(void);
void BattleAnimateFrontSprite(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void DoMonFrontSpriteAnimation(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void PokemonSummaryDoMonAnimation(struct Sprite* sprite, u16 species, bool8 oneFrame);
void StopPokemonAnimationDelayTask(void);
void BattleAnimateBackSprite(struct Sprite* sprite, u16 species);
u8 sub_806EF08(u8 arg0);
u8 sub_806EF84(u8 arg0, u8 arg1);
u16 sub_806EFF0(u16 arg0);
u16 FacilityClassToPicIndex(u16 facilityClass);
u16 PlayerGenderToFrontTrainerPicId(u8 playerGender);
void HandleSetPokedexFlag(u16 nationalNum, u8 caseId, u32 personality);
const u8 *GetTrainerClassNameFromId(u16 trainerId);
const u8 *GetTrainerNameFromId(u16 trainerId);
bool8 HasTwoFramesAnimation(u16 species);
struct Unknown_806F160_Struct *sub_806F2AC(u8 id, u8 arg1);
void sub_806F47C(u8 id);
u8 *sub_806F4F8(u8 id, u8 arg1);
u16 GetFormSpeciesId(u16 speciesId, u8 formId);
u8 GetFormIdFromFormSpeciesId(u16 formSpeciesId);
# 535 "include/global.h" 2

struct WarpData
{
    s8 mapGroup;
    s8 mapNum;
    s8 warpId;
    s16 x, y;
};

struct ItemSlot
{
    u16 itemId;
    u16 quantity;
};

struct Pokeblock
{
    u8 color;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 feel;
};

struct Roamer
{
             u32 ivs;
             u32 personality;
             u16 species;
             u16 hp;
             u8 level;
             u8 status;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             bool8 active;
             u8 filler[0x8];
};

struct RamScriptData
{
    u8 magic;
    u8 mapGroup;
    u8 mapNum;
    u8 objectId;
    u8 script[995];
};

struct RamScript
{
    u32 checksum;
    struct RamScriptData data;
};

struct EasyChatPair
{
    u16 unk0_0:7;
    u16 unk0_7:7;
    u16 unk1_6:1;
    u16 unk2;
    u16 words[2];
};

struct MailStruct
{
             u16 words[9];
             u8 playerName[7 + 1];
             u8 trainerId[4];
             u16 species;
             u16 itemId;
};

struct MauvilleManCommon
{
    u8 id;
};

struct MauvilleManBard
{
             u8 id;
             u16 songLyrics[6];
             u16 temporaryLyrics[6];
             u8 playerName[7 + 1];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
             u8 language;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
    u8 language[4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[8];
             u8 language;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
    u8 language;
};

struct MauvilleOldManTrader
{
    u8 id;
    u8 decorations[4];
    u8 playerNames[4][11];
    u8 alreadyTraded;
    u8 language[4];
};

typedef union OldMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManGiddy giddy;
    struct MauvilleManHipster hipster;
    struct MauvilleOldManTrader trader;
    struct MauvilleManStoryteller storyteller;
    u8 filler[0x40];
} OldMan;

struct RecordMixing_UnknownStructSub
{
    u32 unk0;
    u8 data[0x34];

};

struct RecordMixing_UnknownStruct
{
    struct RecordMixing_UnknownStructSub data[2];
    u32 unk70;
    u16 unk74[0x2];
};



struct LinkBattleRecord
{
    u8 name[7 + 1];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct LinkBattleRecords
{
    struct LinkBattleRecord entries[5];
    u8 languages[5];
};

struct RecordMixingGiftData
{
    u8 unk0;
    u8 quantity;
    u16 itemId;
    u8 filler4[8];
};

struct RecordMixingGift
{
    int checksum;
    struct RecordMixingGiftData data;
};

struct ContestWinner
{
    u32 personality;
    u32 trainerId;
    u16 species;
    u8 contestCategory;
    u8 monName[10 + 1];
    u8 trainerName[7 + 1];
    u8 contestRank;
};

struct DayCareMail
{
    struct MailStruct message;
    u8 OT_name[7 + 1];
    u8 monName[10 + 1];
    u8 gameLanguage:4;
    u8 monLanguage:4;
};

struct DaycareMon
{
    struct BoxPokemon mon;
    struct DayCareMail mail;
    u32 steps;
};

struct DayCare
{
    struct DaycareMon mons[2];
    u32 offspringPersonality;
    u8 stepCounter;
};

struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    bool16 holdsItem[2];
};

struct LilycoveLadyQuiz
{
              u8 id;
              u8 state;
              u16 question[9];
              u16 correctAnswer;
              u16 playerAnswer;
              u8 playerName[7 + 1];
              u16 playerTrainerId[4];
              u16 prize;
              bool8 waitingForChallenger;
              u8 questionId;
              u8 prevQuestionId;
              u8 language;
};

struct LilycoveLadyFavor
{
              u8 id;
              u8 state;
              bool8 likedItem;
              u8 numItemsGiven;
              u8 playerName[7 + 1];
              u8 favorId;
              u16 itemId;
              u16 bestItem;
              u8 language;
};

struct LilycoveLadyContest
{
              u8 id;
              bool8 givenPokeblock;
              u8 numGoodPokeblocksGiven;
              u8 numOtherPokeblocksGiven;
              u8 playerName[7 + 1];
              u8 maxSheen;
              u8 category;
              u8 language;
};

typedef union
{
    struct LilycoveLadyQuiz quiz;
    struct LilycoveLadyFavor favor;
    struct LilycoveLadyContest contest;
    u8 id;
    u8 pad[0x40];
} LilycoveLady;

struct WaldaPhrase
{
    u16 colors[2];
    u8 text[16];
    u8 iconId;
    u8 patternId;
    bool8 patternUnlocked;
};

struct TrainerNameRecord
{
    u32 trainerId;
    u8 trainerName[7 + 1];
};

struct SaveTrainerHill
{
               u32 timer;
               u32 bestTime;
               u8 unk_3D6C;
               u8 unused;
               u16 receivedPrize:1;
               u16 checkedFinalTime:1;
               u16 spokeToOwner:1;
               u16 hasLost:1;
               u16 maybeECardScanDuringChallenge:1;
               u16 field_3D6E_0f:1;
               u16 tag:2;
};

struct MysteryEventStruct
{
    u8 unk_0_0:2;
    u8 unk_0_2:3;
    u8 unk_0_5:3;
    u8 unk_1;
};

 struct WonderNews
{
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[40];
    u8 unk_2C[10][40];
};

 struct WonderNewsSaveStruct
{
    u32 crc;
    struct WonderNews data;
};

 struct WonderCard
{
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u8 unk_08_0:2;
    u8 unk_08_2:4;
    u8 unk_08_6:2;
    u8 unk_09;
    u8 unk_0A[40];
    u8 unk_32[40];
    u8 unk_5A[4][40];
    u8 unk_FA[40];
    u8 unk_122[40];
};

 struct WonderCardSaveStruct
{
    u32 crc;
    struct WonderCard data;
};

 struct MEventBuffer_3430_Sub
{
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08[2][7];
};

 struct MEventBuffer_3430
{
    u32 crc;
    struct MEventBuffer_3430_Sub data;
};

 struct MEventBuffers
{
                     struct WonderNewsSaveStruct wonderNews;
                     struct WonderCardSaveStruct wonderCard;
                     struct MEventBuffer_3430 buffer_310;
                     u16 unk_338[4];
                     struct MysteryEventStruct unk_340;
                     u32 unk_344[2][5];
};

struct SaveBlock1
{
             struct Coords16 pos;
             struct WarpData location;
             struct WarpData continueGameWarp;
             struct WarpData dynamicWarp;
             struct WarpData lastHealLocation;
             struct WarpData escapeWarp;
             u16 savedMusic;
             u8 weather;
             u8 weatherCycleStage;
             u8 flashLevel;
             u16 mapLayoutId;
             u16 mapView[0x100];
              u8 playerPartyCount;
              struct Pokemon playerParty[6];
              u32 money;
              u16 coins;
              u16 registeredItem;
              struct ItemSlot pcItems[50];
              struct ItemSlot bagPocket_Items[30];
              struct ItemSlot bagPocket_KeyItems[30];
              struct ItemSlot bagPocket_PokeBalls[16];
              struct ItemSlot bagPocket_TMHM[64];
              struct ItemSlot bagPocket_Berries[46];
              struct Pokeblock pokeblocks[40];
              u8 seen1[((((412) / 8) + (((412) % 8) ? 1 : 0)))];
              u16 berryBlenderRecords[3];
              u8 field_9C2[6];
              u16 trainerRematchStepCounter;
              u8 trainerRematches[100];
              struct ObjectEvent objectEvents[16];
              struct ObjectEventTemplate objectEventTemplates[64];
               u8 flags[(((((((((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) + (7 - (((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) % 8)) + 1)) / 8) + ((((((((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) + (7 - (((((0x500 + 864 - 1) + 1) + 0xBF) + (8 - (((0x500 + 864 - 1) + 1) + 0xBF) % 8)) + 0x3F) % 8)) + 1)) % 8) ? 1 : 0)))];
               u16 vars[(0x40FF - 0x4000 + 1)];
               u32 gameStats[64];
               struct BerryTree berryTrees[128];
               struct SecretBase secretBases[20];
               u8 playerRoomDecorations[12];
               u8 playerRoomDecorationPositions[12];
               u8 decorationDesks[10];
               u8 decorationChairs[10];
               u8 decorationPlants[10];
               u8 decorationOrnaments[30];
               u8 decorationMats[30];
               u8 decorationPosters[10];
               u8 decorationDolls[40];
               u8 decorationCushions[10];
               u8 padding_27CA[2];
               TVShow tvShows[25];
               PokeNews pokeNews[16];
               u16 outbreakPokemonSpecies;
               u8 outbreakLocationMapNum;
               u8 outbreakLocationMapGroup;
               u8 outbreakPokemonLevel;
               u8 outbreakUnk1;
               u16 outbreakUnk2;
               u16 outbreakPokemonMoves[4];
               u8 outbreakUnk4;
               u8 outbreakPokemonProbability;
               u16 outbreakDaysLeft;
               struct GabbyAndTyData gabbyAndTyData;
               u16 easyChatProfile[6];
               u16 easyChatBattleStart[6];
               u16 easyChatBattleWon[6];
               u16 easyChatBattleLost[6];
               struct MailStruct mail[16];
               u8 additionalPhrases[8];
               OldMan oldMan;
               struct EasyChatPair easyChatPairs[5];
               struct ContestWinner contestWinners[13];
               struct DayCare daycare;
               struct LinkBattleRecords linkBattleRecords;
               u8 giftRibbons[52];
               struct Roamer roamer;
               struct EnigmaBerry enigmaBerry;
               struct MEventBuffers unk_322C;
               u8 field_3598[0x180];
               u32 trainerHillTimes[4];
               struct RamScript ramScript;
               struct RecordMixingGift recordMixingGift;
               u8 seen2[((((412) / 8) + (((412) % 8) ? 1 : 0)))];
               LilycoveLady lilycoveLady;
               struct TrainerNameRecord trainerNameRecords[20];
               u8 registeredTexts[10][21];
               u8 filler3D5A[0xA];
               struct SaveTrainerHill trainerHill;
               struct WaldaPhrase waldaPhrase;

};

extern struct SaveBlock1* gSaveBlock1Ptr;

struct MapPosition
{
    s16 x;
    s16 y;
    s8 height;
};

struct TradeRoomPlayer
{
    u8 playerId;
    u8 isLocalPlayer;
    u8 c;
    u8 facing;
    struct MapPosition pos;
    u16 field_C;
};
# 2 "src/anim_mon_front_pics.c" 2

const u32 gMonFrontPic_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/anim_front.4bpp.lz");

const u32 gMonFrontPic_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/anim_front.4bpp.lz");
const u32 gMonFrontPic_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/anim_front.4bpp.lz");
const u32 gMonFrontPic_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/anim_front.4bpp.lz");
const u32 gMonFrontPic_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/anim_front.4bpp.lz");
const u32 gMonFrontPic_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/anim_front.4bpp.lz");
const u32 gMonFrontPic_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/anim_front.4bpp.lz");
const u32 gMonFrontPic_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/anim_front.4bpp.lz");
const u32 gMonFrontPic_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/anim_front.4bpp.lz");
const u32 gMonFrontPic_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/anim_front.4bpp.lz");
const u32 gMonFrontPic_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/anim_front.4bpp.lz");
const u32 gMonFrontPic_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/anim_front.4bpp.lz");
const u32 gMonFrontPic_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/anim_front.4bpp.lz");
const u32 gMonFrontPic_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/anim_front.4bpp.lz");
const u32 gMonFrontPic_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/anim_front.4bpp.lz");
const u32 gMonFrontPic_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/anim_front.4bpp.lz");
const u32 gMonFrontPic_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/anim_front.4bpp.lz");
const u32 gMonFrontPic_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/anim_front.4bpp.lz");
const u32 gMonFrontPic_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/anim_front.4bpp.lz");
const u32 gMonFrontPic_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/anim_front.4bpp.lz");
const u32 gMonFrontPic_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/anim_front.4bpp.lz");
const u32 gMonFrontPic_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/anim_front.4bpp.lz");
const u32 gMonFrontPic_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/anim_front.4bpp.lz");
const u32 gMonFrontPic_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/anim_front.4bpp.lz");
const u32 gMonFrontPic_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/anim_front.4bpp.lz");
const u32 gMonFrontPic_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/anim_front.4bpp.lz");
const u32 gMonFrontPic_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/anim_front.4bpp.lz");
const u32 gMonFrontPic_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/anim_front.4bpp.lz");
const u32 gMonFrontPic_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/anim_front.4bpp.lz");
const u32 gMonFrontPic_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/anim_front.4bpp.lz");
const u32 gMonFrontPic_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/anim_front.4bpp.lz");
const u32 gMonFrontPic_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/anim_front.4bpp.lz");
const u32 gMonFrontPic_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/anim_front.4bpp.lz");
const u32 gMonFrontPic_Paras[] = INCBIN_U32("graphics/pokemon/paras/anim_front.4bpp.lz");
const u32 gMonFrontPic_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/anim_front.4bpp.lz");
const u32 gMonFrontPic_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/anim_front.4bpp.lz");
const u32 gMonFrontPic_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/anim_front.4bpp.lz");
const u32 gMonFrontPic_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/anim_front.4bpp.lz");
const u32 gMonFrontPic_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/anim_front.4bpp.lz");
const u32 gMonFrontPic_Persian[] = INCBIN_U32("graphics/pokemon/persian/anim_front.4bpp.lz");
const u32 gMonFrontPic_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/anim_front.4bpp.lz");
const u32 gMonFrontPic_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/anim_front.4bpp.lz");
const u32 gMonFrontPic_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/anim_front.4bpp.lz");
const u32 gMonFrontPic_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/anim_front.4bpp.lz");
const u32 gMonFrontPic_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/anim_front.4bpp.lz");
const u32 gMonFrontPic_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/anim_front.4bpp.lz");
const u32 gMonFrontPic_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/anim_front.4bpp.lz");
const u32 gMonFrontPic_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/anim_front.4bpp.lz");
const u32 gMonFrontPic_Abra[] = INCBIN_U32("graphics/pokemon/abra/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/anim_front.4bpp.lz");
const u32 gMonFrontPic_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/anim_front.4bpp.lz");
const u32 gMonFrontPic_Machop[] = INCBIN_U32("graphics/pokemon/machop/anim_front.4bpp.lz");
const u32 gMonFrontPic_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/anim_front.4bpp.lz");
const u32 gMonFrontPic_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/anim_front.4bpp.lz");
const u32 gMonFrontPic_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/anim_front.4bpp.lz");
const u32 gMonFrontPic_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/anim_front.4bpp.lz");
const u32 gMonFrontPic_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/anim_front.4bpp.lz");
const u32 gMonFrontPic_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/anim_front.4bpp.lz");
const u32 gMonFrontPic_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/anim_front.4bpp.lz");
const u32 gMonFrontPic_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/anim_front.4bpp.lz");
const u32 gMonFrontPic_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/anim_front.4bpp.lz");
const u32 gMonFrontPic_Golem[] = INCBIN_U32("graphics/pokemon/golem/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/anim_front.4bpp.lz");
const u32 gMonFrontPic_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/anim_front.4bpp.lz");
const u32 gMonFrontPic_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/anim_front.4bpp.lz");
const u32 gMonFrontPic_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/anim_front.4bpp.lz");
const u32 gMonFrontPic_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/anim_front.4bpp.lz");
const u32 gMonFrontPic_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/anim_front.4bpp.lz");
const u32 gMonFrontPic_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/anim_front.4bpp.lz");
const u32 gMonFrontPic_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/anim_front.4bpp.lz");
const u32 gMonFrontPic_Seel[] = INCBIN_U32("graphics/pokemon/seel/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/anim_front.4bpp.lz");
const u32 gMonFrontPic_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/anim_front.4bpp.lz");
const u32 gMonFrontPic_Muk[] = INCBIN_U32("graphics/pokemon/muk/anim_front.4bpp.lz");
const u32 gMonFrontPic_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/anim_front.4bpp.lz");
const u32 gMonFrontPic_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/anim_front.4bpp.lz");
const u32 gMonFrontPic_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/anim_front.4bpp.lz");
const u32 gMonFrontPic_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/anim_front.4bpp.lz");
const u32 gMonFrontPic_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/anim_front.4bpp.lz");
const u32 gMonFrontPic_Onix[] = INCBIN_U32("graphics/pokemon/onix/anim_front.4bpp.lz");
const u32 gMonFrontPic_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/anim_front.4bpp.lz");
const u32 gMonFrontPic_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/anim_front.4bpp.lz");
const u32 gMonFrontPic_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/anim_front.4bpp.lz");
const u32 gMonFrontPic_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/anim_front.4bpp.lz");
const u32 gMonFrontPic_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/anim_front.4bpp.lz");
const u32 gMonFrontPic_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/anim_front.4bpp.lz");
const u32 gMonFrontPic_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/anim_front.4bpp.lz");
const u32 gMonFrontPic_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/anim_front.4bpp.lz");
const u32 gMonFrontPic_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/anim_front.4bpp.lz");
const u32 gMonFrontPic_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/anim_front.4bpp.lz");
const u32 gMonFrontPic_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/anim_front.4bpp.lz");
const u32 gMonFrontPic_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/anim_front.4bpp.lz");
const u32 gMonFrontPic_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/anim_front.4bpp.lz");
const u32 gMonFrontPic_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/anim_front.4bpp.lz");
const u32 gMonFrontPic_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/anim_front.4bpp.lz");
const u32 gMonFrontPic_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/anim_front.4bpp.lz");
const u32 gMonFrontPic_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/anim_front.4bpp.lz");
const u32 gMonFrontPic_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/anim_front.4bpp.lz");
const u32 gMonFrontPic_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/anim_front.4bpp.lz");
const u32 gMonFrontPic_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/anim_front.4bpp.lz");
const u32 gMonFrontPic_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/anim_front.4bpp.lz");
const u32 gMonFrontPic_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/anim_front.4bpp.lz");
const u32 gMonFrontPic_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/anim_front.4bpp.lz");
const u32 gMonFrontPic_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/anim_front.4bpp.lz");
const u32 gMonFrontPic_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/anim_front.4bpp.lz");
const u32 gMonFrontPic_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/anim_front.4bpp.lz");
const u32 gMonFrontPic_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/anim_front.4bpp.lz");
const u32 gMonFrontPic_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/anim_front.4bpp.lz");
const u32 gMonFrontPic_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/anim_front.4bpp.lz");
const u32 gMonFrontPic_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/anim_front.4bpp.lz");
const u32 gMonFrontPic_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/anim_front.4bpp.lz");
const u32 gMonFrontPic_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/anim_front.4bpp.lz");
const u32 gMonFrontPic_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/anim_front.4bpp.lz");
const u32 gMonFrontPic_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/anim_front.4bpp.lz");
const u32 gMonFrontPic_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/anim_front.4bpp.lz");
const u32 gMonFrontPic_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/anim_front.4bpp.lz");
const u32 gMonFrontPic_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mew[] = INCBIN_U32("graphics/pokemon/mew/anim_front.4bpp.lz");

const u32 gMonFrontPic_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/anim_front.4bpp.lz");
const u32 gMonFrontPic_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/anim_front.4bpp.lz");
const u32 gMonFrontPic_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/anim_front.4bpp.lz");
const u32 gMonFrontPic_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/anim_front.4bpp.lz");
const u32 gMonFrontPic_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/anim_front.4bpp.lz");
const u32 gMonFrontPic_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/anim_front.4bpp.lz");
const u32 gMonFrontPic_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/anim_front.4bpp.lz");
const u32 gMonFrontPic_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/anim_front.4bpp.lz");
const u32 gMonFrontPic_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/anim_front.4bpp.lz");
const u32 gMonFrontPic_Furret[] = INCBIN_U32("graphics/pokemon/furret/anim_front.4bpp.lz");
const u32 gMonFrontPic_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/anim_front.4bpp.lz");
const u32 gMonFrontPic_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/anim_front.4bpp.lz");
const u32 gMonFrontPic_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/anim_front.4bpp.lz");
const u32 gMonFrontPic_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/anim_front.4bpp.lz");
const u32 gMonFrontPic_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/anim_front.4bpp.lz");
const u32 gMonFrontPic_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/anim_front.4bpp.lz");
const u32 gMonFrontPic_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/anim_front.4bpp.lz");
const u32 gMonFrontPic_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/anim_front.4bpp.lz");
const u32 gMonFrontPic_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/anim_front.4bpp.lz");
const u32 gMonFrontPic_Natu[] = INCBIN_U32("graphics/pokemon/natu/anim_front.4bpp.lz");
const u32 gMonFrontPic_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/anim_front.4bpp.lz");
const u32 gMonFrontPic_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/anim_front.4bpp.lz");
const u32 gMonFrontPic_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/anim_front.4bpp.lz");
const u32 gMonFrontPic_Marill[] = INCBIN_U32("graphics/pokemon/marill/anim_front.4bpp.lz");
const u32 gMonFrontPic_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/anim_front.4bpp.lz");
const u32 gMonFrontPic_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/anim_front.4bpp.lz");
const u32 gMonFrontPic_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/anim_front.4bpp.lz");
const u32 gMonFrontPic_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/anim_front.4bpp.lz");
const u32 gMonFrontPic_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/anim_front.4bpp.lz");
const u32 gMonFrontPic_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/anim_front.4bpp.lz");
const u32 gMonFrontPic_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/anim_front.4bpp.lz");
const u32 gMonFrontPic_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/anim_front.4bpp.lz");
const u32 gMonFrontPic_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/anim_front.4bpp.lz");
const u32 gMonFrontPic_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/anim_front.4bpp.lz");
const u32 gMonFrontPic_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownA[] = INCBIN_U32("graphics/pokemon/unown/a/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/anim_front.4bpp.lz");
const u32 gMonFrontPic_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/anim_front.4bpp.lz");
const u32 gMonFrontPic_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/anim_front.4bpp.lz");
const u32 gMonFrontPic_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/anim_front.4bpp.lz");
const u32 gMonFrontPic_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/anim_front.4bpp.lz");
const u32 gMonFrontPic_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/anim_front.4bpp.lz");
const u32 gMonFrontPic_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/anim_front.4bpp.lz");
const u32 gMonFrontPic_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/anim_front.4bpp.lz");
const u32 gMonFrontPic_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/anim_front.4bpp.lz");
const u32 gMonFrontPic_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/anim_front.4bpp.lz");
const u32 gMonFrontPic_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/anim_front.4bpp.lz");
const u32 gMonFrontPic_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/anim_front.4bpp.lz");
const u32 gMonFrontPic_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/anim_front.4bpp.lz");
const u32 gMonFrontPic_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/anim_front.4bpp.lz");
const u32 gMonFrontPic_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/anim_front.4bpp.lz");
const u32 gMonFrontPic_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/anim_front.4bpp.lz");
const u32 gMonFrontPic_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/anim_front.4bpp.lz");
const u32 gMonFrontPic_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/anim_front.4bpp.lz");
const u32 gMonFrontPic_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/anim_front.4bpp.lz");
const u32 gMonFrontPic_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/anim_front.4bpp.lz");
const u32 gMonFrontPic_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/anim_front.4bpp.lz");
const u32 gMonFrontPic_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/anim_front.4bpp.lz");
const u32 gMonFrontPic_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/anim_front.4bpp.lz");
const u32 gMonFrontPic_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/anim_front.4bpp.lz");
const u32 gMonFrontPic_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/anim_front.4bpp.lz");
const u32 gMonFrontPic_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/anim_front.4bpp.lz");
const u32 gMonFrontPic_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/anim_front.4bpp.lz");
const u32 gMonFrontPic_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/anim_front.4bpp.lz");
const u32 gMonFrontPic_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/anim_front.4bpp.lz");
const u32 gMonFrontPic_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/anim_front.4bpp.lz");
const u32 gMonFrontPic_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/anim_front.4bpp.lz");
const u32 gMonFrontPic_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/anim_front.4bpp.lz");
const u32 gMonFrontPic_Magby[] = INCBIN_U32("graphics/pokemon/magby/anim_front.4bpp.lz");
const u32 gMonFrontPic_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/anim_front.4bpp.lz");
const u32 gMonFrontPic_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/anim_front.4bpp.lz");
const u32 gMonFrontPic_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/anim_front.4bpp.lz");
const u32 gMonFrontPic_Entei[] = INCBIN_U32("graphics/pokemon/entei/anim_front.4bpp.lz");
const u32 gMonFrontPic_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/anim_front.4bpp.lz");
const u32 gMonFrontPic_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/anim_front.4bpp.lz");
const u32 gMonFrontPic_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/anim_front.4bpp.lz");
const u32 gMonFrontPic_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/anim_front.4bpp.lz");
const u32 gMonFrontPic_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/anim_front.4bpp.lz");

const u32 gMonFrontPic_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/anim_front.4bpp.lz");

const u32 gMonFrontPic_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/anim_front.4bpp.lz");
const u32 gMonFrontPic_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/anim_front.4bpp.lz");
const u32 gMonFrontPic_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/anim_front.4bpp.lz");
const u32 gMonFrontPic_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/anim_front.4bpp.lz");
const u32 gMonFrontPic_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/anim_front.4bpp.lz");
const u32 gMonFrontPic_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/anim_front.4bpp.lz");
const u32 gMonFrontPic_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/anim_front.4bpp.lz");
const u32 gMonFrontPic_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/anim_front.4bpp.lz");
const u32 gMonFrontPic_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/anim_front.4bpp.lz");
const u32 gMonFrontPic_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/anim_front.4bpp.lz");
const u32 gMonFrontPic_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/anim_front.4bpp.lz");
const u32 gMonFrontPic_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/anim_front.4bpp.lz");
const u32 gMonFrontPic_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/anim_front.4bpp.lz");
const u32 gMonFrontPic_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/anim_front.4bpp.lz");
const u32 gMonFrontPic_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/anim_front.4bpp.lz");
const u32 gMonFrontPic_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/anim_front.4bpp.lz");
const u32 gMonFrontPic_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/anim_front.4bpp.lz");
const u32 gMonFrontPic_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/anim_front.4bpp.lz");
const u32 gMonFrontPic_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/anim_front.4bpp.lz");
const u32 gMonFrontPic_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/anim_front.4bpp.lz");
const u32 gMonFrontPic_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/anim_front.4bpp.lz");
const u32 gMonFrontPic_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/anim_front.4bpp.lz");
const u32 gMonFrontPic_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/anim_front.4bpp.lz");
const u32 gMonFrontPic_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/anim_front.4bpp.lz");
const u32 gMonFrontPic_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/anim_front.4bpp.lz");
const u32 gMonFrontPic_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/anim_front.4bpp.lz");
const u32 gMonFrontPic_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/anim_front.4bpp.lz");
const u32 gMonFrontPic_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/anim_front.4bpp.lz");
const u32 gMonFrontPic_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/anim_front.4bpp.lz");
const u32 gMonFrontPic_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/anim_front.4bpp.lz");
const u32 gMonFrontPic_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/anim_front.4bpp.lz");
const u32 gMonFrontPic_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/anim_front.4bpp.lz");
const u32 gMonFrontPic_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/anim_front.4bpp.lz");
const u32 gMonFrontPic_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/anim_front.4bpp.lz");
const u32 gMonFrontPic_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/anim_front.4bpp.lz");
const u32 gMonFrontPic_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/anim_front.4bpp.lz");
const u32 gMonFrontPic_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/anim_front.4bpp.lz");
const u32 gMonFrontPic_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/anim_front.4bpp.lz");
const u32 gMonFrontPic_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/anim_front.4bpp.lz");
const u32 gMonFrontPic_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/anim_front.4bpp.lz");
const u32 gMonFrontPic_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/anim_front.4bpp.lz");
const u32 gMonFrontPic_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/anim_front.4bpp.lz");
const u32 gMonFrontPic_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/anim_front.4bpp.lz");
const u32 gMonFrontPic_Numel[] = INCBIN_U32("graphics/pokemon/numel/anim_front.4bpp.lz");
const u32 gMonFrontPic_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/anim_front.4bpp.lz");
const u32 gMonFrontPic_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/anim_front.4bpp.lz");
const u32 gMonFrontPic_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/anim_front.4bpp.lz");
const u32 gMonFrontPic_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/anim_front.4bpp.lz");
const u32 gMonFrontPic_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/anim_front.4bpp.lz");
const u32 gMonFrontPic_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/anim_front.4bpp.lz");
const u32 gMonFrontPic_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/anim_front.4bpp.lz");
const u32 gMonFrontPic_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/anim_front.4bpp.lz");
const u32 gMonFrontPic_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/anim_front.4bpp.lz");
const u32 gMonFrontPic_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/anim_front.4bpp.lz");
const u32 gMonFrontPic_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/anim_front.4bpp.lz");
const u32 gMonFrontPic_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/anim_front.4bpp.lz");
const u32 gMonFrontPic_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/anim_front.4bpp.lz");
const u32 gMonFrontPic_Minun[] = INCBIN_U32("graphics/pokemon/minun/anim_front.4bpp.lz");
const u32 gMonFrontPic_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/anim_front.4bpp.lz");
const u32 gMonFrontPic_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/anim_front.4bpp.lz");
const u32 gMonFrontPic_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/anim_front.4bpp.lz");
const u32 gMonFrontPic_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/anim_front.4bpp.lz");
const u32 gMonFrontPic_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/anim_front.4bpp.lz");
const u32 gMonFrontPic_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/anim_front.4bpp.lz");
const u32 gMonFrontPic_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/anim_front.4bpp.lz");
const u32 gMonFrontPic_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/anim_front.4bpp.lz");
const u32 gMonFrontPic_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/anim_front.4bpp.lz");
const u32 gMonFrontPic_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/anim_front.4bpp.lz");
const u32 gMonFrontPic_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/anim_front.4bpp.lz");
const u32 gMonFrontPic_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/anim_front.4bpp.lz");
const u32 gMonFrontPic_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/anim_front.4bpp.lz");
const u32 gMonFrontPic_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/anim_front.4bpp.lz");
const u32 gMonFrontPic_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/anim_front.4bpp.lz");
const u32 gMonFrontPic_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/anim_front.4bpp.lz");
const u32 gMonFrontPic_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/anim_front.4bpp.lz");
const u32 gMonFrontPic_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/anim_front.4bpp.lz");
const u32 gMonFrontPic_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/anim_front.4bpp.lz");
const u32 gMonFrontPic_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/anim_front.4bpp.lz");
const u32 gMonFrontPic_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/anim_front.4bpp.lz");
const u32 gMonFrontPic_Absol[] = INCBIN_U32("graphics/pokemon/absol/anim_front.4bpp.lz");
const u32 gMonFrontPic_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/anim_front.4bpp.lz");
const u32 gMonFrontPic_Banette[] = INCBIN_U32("graphics/pokemon/banette/anim_front.4bpp.lz");
const u32 gMonFrontPic_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/anim_front.4bpp.lz");
const u32 gMonFrontPic_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/anim_front.4bpp.lz");
const u32 gMonFrontPic_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/anim_front.4bpp.lz");
const u32 gMonFrontPic_Aron[] = INCBIN_U32("graphics/pokemon/aron/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/anim_front.4bpp.lz");
const u32 gMonFrontPic_Castform[] = INCBIN_U32("graphics/pokemon/castform/anim_front.4bpp.lz");
const u32 gMonFrontPic_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/anim_front.4bpp.lz");
const u32 gMonFrontPic_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/anim_front.4bpp.lz");
const u32 gMonFrontPic_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/anim_front.4bpp.lz");
const u32 gMonFrontPic_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/anim_front.4bpp.lz");
const u32 gMonFrontPic_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/anim_front.4bpp.lz");
const u32 gMonFrontPic_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/anim_front.4bpp.lz");
const u32 gMonFrontPic_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/anim_front.4bpp.lz");
const u32 gMonFrontPic_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/anim_front.4bpp.lz");
const u32 gMonFrontPic_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/anim_front.4bpp.lz");
const u32 gMonFrontPic_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/anim_front.4bpp.lz");
const u32 gMonFrontPic_Metang[] = INCBIN_U32("graphics/pokemon/metang/anim_front.4bpp.lz");
const u32 gMonFrontPic_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/anim_front.4bpp.lz");
const u32 gMonFrontPic_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/anim_front.4bpp.lz");
const u32 gMonFrontPic_Regice[] = INCBIN_U32("graphics/pokemon/regice/anim_front.4bpp.lz");
const u32 gMonFrontPic_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/anim_front.4bpp.lz");
const u32 gMonFrontPic_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/anim_front.4bpp.lz");
const u32 gMonFrontPic_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/anim_front.4bpp.lz");
const u32 gMonFrontPic_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/anim_front.4bpp.lz");
const u32 gMonFrontPic_Latias[] = INCBIN_U32("graphics/pokemon/latias/anim_front.4bpp.lz");
const u32 gMonFrontPic_Latios[] = INCBIN_U32("graphics/pokemon/latios/anim_front.4bpp.lz");
const u32 gMonFrontPic_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/anim_front.4bpp.lz");
const u32 gMonFrontPic_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/anim_front.4bpp.lz");
const u32 gMonFrontPic_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/anim_front.4bpp.lz");

const u32 gMonFrontPic_Egg[] = INCBIN_U32("graphics/pokemon/egg/anim_front.4bpp.lz");

const u32 gMonFrontPic_UnownB[] = INCBIN_U32("graphics/pokemon/unown/b/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownC[] = INCBIN_U32("graphics/pokemon/unown/c/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownD[] = INCBIN_U32("graphics/pokemon/unown/d/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownE[] = INCBIN_U32("graphics/pokemon/unown/e/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownF[] = INCBIN_U32("graphics/pokemon/unown/f/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownG[] = INCBIN_U32("graphics/pokemon/unown/g/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownH[] = INCBIN_U32("graphics/pokemon/unown/h/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownI[] = INCBIN_U32("graphics/pokemon/unown/i/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownJ[] = INCBIN_U32("graphics/pokemon/unown/j/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownK[] = INCBIN_U32("graphics/pokemon/unown/k/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownL[] = INCBIN_U32("graphics/pokemon/unown/l/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownM[] = INCBIN_U32("graphics/pokemon/unown/m/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownN[] = INCBIN_U32("graphics/pokemon/unown/n/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownO[] = INCBIN_U32("graphics/pokemon/unown/o/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownP[] = INCBIN_U32("graphics/pokemon/unown/p/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownQ[] = INCBIN_U32("graphics/pokemon/unown/q/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownR[] = INCBIN_U32("graphics/pokemon/unown/r/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownS[] = INCBIN_U32("graphics/pokemon/unown/s/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownT[] = INCBIN_U32("graphics/pokemon/unown/t/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownU[] = INCBIN_U32("graphics/pokemon/unown/u/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownV[] = INCBIN_U32("graphics/pokemon/unown/v/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownW[] = INCBIN_U32("graphics/pokemon/unown/w/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownX[] = INCBIN_U32("graphics/pokemon/unown/x/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownY[] = INCBIN_U32("graphics/pokemon/unown/y/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownZ[] = INCBIN_U32("graphics/pokemon/unown/z/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownExclamationMark[] = INCBIN_U32("graphics/pokemon/unown/exclamation_mark/anim_front.4bpp.lz");
const u32 gMonFrontPic_UnownQuestionMark[] = INCBIN_U32("graphics/pokemon/unown/question_mark/anim_front.4bpp.lz");
