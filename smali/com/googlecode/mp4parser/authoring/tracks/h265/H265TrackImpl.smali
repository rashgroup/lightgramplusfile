.class public Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;
.source "H265TrackImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitTypes;


# instance fields
.field pps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field sps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field vps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->sps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->pps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->vps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->samples:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    new-array v2, v10, [Z

    new-array v3, v10, [Z

    aput-boolean v10, v3, v9

    :goto_0
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->findNextNal(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->createSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->decodingTimes:[J

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->decodingTimes:[J

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;

    move-result-object v5

    aget-boolean v6, v2, v9

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->isVcl(Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit8 v6, v6, -0x80

    if-eqz v6, :cond_1

    invoke-virtual {p0, v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->wrapUp(Ljava/util/List;[Z[Z)V

    :cond_1
    :goto_1
    iget v6, v5, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nalUnitType:I

    packed-switch v6, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget v6, v5, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nalUnitType:I

    packed-switch v6, :pswitch_data_1

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Adding "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nalUnitType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->isVcl(Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v5, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nalUnitType:I

    packed-switch v4, :pswitch_data_2

    aput-boolean v9, v3, v9

    :cond_2
    :goto_3
    aget-boolean v4, v2, v9

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->isVcl(Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;)Z

    move-result v5

    or-int/2addr v4, v5

    aput-boolean v4, v2, v9

    goto :goto_0

    :cond_3
    iget v6, v5, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nalUnitType:I

    packed-switch v6, :pswitch_data_3

    :pswitch_2
    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->wrapUp(Ljava/util/List;[Z[Z)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->pps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "Stored PPS"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->vps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "Stored VPS"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->sps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v6, Lcom/googlecode/mp4parser/authoring/tracks/h265/SequenceParameterSetRbsp;

    new-instance v7, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v7}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/googlecode/mp4parser/authoring/tracks/h265/SequenceParameterSetRbsp;-><init>(Ljava/io/InputStream;)V

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "Stored SPS"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    new-instance v6, Lcom/googlecode/mp4parser/authoring/tracks/h265/SEIMessage;

    new-instance v7, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v6, v7}, Lcom/googlecode/mp4parser/authoring/tracks/h265/SEIMessage;-><init>(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    goto/16 :goto_2

    :pswitch_8
    aget-boolean v4, v3, v9

    and-int/lit8 v4, v4, 0x1

    aput-boolean v4, v3, v9

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private createSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 9

    const/16 v7, 0x22

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    const/4 v8, 0x1

    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    new-instance v1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string/jumbo v0, "hvc1"

    invoke-direct {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    invoke-virtual {v1, v8}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    const/16 v0, 0x280

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    const/16 v0, 0x1e0

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    const-string/jumbo v0, "HEVC Coding"

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setCompressorname(Ljava/lang/String;)V

    new-instance v2, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;

    invoke-direct {v2}, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;-><init>()V

    new-instance v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    invoke-direct {v3}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;-><init>()V

    iput-boolean v8, v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    const/16 v0, 0x21

    iput v0, v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->sps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    invoke-direct {v4}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;-><init>()V

    iput-boolean v8, v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    iput v7, v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->pps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v5, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    invoke-direct {v5}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;-><init>()V

    iput-boolean v8, v5, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    iput v7, v5, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->vps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->getArrays()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v5, v6, v8

    const/4 v3, 0x2

    aput-object v4, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v5, v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v6, v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v7, v5, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;

    new-instance v1, Lcom/googlecode/mp4parser/FileDataSourceImpl;

    const-string/jumbo v2, "c:\\content\\test-UHD-HEVC_01_FMV_Med_track1.hvc"

    invoke-direct {v1, v2}, Lcom/googlecode/mp4parser/FileDataSourceImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    new-instance v1, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v2, "output.mp4"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method


# virtual methods
.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vide"

    return-object v0
.end method

.method public getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;-><init>()V

    const v2, 0x8000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0xf

    iput v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->forbiddenZeroFlag:I

    and-int/lit16 v2, v0, 0x7e00

    shr-int/lit8 v2, v2, 0x9

    iput v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nalUnitType:I

    and-int/lit16 v2, v0, 0x1f8

    shr-int/lit8 v2, v2, 0x3

    iput v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nuhLayerId:I

    and-int/lit8 v0, v0, 0x7

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nuhTemporalIdPlusOne:I

    return-object v1
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->samples:Ljava/util/ArrayList;

    return-object v0
.end method

.method isVcl(Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;)Z
    .locals 2

    iget v0, p1, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nalUnitType:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/googlecode/mp4parser/authoring/tracks/h265/NalUnitHeader;->nalUnitType:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wrapUp(Ljava/util/List;[Z[Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[Z[Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->samples:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/h265/H265TrackImpl;->createSampleObject(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Create AU from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NALs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    aget-boolean v0, p3, v3

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "  IDR"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    aput-boolean v3, p2, v3

    const/4 v0, 0x1

    aput-boolean v0, p3, v3

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_0
.end method
