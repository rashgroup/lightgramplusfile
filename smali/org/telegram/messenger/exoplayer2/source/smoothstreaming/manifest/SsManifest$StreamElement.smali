.class public Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamElement"
.end annotation


# static fields
.field private static final URL_PLACEHOLDER_BITRATE:Ljava/lang/String; = "{bitrate}"

.field private static final URL_PLACEHOLDER_START_TIME:Ljava/lang/String; = "{start time}"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field public final chunkCount:I

.field private final chunkStartTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkStartTimesUs:[J

.field private final chunkTemplate:Ljava/lang/String;

.field public final displayHeight:I

.field public final displayWidth:I

.field public final formats:[Lorg/telegram/messenger/exoplayer2/Format;

.field public final language:Ljava/lang/String;

.field private final lastChunkDurationUs:J

.field public final maxHeight:I

.field public final maxWidth:I

.field public final name:Ljava/lang/String;

.field public final subType:Ljava/lang/String;

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lorg/telegram/messenger/exoplayer2/Format;Ljava/util/List;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "[",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->baseUri:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkTemplate:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->subType:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->timescale:J

    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->name:Ljava/lang/String;

    move/from16 v0, p8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->maxWidth:I

    move/from16 v0, p9

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->maxHeight:I

    move/from16 v0, p10

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->displayWidth:I

    move/from16 v0, p11

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->displayHeight:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->language:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p15

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->lastChunkDurationUs:J

    const-wide/32 v2, 0xf4240

    move-object/from16 v0, p14

    invoke-static {v0, v2, v3, p5, p6}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamps(Ljava/util/List;JJ)[J

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimesUs:[J

    return-void
.end method


# virtual methods
.method public buildRequestUri(II)Landroid/net/Uri;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkTemplate:Ljava/lang/String;

    const-string/jumbo v1, "{bitrate}"

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v2, v2, p1

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{start time}"

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->baseUri:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public getChunkDurationUs(I)J
    .locals 4

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->lastChunkDurationUs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimesUs:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimesUs:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getChunkIndex(J)I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimesUs:[J

    invoke-static {v0, p1, p2, v1, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    return v0
.end method

.method public getStartTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkStartTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
