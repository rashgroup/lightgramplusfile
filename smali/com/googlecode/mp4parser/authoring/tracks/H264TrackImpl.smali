.class public Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;
.source "H264TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field currentPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

.field currentSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

.field private determineFrameRate:Z

.field firstPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

.field firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

.field frameNrInGop:I

.field private frametick:I

.field private height:I

.field private lang:Ljava/lang/String;

.field pictureParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/mp4parser/util/RangeStartMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field ppsIdToPps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;",
            ">;"
        }
    .end annotation
.end field

.field ppsIdToPpsBytes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

.field seqParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/mp4parser/util/RangeStartMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field spsIdToSps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;",
            ">;"
        }
    .end annotation
.end field

.field spsIdToSpsBytes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private timescale:J

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 1

    const-string/jumbo v0, "eng"

    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;JI)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;JI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->spsIdToSpsBytes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->spsIdToSps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ppsIdToPpsBytes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ppsIdToPps:Ljava/util/Map;

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    new-instance v0, Lcom/googlecode/mp4parser/util/RangeStartMap;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/util/RangeStartMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;

    new-instance v0, Lcom/googlecode/mp4parser/util/RangeStartMap;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/util/RangeStartMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:J

    iput p5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    if-lez p5, :cond_0

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    :cond_0
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->parse(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)V

    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private configureFramerate()V
    .locals 8

    const-wide/32 v6, 0x15f90

    const/16 v4, 0xe10

    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->time_scale:I

    shr-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:J

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->num_units_in_tick:I

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Warning: vuiParams contain invalid values: time_scale: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and frame_tick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Setting frame rate to 25fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-wide v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:J

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Warning: Can\'t determine frame rate. Guessing 25 fps"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-wide v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:J

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    goto :goto_0
.end method

.method private createSample(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x16

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_1

    const/16 v0, 0x26

    move v4, v0

    :cond_1
    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {v5, p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-static {v5}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->spsIdToSps:Ljava/util/Map;

    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ppsIdToPps:Ljava/util/Map;

    invoke-direct {v5, v0, v6, v7, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;-><init>(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;Z)V

    iget-object v0, v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->B:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    if-ne v0, v5, :cond_2

    add-int/lit8 v4, v4, 0x4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSampleObject(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    iget v5, v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    if-nez v5, :cond_4

    :cond_3
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    :cond_4
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    iget-boolean v5, v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    if-eqz v5, :cond_8

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    iget v2, v2, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    sub-int/2addr v2, v5

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ctts:Ljava/util/List;

    new-instance v6, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    iget v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    mul-int/2addr v2, v7

    invoke-direct {v6, v3, v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sdtp:Ljava/util/List;

    new-instance v3, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    invoke-direct {v3, v4}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v6, 0x5

    if-ne v0, v6, :cond_0

    move v1, v3

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    iget-boolean v5, v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    iget v2, v2, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    div-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private handlePPS(Ljava/nio/ByteBuffer;)V
    .locals 4

    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-result-object v1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    :cond_0
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ppsIdToPpsBytes:Ljava/util/Map;

    iget v3, v1, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "OMG - I got two SPS with same ID but different settings! (AVC3 is the solution)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/googlecode/mp4parser/util/RangeStartMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ppsIdToPpsBytes:Ljava/util/Map;

    iget v3, v1, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ppsIdToPps:Ljava/util/Map;

    iget v2, v1, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleSPS(Ljava/nio/ByteBuffer;)V
    .locals 4

    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-result-object v1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->configureFramerate()V

    :cond_0
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->spsIdToSpsBytes:Ljava/util/Map;

    iget v3, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "OMG - I got two SPS with same ID but different settings!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/googlecode/mp4parser/util/RangeStartMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->spsIdToSpsBytes:Ljava/util/Map;

    iget v3, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->spsIdToSps:Ljava/util/Map;

    iget v2, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private parse(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)V
    .locals 10

    const-wide/high16 v6, 0x4052000000000000L    # 72.0

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readVariables()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    new-instance v3, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string/jumbo v0, "avc1"

    invoke-direct {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    invoke-virtual {v3, v5}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    invoke-virtual {v3, v6, v7}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    invoke-virtual {v3, v6, v7}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    const-string/jumbo v0, "AVC Coding"

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setCompressorname(Ljava/lang/String;)V

    new-instance v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-direct {v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->spsIdToSpsBytes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ppsIdToPpsBytes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setChromaFormat(I)V

    invoke-virtual {v4, v5}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setConfigurationVersion(I)V

    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_0_flag:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x80

    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_1_flag:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x40

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_2_flag:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    :goto_2
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_3_flag:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x10

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_4_flag:Z

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    :cond_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-wide v6, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->reserved_zero_2bits:J

    const-wide/16 v8, 0x3

    and-long/2addr v6, v8

    long-to-int v1, v6

    add-int/2addr v0, v1

    invoke-virtual {v4, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setProfileCompatibility(I)V

    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:J

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private readSamples(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Z
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->findNextNal(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v4, :cond_0

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSample(Ljava/util/List;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->decodingTimes:[J

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->decodingTimes:[J

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v5, v0, 0x5

    and-int/lit8 v5, v5, 0x3

    and-int/lit8 v6, v0, 0x1f

    packed-switch v6, :pswitch_data_0

    :pswitch_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unknown NAL unit type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1FirstVclNalDetector;

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1FirstVclNalDetector;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/nio/ByteBuffer;II)V

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1FirstVclNalDetector;->isFirstInNew(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1FirstVclNalDetector;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSample(Ljava/util/List;)V

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSample(Ljava/util/List;)V

    move-object v1, v2

    :cond_3
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-direct {v5, p0, v4}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-static {v5}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    invoke-direct {v0, p0, v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSample(Ljava/util/List;)V

    move-object v1, v2

    :cond_4
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    if-eqz v1, :cond_5

    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSample(Ljava/util/List;)V

    move-object v1, v2

    :cond_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->handleSPS(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz v1, :cond_6

    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSample(Ljava/util/List;)V

    move-object v1, v2

    :cond_6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->handlePPS(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Sequence parameter set extension is not yet handled. Needs TLC."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method private readVariables()Z
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x10

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v2

    :cond_1
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getSubWidth()I

    move-result v2

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getSubHeight()I

    move-result v3

    mul-int/2addr v0, v3

    :goto_0
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    add-int/2addr v4, v5

    mul-int/2addr v2, v4

    sub-int v2, v3, v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    add-int/2addr v3, v4

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    :cond_2
    return v1

    :cond_3
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vide"

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method
