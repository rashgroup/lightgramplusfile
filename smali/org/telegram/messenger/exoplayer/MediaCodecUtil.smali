.class public final Lorg/telegram/messenger/exoplayer/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;,
        Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;,
        Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;,
        Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;,
        Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final PASSTHROUGH_DECODER_INFO:Lorg/telegram/messenger/exoplayer/DecoderInfo;

.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final decoderInfosCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/DecoderInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/telegram/messenger/exoplayer/DecoderInfo;

    const-string/jumbo v1, "OMX.google.raw.decoder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    sput-object v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->PASSTHROUGH_DECODER_INFO:Lorg/telegram/messenger/exoplayer/DecoderInfo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->decoderInfosCache:Ljava/util/Map;

    const/4 v0, -0x1

    sput v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .locals 4

    const/high16 v3, 0x200000

    const v2, 0x65400

    const/16 v0, 0x6300

    const v1, 0x18c00

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    const v0, 0x31800

    goto :goto_0

    :sswitch_5
    move v0, v2

    goto :goto_0

    :sswitch_6
    move v0, v2

    goto :goto_0

    :sswitch_7
    const v0, 0xe1000

    goto :goto_0

    :sswitch_8
    const/high16 v0, 0x140000

    goto :goto_0

    :sswitch_9
    move v0, v3

    goto :goto_0

    :sswitch_a
    move v0, v3

    goto :goto_0

    :sswitch_b
    const/high16 v0, 0x220000

    goto :goto_0

    :sswitch_c
    const v0, 0x564000

    goto :goto_0

    :sswitch_d
    const/high16 v0, 0x900000

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_6
        0x200 -> :sswitch_7
        0x400 -> :sswitch_8
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_c
        0x8000 -> :sswitch_d
    .end sparse-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .locals 2

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/DecoderInfo;

    goto :goto_0
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/DecoderInfo;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x15

    const-class v2, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    sget-object v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->decoderInfosCache:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-lt v0, v4, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;-><init>(Z)V

    :goto_1
    invoke-static {v3, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getDecoderInfosInternal(Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-gt v4, v1, :cond_2

    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v1, v4, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecUtil$1;)V

    invoke-static {v3, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getDecoderInfosInternal(Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v4, "MediaCodecUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ". Assuming: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/DecoderInfo;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->decoderInfosCache:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecUtil$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static getDecoderInfosInternal(Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;",
            "Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/DecoderInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v7

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v11, :cond_6

    aget-object v12, v10, v3

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v8, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$MediaCodecListCompat;->isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v13

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-eq v14, v13, :cond_1

    :cond_0
    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v14, :cond_3

    :cond_1
    new-instance v13, Lorg/telegram/messenger/exoplayer/DecoderInfo;

    invoke-direct {v13, v9, v2}, Lorg/telegram/messenger/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    if-nez v7, :cond_2

    if-eqz v13, :cond_2

    new-instance v13, Lorg/telegram/messenger/exoplayer/DecoderInfo;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".secure"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v2}, Lorg/telegram/messenger/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-object v1

    :catch_0
    move-exception v2

    :try_start_2
    sget v13, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v14, 0x17

    if-gt v13, v14, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v2, "MediaCodecUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Skipping codec "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " (failed to query capabilities)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v2, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lorg/telegram/messenger/exoplayer/MediaCodecUtil$1;)V

    throw v2

    :cond_5
    :try_start_3
    const-string/jumbo v1, "MediaCodecUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to query codec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_0
.end method

.method public static getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->PASSTHROUGH_DECODER_INFO:Lorg/telegram/messenger/exoplayer/DecoderInfo;

    return-object v0
.end method

.method private static getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/DecoderInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    goto :goto_0
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z
    .locals 6

    const/16 v5, 0x13

    const/16 v4, 0x12

    const/16 v3, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    const-string/jumbo v1, ".secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    const-string/jumbo v1, "CIPAACDecoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CIPMP3Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CIPVorbisDecoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AACDecoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "MP3Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-ge v1, v4, :cond_3

    const-string/jumbo v1, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-ge v1, v4, :cond_4

    const-string/jumbo v1, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "a70"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_5

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "OMX.qcom.audio.decoder.mp3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "dlxu"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "protou"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ville"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "villeplus"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "villec2"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "gee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "C6602"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "C6603"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "C6606"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "C6616"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "L36h"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SO-02E"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_6

    const-string/jumbo v1, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "C1504"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "C1505"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "C1604"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "C1605"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-gt v1, v5, :cond_8

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "d2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "serrano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "santos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string/jumbo v1, "samsung"

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "OMX.SEC.vp8.dec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_8
    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-gt v1, v5, :cond_9

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "OMX.qcom.video.decoder.vp8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isH264ProfileSupported(II)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "video/avc"

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/DecoderInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v2, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v5, p0, :cond_2

    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v4, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSizeAndRateSupportedV21(Ljava/lang/String;ZIID)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isSizeSupportedV21(Ljava/lang/String;ZII)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 5

    const/4 v0, 0x0

    sget v1, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "video/avc"

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/DecoderInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v2, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x2a300

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    sput v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize:I

    :cond_2
    sget v0, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method public static warmCodec(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MediaCodecUtil"

    const-string/jumbo v2, "Codec warming failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
