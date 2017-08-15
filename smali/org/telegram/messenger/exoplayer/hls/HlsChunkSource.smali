.class public Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;,
        Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;,
        Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;
    }
.end annotation


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field private static final BANDWIDTH_FRACTION:F = 0.8f

.field public static final DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS:J = 0x4e20L

.field public static final DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS:J = 0x1388L

.field public static final DEFAULT_PLAYLIST_BLACKLIST_MS:J = 0xea60L

.field private static final LIVE_VARIANT_SWITCH_SAFETY_EXTRA_SECS:D = 2.0

.field private static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final TAG:Ljava/lang/String; = "HlsChunkSource"

.field private static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field private static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

.field private final baseUri:Ljava/lang/String;

.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private durationUs:J

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

.field private fatalError:Ljava/io/IOException;

.field private final isMaster:Z

.field private live:Z

.field private final masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

.field private final maxBufferDurationToSwitchDownUs:J

.field private final minBufferDurationToSwitchUpUs:J

.field private final playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

.field private prepareCalled:Z

.field private scratchSpace:[B

.field private selectedTrackIndex:I

.field private selectedVariantIndex:I

.field private final timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private variantBlacklistTimes:[J

.field private variantLastPlaylistLoadTimesMs:[J

.field private variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

.field private variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;)V
    .locals 14

    const-wide/16 v8, 0x1388

    const-wide/16 v10, 0x4e20

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;-><init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;JJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;JJ)V
    .locals 15

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;-><init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;JJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(ZLorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;JJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isMaster:Z

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->trackSelector:Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;

    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p7

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p9

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;->baseUri:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    new-instance v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;->type:I

    if-nez v2, :cond_0

    check-cast p3, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer/chunk/Format;

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "application/x-mpegURL"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/Variant;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lorg/telegram/messenger/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/chunk/Format;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    goto :goto_0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

    return-object v0
.end method

.method private allVariantsBlacklisted()Z
    .locals 8

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private clearEncryptionData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    return-void
.end method

.method private clearStaleBlacklistedVariants()V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v1, v0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v1, v0

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aput-wide v8, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getLiveNextChunkSequenceNumber(III)I
    .locals 12

    const-wide v10, 0x408f400000000000L    # 1000.0

    const-wide/16 v4, 0x0

    if-ne p2, p3, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aget-object v6, v0, p2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aget-object v7, v0, p3

    iget v0, v6, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    sub-int v0, p1, v0

    move v1, v0

    move-wide v2, v4

    :goto_1
    iget-object v0, v6, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, v6, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    add-double/2addr v2, v8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v8, v6, p2

    sub-long v8, v0, v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v8

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v8, v6, p3

    sub-long/2addr v0, v8

    long-to-double v0, v0

    div-double/2addr v0, v10

    sub-double/2addr v2, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    iget v0, v7, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    iget-object v1, v7, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    sub-double/2addr v2, v8

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    iget v0, v7, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget v0, v7, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getLiveStartChunkSequenceNumber(I)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aget-object v1, v0, p1

    iget-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    iget-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    :goto_0
    iget v1, v1, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextVariantIndex(Lorg/telegram/messenger/exoplayer/hls/TsChunk;J)I
    .locals 8

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->clearStaleBlacklistedVariants()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v2, v2, v3

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->getAdjustedEndTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->getDurationUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v2, p2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v4, v1, v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-le v0, v1, :cond_5

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_5
    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ge v0, v1, :cond_6

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0
.end method

.method private getVariantIndex(Lorg/telegram/messenger/exoplayer/chunk/Format;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getVariantIndexForBandwidth(J)I
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    cmp-long v2, p1, v6

    if-nez v2, :cond_0

    move-wide p1, v0

    :cond_0
    long-to-float v2, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v4

    float-to-int v6, v2

    move v2, v3

    move v4, v5

    :goto_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v8, v7, v2

    cmp-long v7, v8, v0

    if-nez v7, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v4, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    if-gt v4, v6, :cond_1

    :goto_1
    return v2

    :cond_1
    move v4, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eq v4, v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    move v2, v4

    goto :goto_1
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 8

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;[BLjava/lang/String;I)V

    return-object v1
.end method

.method private newMediaPlaylistChunk(I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/hls/Variant;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    new-instance v8, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, v0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;[BLorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V

    return-object v8
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    const/16 v3, 0x10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    new-array v2, v3, [B

    array-length v0, v1

    if-le v0, v3, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x10

    :goto_1
    array-length v3, v2

    array-length v4, v1

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setMediaPlaylist(ILorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aput-object p2, v0, p1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    iget-boolean v1, p2, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->live:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->durationUs:J

    return-void

    :cond_0
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    goto :goto_0
.end method

.method private shouldRerequestLiveMediaPlaylist(I)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aget-object v0, v0, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v4, v1, p1

    sub-long/2addr v2, v4

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->targetDurationSecs:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adaptiveTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;)V
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->computeDefaultVariantIndex(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;)I

    move-result v3

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    aget-object v4, p2, v0

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v5, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    :goto_1
    if-lez v1, :cond_2

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-direct {v4, p2, v3, v2, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;-><init>([Lorg/telegram/messenger/exoplayer/hls/Variant;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/16 v2, 0x780

    goto :goto_1

    :cond_2
    const/16 v1, 0x438

    goto :goto_2
.end method

.method protected computeDefaultVariantIndex(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;)I
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget-object v4, p2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ge v3, v1, :cond_0

    move v1, v3

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public fixedTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/Variant;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-direct {v1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;-><init>(Lorg/telegram/messenger/exoplayer/hls/Variant;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChunkOperation(Lorg/telegram/messenger/exoplayer/hls/TsChunk;JLorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 24

    if-nez p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-direct/range {p0 .. p3}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getNextVariantIndex(Lorg/telegram/messenger/exoplayer/hls/TsChunk;J)I

    move-result v3

    if-eqz p1, :cond_2

    if-eq v2, v3, :cond_2

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getVariantIndex(Lorg/telegram/messenger/exoplayer/chunk/Format;)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v3, :cond_6

    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getLiveStartChunkSequenceNumber(I)I

    move-result v18

    :cond_4
    :goto_3
    iget v2, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    sub-int v2, v18, v2

    iget-object v3, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_a

    iget-boolean v2, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->live:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->chunkIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getLiveNextChunkSequenceNumber(III)I

    move-result v18

    iget v2, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    new-instance v2, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v2, v3, v5, v6}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v2

    iget v3, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int v18, v2, v3

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->startTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v2, v3, v5, v6}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v2

    iget v3, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int v18, v2, v3

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->getNextChunkIndex()I

    move-result v18

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->shouldRerequestLiveMediaPlaylist(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_2

    :cond_a
    iget-object v3, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v3, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-boolean v2, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v2, :cond_d

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v4, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v3, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_2

    :cond_b
    iget-object v4, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_c
    :goto_4
    new-instance v2, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v6, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_10

    if-nez p1, :cond_e

    const-wide/16 v6, 0x0

    :goto_5
    iget-wide v4, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v10

    double-to-long v4, v4

    add-long v16, v6, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-object v5, v5, v8

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, ".aac"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    new-instance v8, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;

    invoke-direct {v8, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct/range {v3 .. v11}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;-><init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V

    move-object/from16 v20, v3

    :goto_6
    new-instance v9, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget v0, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v22, v0

    move-object v11, v2

    move v12, v4

    move-object v13, v5

    move-wide v14, v6

    invoke-direct/range {v9 .. v22}, Lorg/telegram/messenger/exoplayer/hls/TsChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIILorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;[B[B)V

    move-object/from16 v0, p4

    iput-object v9, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_2

    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->clearEncryptionData()V

    goto :goto_4

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->getAdjustedEndTimeUs()J

    move-result-wide v6

    if-eqz v9, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->getDurationUs()J

    move-result-wide v4

    :goto_7
    sub-long/2addr v6, v4

    goto :goto_5

    :cond_f
    const-wide/16 v4, 0x0

    goto :goto_7

    :cond_10
    iget-wide v6, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    goto :goto_5

    :cond_11
    const-string/jumbo v8, ".mp3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    new-instance v8, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;

    invoke-direct {v8, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;-><init>(J)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct/range {v3 .. v11}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;-><init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V

    move-object/from16 v20, v3

    goto :goto_6

    :cond_12
    const-string/jumbo v8, ".webvtt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string/jumbo v8, ".vtt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isMaster:Z

    iget v10, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v3, v8, v10, v6, v7}, Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;->getAdjuster(ZIJ)Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v8, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;

    invoke-direct {v8, v3}, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct/range {v3 .. v11}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;-><init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V

    move-object/from16 v20, v3

    goto/16 :goto_6

    :cond_14
    if-eqz p1, :cond_15

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->discontinuitySequenceNumber:I

    iget v8, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    if-ne v3, v8, :cond_15

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isMaster:Z

    iget v10, v12, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v3, v8, v10, v6, v7}, Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;->getAdjuster(ZIJ)Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v3, 0x0

    iget-object v8, v5, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "audio/mp4a-latm"

    if-eq v11, v13, :cond_16

    const/4 v3, 0x2

    :cond_16
    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "video/avc"

    if-eq v8, v11, :cond_17

    or-int/lit8 v3, v3, 0x4

    :cond_17
    new-instance v8, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;

    invoke-direct {v8, v10, v3}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I
    invoke-static {v11}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$200(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v10

    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I
    invoke-static {v11}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$300(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v11

    invoke-direct/range {v3 .. v11}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;-><init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V

    move-object/from16 v20, v3

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    move-object/from16 v20, v3

    goto/16 :goto_6
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->durationUs:J

    return-wide v0
.end method

.method public getFixedTrackVariant(I)Lorg/telegram/messenger/exoplayer/hls/Variant;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMuxedAudioLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->muxedAudioLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMuxedCaptionLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->muxedCaptionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTrackIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->live:Z

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    :cond_0
    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    iget v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getResult()Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->setMediaPlaylist(ILorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getRawResponse()[B

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z
    .locals 10

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_2

    :cond_0
    instance-of v0, p2, Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v4, p2, Lorg/telegram/messenger/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v0, 0x194

    if-eq v4, v0, :cond_1

    const/16 v0, 0x19a

    if-ne v4, v0, :cond_2

    :cond_1
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getVariantIndex(Lorg/telegram/messenger/exoplayer/chunk/Format;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v6, v1, v0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    aput-wide v6, v5, v0

    if-eqz v1, :cond_6

    const-string/jumbo v0, "HlsChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Already blacklisted variant ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return v3

    :cond_3
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    goto :goto_0

    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->variantIndex:I

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->allVariantsBlacklisted()Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v0, "HlsChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Blacklisted variant ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "HlsChunkSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Final variant not blacklisted ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aput-wide v8, v1, v0

    goto :goto_2
.end method

.method public prepare()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->prepareCalled:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->prepareCalled:Z

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->trackSelector:Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    invoke-interface {v2, v3, p0}, Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;->selectTracks(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectTrack(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v2, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public seek()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isMaster:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/PtsTimestampAdjusterProvider;->reset()V

    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$100(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    # getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v0, v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer/hls/Variant;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    return-void
.end method
