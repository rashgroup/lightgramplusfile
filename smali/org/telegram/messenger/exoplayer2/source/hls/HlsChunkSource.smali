.class Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private fatalError:Ljava/io/IOException;

.field private isTimestampMaster:Z

.field private final playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private scratchSpace:[B

.field private final timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

.field private trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

.field private final variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    array-length v0, p2

    new-array v1, v0, [Lorg/telegram/messenger/exoplayer2/Format;

    array-length v0, p2

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    aget-object v3, p2, v0

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v3, v1, v0

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method private clearEncryptionData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    return-void
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 9

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v3, v3, p3

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move v5, p4

    move-object v6, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object v1
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

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getNextChunk(Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;JLorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 18

    if-nez p1, :cond_0

    const/4 v6, -0x1

    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4, v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v5

    if-eq v6, v5, :cond_2

    const/4 v2, 0x1

    move v4, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v2, v2, v5

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    :goto_3
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v6

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedStartTimeUs()J

    move-result-wide v4

    sub-long v4, v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move v4, v2

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v4, :cond_a

    :cond_4
    if-nez p1, :cond_6

    :goto_4
    iget-boolean v2, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v2, :cond_7

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v8

    cmp-long v2, p2, v8

    if-lez v2, :cond_7

    iget v2, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget-object v6, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v2, v6

    :cond_5
    :goto_5
    move v15, v2

    move-object v6, v3

    :goto_6
    iget v2, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    if-ge v15, v2, :cond_b

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    move-wide/from16 p2, v0

    goto :goto_4

    :cond_7
    iget-object v7, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p1, :cond_9

    :cond_8
    const/4 v2, 0x1

    :goto_7
    invoke-static {v7, v8, v9, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v2

    iget v7, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v2, v7

    iget v7, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    if-ge v2, v7, :cond_5

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()I

    move-result v2

    move v5, v6

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()I

    move-result v2

    move v15, v2

    move-object v6, v3

    goto :goto_6

    :cond_b
    iget v2, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v2, v15, v2

    iget-object v3, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_d

    iget-boolean v2, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v2, v2, v5

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    goto/16 :goto_3

    :cond_d
    iget-object v3, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-boolean v3, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v3, :cond_12

    iget-object v3, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v7, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v3, v7}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    :cond_e
    iget-object v7, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_f
    :goto_8
    iget-wide v8, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    if-eqz p1, :cond_10

    if-nez v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedEndTimeUs()J

    move-result-wide v8

    :cond_10
    iget-object v3, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    iget v7, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(IJ)Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v14

    const/4 v3, 0x0

    iget-object v10, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v10, :cond_11

    iget-object v3, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v6, v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v3, v6}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v8, v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v10, v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v3, v6

    :cond_11
    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v8, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v10, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v6 .. v12}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v8, v8, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v17, v0

    move-object v5, v7

    move-object v7, v3

    move-object v11, v2

    move v12, v15

    move-object/from16 v15, p1

    invoke-direct/range {v4 .. v17}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;IZLorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;[B[B)V

    move-object/from16 v0, p4

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->clearEncryptionData()V

    goto :goto_8
.end method

.method public getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    :cond_0
    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V
    .locals 6

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedStartTimeUs()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onChunkLoaded(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v0

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public selectTracks(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    return-void
.end method
