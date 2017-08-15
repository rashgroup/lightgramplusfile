.class public Lorg/telegram/messenger/video/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/Track$SamplePresentationTime;
    }
.end annotation


# static fields
.field private static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creationTime:Ljava/util/Date;

.field private duration:J

.field private first:Z

.field private handler:Ljava/lang/String;

.field private headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field private height:I

.field private isAudio:Z

.field private sampleCompositions:[I

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private sampleDurations:[J

.field private samplePresentationTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/video/Track$SamplePresentationTime;",
            ">;"
        }
    .end annotation
.end field

.field private samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/video/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private syncSamples:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeScale:I

.field private trackId:J

.field private volume:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x17700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x15888

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xfa00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaFormat;Z)V
    .locals 10

    const/4 v9, -0x1

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/video/Track;->trackId:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->creationTime:Ljava/util/Date;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/video/Track;->volume:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    iput-boolean v6, p0, Lorg/telegram/messenger/video/Track;->first:Z

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/video/Track;->trackId:J

    iput-boolean p3, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    if-nez v0, :cond_1d

    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/Track;->width:I

    const-string/jumbo v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/Track;->height:I

    const v0, 0x15f90

    iput v0, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    const-string/jumbo v0, "vide"

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    new-instance v0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    const-string/jumbo v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string/jumbo v1, "avc1"

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    iget v1, p0, Lorg/telegram/messenger/video/Track;->width:I

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    iget v1, p0, Lorg/telegram/messenger/video/Track;->height:I

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    new-instance v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-direct {v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;-><init>()V

    const-string/jumbo v2, "csd-0"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "csd-0"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "csd-1"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    :cond_0
    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-virtual {v1, v6}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    :cond_1
    :goto_0
    const-string/jumbo v2, "profile"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "profile"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_15

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    :cond_2
    :goto_1
    invoke-virtual {v1, v9}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    invoke-virtual {v1, v9}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    invoke-virtual {v1, v9}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setChromaFormat(I)V

    invoke-virtual {v1, v6}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setConfigurationVersion(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setProfileCompatibility(I)V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    invoke-virtual {v1, v8}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_5
    if-ne v2, v7, :cond_6

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_7
    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_8
    const/16 v3, 0x40

    if-ne v2, v3, :cond_9

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_9
    const/16 v3, 0x80

    if-ne v2, v3, :cond_a

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_a
    const/16 v3, 0x100

    if-ne v2, v3, :cond_b

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_b
    const/16 v3, 0x200

    if-ne v2, v3, :cond_c

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_c
    const/16 v3, 0x400

    if-ne v2, v3, :cond_d

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x800

    if-ne v2, v3, :cond_e

    invoke-virtual {v1, v7}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x1000

    if-ne v2, v3, :cond_f

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x2000

    if-ne v2, v3, :cond_10

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x4000

    if-ne v2, v3, :cond_11

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_11
    const v3, 0x8000

    if-ne v2, v3, :cond_12

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_12
    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_13

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_13
    if-ne v2, v8, :cond_1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_15
    if-ne v2, v8, :cond_16

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1

    :cond_16
    if-ne v2, v7, :cond_17

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1

    :cond_17
    const/16 v3, 0x8

    if-ne v2, v3, :cond_18

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1

    :cond_18
    const/16 v3, 0x10

    if-ne v2, v3, :cond_19

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1

    :cond_19
    const/16 v3, 0x20

    if-ne v2, v3, :cond_1a

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1

    :cond_1a
    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    const/16 v2, 0xf4

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1

    :cond_1b
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v1, "video/mp4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string/jumbo v1, "mp4v"

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    iget v1, p0, Lorg/telegram/messenger/video/Track;->width:I

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    iget v1, p0, Lorg/telegram/messenger/video/Track;->height:I

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_2

    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/video/Track;->volume:F

    const-string/jumbo v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    const-string/jumbo v0, "soun"

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    new-instance v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    new-instance v1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string/jumbo v0, "mp4a"

    invoke-direct {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "channel-count"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    const-string/jumbo v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    invoke-virtual {v1, v6}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    const/16 v0, 0x40

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    const/16 v0, 0x600

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setBufferSizeDB(I)V

    const-wide/32 v6, 0x17700

    invoke-virtual {v4, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    const-wide/32 v6, 0x17700

    invoke-virtual {v4, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    new-instance v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    invoke-virtual {v5, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setAudioObjectType(I)V

    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setSamplingFrequencyIndex(I)V

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setChannelConfiguration(I)V

    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setEsDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;)V

    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public addSample(JLandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    if-nez v0, :cond_1

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/messenger/video/Sample;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v3

    invoke-direct {v2, p1, p2, v4, v5}, Lorg/telegram/messenger/video/Sample;-><init>(JJ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v3, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-direct {v1, p0, v2, v4, v5}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;-><init>(Lorg/telegram/messenger/video/Track;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/Track;->height:I

    return v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public getSampleCompositions()[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    return-object v0
.end method

.method public getSamples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/video/Sample;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public getTimeScale()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    return v0
.end method

.method public getTrackId()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->trackId:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/Track;->volume:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/Track;->width:I

    return v0
.end method

.method public isAudio()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    return v0
.end method

.method public prepare()V
    .locals 14

    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/video/Track$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/video/Track$1;-><init>(Lorg/telegram/messenger/video/Track;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    const-wide v2, 0x7fffffffffffffffL

    const/4 v1, 0x0

    const/4 v0, 0x0

    move-wide v6, v4

    move-wide v4, v2

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {v0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v10

    sub-long/2addr v10, v6

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {v0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v6

    iget-object v3, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I
    invoke-static {v0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v9

    aput-wide v10, v3, v9

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I
    invoke-static {v0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v12, p0, Lorg/telegram/messenger/video/Track;->duration:J

    add-long/2addr v12, v10

    iput-wide v12, p0, Lorg/telegram/messenger/video/Track;->duration:J

    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-eqz v3, :cond_1

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_1
    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I
    invoke-static {v0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    array-length v0, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    :cond_4
    const/4 v0, 0x1

    move v3, v0

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    aget-wide v4, v1, v3

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->dt:J
    invoke-static {v1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$200(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v6

    add-long/2addr v4, v6

    # setter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->dt:J
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$202(Lorg/telegram/messenger/video/Track$SamplePresentationTime;J)J

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I
    invoke-static {v0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v3

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {v0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v4

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->dt:J
    invoke-static {v0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$200(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v0, v4

    aput v0, v2, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    return-void
.end method
