.class public final Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;,
        Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;
    }
.end annotation


# static fields
.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_THEORA:Ljava/lang/String; = "V_THEORA"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_FLAG_DEFAULT:I = 0x88

.field private static final ID_FLAG_FORCED:I = 0x55aa

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_PROJECTION:I = 0x7670

.field private static final ID_PROJECTION_PRIVATE:I = 0x7672

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_STEREO_MODE:I = 0x53b8

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final MP3_MAX_INPUT_SIZE:I = 0x1000

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_EMPTY:[B

.field private static final SUBRIP_TIMECODE_LENGTH:I = 0xc

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNSET_ENTRY_ID:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockDurationUs:J

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lorg/telegram/messenger/exoplayer2/util/LongArray;

.field private cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final encryptionSubsampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final reader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentSeekMap:Z

.field private final subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

.field private final vorbisNumPageSamples:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x100000000001000L

    const-wide v4, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;)V
    .locals 6

    const-wide/16 v4, -0x1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method static synthetic access$300()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private buildSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    .locals 13

    const/4 v0, 0x0

    const/4 v12, 0x0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iput-object v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    iput-object v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size()I

    move-result v2

    new-array v3, v2, [I

    new-array v4, v2, [J

    new-array v5, v2, [J

    new-array v6, v2, [J

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v8

    aput-wide v8, v6, v1

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v4, v1

    aget-wide v10, v4, v0

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v6, v1

    aget-wide v10, v6, v0

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v4, v1

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v6, v1

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    iput-object v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    iput-object v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    goto :goto_0
.end method

.method private commitSampleToOutput(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V
    .locals 8

    const-string/jumbo v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubripSample(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->encryptionKeyId:[B

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->resetSample()V

    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1

    if-nez p0, :cond_1

    new-array p0, p1, [I

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_VP9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MS/VFW/FOURCC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_THEORA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_OPUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_VORBIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_AAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_MPEG/L3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_AC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_EAC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_TRUEHD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_DTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_DTS/EXPRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_DTS/LOSSLESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_FLAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_MS/ACM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_PCM/INT/LIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "S_TEXT/UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "S_VOBSUB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "S_HDMV/PGS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSeekForCues(Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;J)Z
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    if-eqz v2, :cond_0

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private readScratch(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_0
.end method

.method private readToOutput(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private readToTarget(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;[BII)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    return-void
.end method

.method private resetSample()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    iput-byte v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 7

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static setSubripSampleEndTimecode([BJ)V
    .locals 9

    const-wide v4, 0xd693a400L

    const/4 v8, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    :goto_0
    const/16 v1, 0x13

    const/16 v2, 0xc

    invoke-static {v0, v8, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    div-long v0, p1, v4

    long-to-int v0, v0

    int-to-long v2, v0

    mul-long/2addr v2, v4

    sub-long v2, p1, v2

    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v1, v4

    const v4, 0x3938700

    mul-int/2addr v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    long-to-int v4, v4

    const v5, 0xf4240

    mul-int/2addr v5, v4

    int-to-long v6, v5

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%02d:%02d:%02d,%03d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private writeSampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V
    .locals 10

    const/16 v6, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "S_TEXT/UTF8"

    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    array-length v0, v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    add-int v4, v0, p3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    array-length v3, v3

    invoke-interface {p1, v1, v3, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    if-nez v0, :cond_f

    iget-boolean v0, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Extension bit is set in signal byte"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v2

    iput-byte v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    :cond_4
    iget-byte v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_1
    if-eqz v0, :cond_e

    iget-byte v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v8, :cond_a

    move v0, v1

    :goto_2
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v2, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    if-eqz v0, :cond_b

    const/16 v3, 0x80

    :goto_3
    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v5, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v5, v3, v6}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_5
    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v6, v3, 0x2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v6, :cond_8

    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v0, v2

    move v3, v2

    :goto_4
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v0, v4, :cond_d

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_c

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    int-to-short v3, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_2

    :cond_b
    move v3, v2

    goto/16 :goto_3

    :cond_c
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_d
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v0, p3, v0

    sub-int/2addr v0, v3

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_11

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v5, v0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_e
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/2addr v0, p3

    const-string/jumbo v3, "V_MPEG4/ISO/AVC"

    iget-object v4, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "V_MPEGH/ISO/HEVC"

    iget-object v4, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_10
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aput-byte v2, v3, v2

    aput-byte v2, v3, v1

    aput-byte v2, v3, v8

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    iget v4, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v4, v4, 0x4

    :goto_8
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, v0, :cond_15

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_13

    invoke-direct {p0, p1, v3, v4, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->readToTarget(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;[BII)V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v5, v6, v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_8

    :cond_11
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_12
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v4, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    goto :goto_7

    :cond_13
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    invoke-direct {p0, p1, v5, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->readToOutput(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_8

    :cond_14
    :goto_9
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v1, v0, :cond_15

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v5, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->readToOutput(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;I)I

    goto :goto_9

    :cond_15
    const-string/jumbo v0, "A_VORBIS"

    iget-object v1, p2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v5, v0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto/16 :goto_0
.end method

.method private writeSubripSample(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->setSubripSampleEndTimecode([BJ)V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->subripSample:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    return-void
.end method


# virtual methods
.method binaryElement(IILorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 15

    sparse-switch p1, :sswitch_data_0

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    rsub-int/lit8 v3, p2, 0x4

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    :goto_0
    return-void

    :sswitch_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->encryptionKeyId:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->encryptionKeyId:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    :sswitch_5
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->getLastLength()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    if-nez v2, :cond_1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v2, p2, v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto/16 :goto_0

    :cond_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    const/4 v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v5, p2, v5

    add-int/lit8 v5, v5, -0x3

    aput v5, v3, v4

    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v6, v3

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_13

    const/4 v3, 0x1

    :goto_2
    iget v4, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/16 v4, 0xa3

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_14

    :cond_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_4
    if-eqz v3, :cond_16

    const/high16 v3, -0x80000000

    :goto_5
    or-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v3, 0x2

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    :cond_3
    const/16 v3, 0xa3

    move/from16 v0, p1

    if-ne v0, v3, :cond_18

    :goto_6
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    if-ge v3, v4, :cond_17

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    aget v3, v3, v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v6, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v3, v6

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    goto :goto_6

    :cond_4
    const/16 v4, 0xa3

    move/from16 v0, p1

    if-eq v0, v4, :cond_5

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v3, "Lacing only supported in SimpleBlocks."

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, -0x4

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    invoke-static {v4, v5, v6, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    :goto_7
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_8

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v8, v7, v3

    add-int/2addr v8, v6

    aput v8, v7, v3

    const/16 v7, 0xff

    if-eq v6, v7, :cond_7

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v7, p2, v7

    sub-int v4, v7, v4

    sub-int/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    :goto_8
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_11

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_a

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v3, "No valid varint length mask found"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v10, v8

    :goto_9
    const/16 v8, 0x8

    if-ge v10, v8, :cond_c

    const/4 v8, 0x1

    rsub-int/lit8 v9, v10, 0x7

    shl-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v11, v4, -0x1

    aget-byte v9, v9, v11

    and-int/2addr v9, v8

    if-eqz v9, :cond_e

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v4, v10

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, v6, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    int-to-long v8, v7

    move v14, v6

    move-wide v6, v8

    move v8, v14

    :goto_a
    if-ge v8, v4, :cond_b

    const/16 v9, 0x8

    shl-long v12, v6, v9

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v7, v6, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v6, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    or-long/2addr v8, v12

    move v14, v6

    move-wide v6, v8

    move v8, v14

    goto :goto_a

    :cond_b
    if-lez v3, :cond_c

    const-wide/16 v8, 0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x6

    shl-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    :cond_c
    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_d

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-lez v8, :cond_f

    :cond_d
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v3, "EBML lacing sample size out of range."

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_9

    :cond_f
    long-to-int v6, v6

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    if-nez v3, :cond_10

    :goto_b
    aput v6, v7, v3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_10
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    add-int/2addr v6, v8

    goto :goto_b

    :cond_11
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v7, p2, v7

    sub-int v4, v7, v4

    sub-int/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_1

    :cond_12
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected lacing value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_17
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto/16 :goto_0

    :cond_18
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_5
        0xa3 -> :sswitch_5
        0x4255 -> :sswitch_3
        0x47e2 -> :sswitch_4
        0x53ab -> :sswitch_0
        0x63a2 -> :sswitch_1
        0x7672 -> :sswitch_2
    .end sparse-switch
.end method

.method endMasterElement(I)V
    .locals 8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->buildSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->encryptionKeyId:[B

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lorg/telegram/messenger/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    const-string/jumbo v5, "video/webm"

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->encryptionKeyId:[B

    invoke-direct {v3, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;-><init>([Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_3
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_1
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_5
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_7
        0x1c53bb6b -> :sswitch_2
    .end sparse-switch
.end method

.method floatElement(ID)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    double-to-long v0, p2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
    .end sparse-switch
.end method

.method getElementType(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1
        0x86 -> :sswitch_2
        0x88 -> :sswitch_1
        0x9b -> :sswitch_1
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xd7 -> :sswitch_1
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xfb -> :sswitch_1
        0x4254 -> :sswitch_1
        0x4255 -> :sswitch_3
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x47e1 -> :sswitch_1
        0x47e2 -> :sswitch_3
        0x47e7 -> :sswitch_0
        0x47e8 -> :sswitch_1
        0x4dbb -> :sswitch_0
        0x5031 -> :sswitch_1
        0x5032 -> :sswitch_1
        0x5034 -> :sswitch_0
        0x5035 -> :sswitch_0
        0x53ab -> :sswitch_3
        0x53ac -> :sswitch_1
        0x53b8 -> :sswitch_1
        0x54b0 -> :sswitch_1
        0x54b2 -> :sswitch_1
        0x54ba -> :sswitch_1
        0x55aa -> :sswitch_1
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x6240 -> :sswitch_0
        0x6264 -> :sswitch_1
        0x63a2 -> :sswitch_3
        0x6d80 -> :sswitch_0
        0x7670 -> :sswitch_0
        0x7672 -> :sswitch_3
        0x22b59c -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_1
        0x114d9b74 -> :sswitch_0
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method integerElement(IJ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-wide/16 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    cmp-long v0, p2, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DocTypeReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto :goto_0

    :sswitch_3
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    goto :goto_0

    :sswitch_a
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :sswitch_b
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v3, p2, v4

    if-nez v3, :cond_3

    :goto_2
    iput-boolean v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :sswitch_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    goto/16 :goto_0

    :sswitch_12
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    goto/16 :goto_0

    :sswitch_13
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContentEncodingOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_14
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContentEncodingScope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_15
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_16
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContentEncAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_17
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AESSettingsCipherMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_18
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/LongArray;->add(J)V

    goto/16 :goto_0

    :sswitch_19
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/exoplayer2/util/LongArray;->add(J)V

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto/16 :goto_0

    :sswitch_1a
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    goto/16 :goto_0

    :sswitch_1b
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    goto/16 :goto_0

    :sswitch_1c
    long-to-int v2, p2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_c
        0x88 -> :sswitch_a
        0x9b -> :sswitch_1b
        0x9f -> :sswitch_10
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_18
        0xba -> :sswitch_5
        0xd7 -> :sswitch_9
        0xe7 -> :sswitch_1a
        0xf1 -> :sswitch_19
        0xfb -> :sswitch_12
        0x4254 -> :sswitch_15
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x47e1 -> :sswitch_16
        0x47e8 -> :sswitch_17
        0x5031 -> :sswitch_13
        0x5032 -> :sswitch_14
        0x53ac -> :sswitch_2
        0x53b8 -> :sswitch_1c
        0x54b0 -> :sswitch_6
        0x54b2 -> :sswitch_8
        0x54ba -> :sswitch_7
        0x55aa -> :sswitch_b
        0x56aa -> :sswitch_e
        0x56bb -> :sswitch_f
        0x6264 -> :sswitch_11
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method isLevel1Element(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p1, v0, :cond_0

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_0

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_0

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    move v2, v1

    :cond_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    if-nez v3, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(J)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->reset()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->resetSample()V

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

.method startMasterElement(IJJ)V
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    goto :goto_0

    :sswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/LongArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/LongArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/LongArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer2/util/LongArray;

    goto :goto_0

    :sswitch_4
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    :sswitch_5
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_0

    :sswitch_6
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    goto :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_6
        0xae -> :sswitch_8
        0xbb -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5035 -> :sswitch_7
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_1
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method stringElement(ILjava/lang/String;)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DocType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    # setter for: Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;
    invoke-static {v0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$202(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
        0x22b59c -> :sswitch_2
    .end sparse-switch
.end method
