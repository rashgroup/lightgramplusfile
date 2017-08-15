.class public final Lorg/telegram/messenger/exoplayer2/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final containerMimeType:Ljava/lang/String;

.field public final drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private frameworkMediaFormat:Landroid/media/MediaFormat;

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Format$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-class v0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    const-class v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BIIIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "Lorg/telegram/messenger/exoplayer2/metadata/Metadata;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    iput p5, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    iput p6, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    iput p7, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iput p8, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iput p9, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    iput p10, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    iput p11, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput-object p12, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    iput p13, p0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move/from16 v0, p14

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v0, p16

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v0, p17

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v0, p18

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v0, p19

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move/from16 v0, p21

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    if-nez p24, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p24

    :cond_0
    move-object/from16 v0, p24

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v0, p25

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v0, p26

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v24, p7

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/metadata/Metadata;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p12

    move-object/from16 v20, p13

    move-object/from16 v24, p10

    move-object/from16 v25, p11

    move-object/from16 v26, p14

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 27

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v20, p5

    move-object/from16 v24, p4

    move-object/from16 v25, p6

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 27

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v25, p4

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 8

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 27

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move/from16 v21, p7

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 10

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;J)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 28

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v19, p4

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p8

    move-object/from16 v25, p7

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 10

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;J)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 11

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List",
            "<[B>;)",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v24, p8

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF[BI",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v24, p8

    move-object/from16 v25, p13

    invoke-direct/range {v0 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private static maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method private static maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29

    new-instance v2, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v21, p6

    move-object/from16 v22, p7

    invoke-direct/range {v2 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithDrmInitData(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29

    new-instance v2, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-object/from16 v27, p1

    invoke-direct/range {v2 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithGaplessInfo(II)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29

    new-instance v2, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move/from16 v19, p1

    move/from16 v20, p2

    invoke-direct/range {v2 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithManifestFormatInfo(Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    or-int v21, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_3
    if-eqz p2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-nez v2, :cond_6

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    :goto_4
    new-instance v2, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    invoke-direct/range {v2 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    goto :goto_4
.end method

.method public copyWithMaxInputSize(I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29

    new-instance v2, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move/from16 v8, p1

    invoke-direct/range {v2 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29

    new-instance v2, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v28, p1

    invoke-direct/range {v2 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public copyWithSubsampleOffsetUs(J)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29

    new-instance v2, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-wide/from16 v24, p1

    invoke-direct/range {v2 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/Format;

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v4

    goto/16 :goto_0
.end method

.method public final getFrameworkMediaFormatV16()Landroid/media/MediaFormat;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameworkMediaFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_1

    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v0, "mime"

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "language"

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "max-input-size"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v0, "frame-rate"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    const-string/jumbo v0, "rotation-degrees"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v0, "channel-count"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v0, "sample-rate"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v0, "encoder-delay"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v0, "encoder-padding"

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csd-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameworkMediaFormat:Landroid/media/MediaFormat;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameworkMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getPixelCount()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-nez v2, :cond_7

    :goto_6
    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->hashCode:I

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->hashCode:I

    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
