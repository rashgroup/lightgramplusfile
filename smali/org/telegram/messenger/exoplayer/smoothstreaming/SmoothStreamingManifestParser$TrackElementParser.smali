.class Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;
.super Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
.source "SmoothStreamingManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackElementParser"
.end annotation


# static fields
.field private static final KEY_BITRATE:Ljava/lang/String; = "Bitrate"

.field private static final KEY_CHANNELS:Ljava/lang/String; = "Channels"

.field private static final KEY_CODEC_PRIVATE_DATA:Ljava/lang/String; = "CodecPrivateData"

.field private static final KEY_FOUR_CC:Ljava/lang/String; = "FourCC"

.field private static final KEY_INDEX:Ljava/lang/String; = "Index"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "MaxHeight"

.field private static final KEY_MAX_WIDTH:Ljava/lang/String; = "MaxWidth"

.field private static final KEY_SAMPLING_RATE:Ljava/lang/String; = "SamplingRate"

.field private static final KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final TAG:Ljava/lang/String; = "QualityLevel"


# instance fields
.field private bitrate:I

.field private channels:I

.field private final csd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private index:I

.field private language:Ljava/lang/String;

.field private maxHeight:I

.field private maxWidth:I

.field private mimeType:Ljava/lang/String;

.field private samplingRate:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QualityLevel"

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;-><init>(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    return-void
.end method

.method private static fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "H264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "X264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AVC1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DAVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "video/avc"

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AACL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AACH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AACP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "TTML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "application/ttml+xml"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "ac-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string/jumbo v0, "audio/ac3"

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "ec-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string/jumbo v0, "audio/eac3"

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "dtsc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "audio/vnd.dts"

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "dtsh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string/jumbo v0, "audio/vnd.dts.hd"

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "dtse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "audio/opus"

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    check-cast v0, [[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [[B

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->index:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitrate:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    iget v5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->language:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;-><init>(IILjava/lang/String;[[BIIIILjava/lang/String;)V

    return-object v0

    :cond_0
    move-object v4, v0

    goto :goto_0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    const-string/jumbo v0, "Type"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v0, "Index"

    invoke-virtual {p0, p1, v0, v3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->index:I

    const-string/jumbo v0, "Bitrate"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitrate:I

    const-string/jumbo v0, "Language"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->language:Ljava/lang/String;

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const-string/jumbo v0, "MaxHeight"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    const-string/jumbo v0, "MaxWidth"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    const-string/jumbo v0, "FourCC"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    :goto_0
    if-nez v2, :cond_4

    const-string/jumbo v0, "SamplingRate"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    const-string/jumbo v0, "Channels"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    :goto_1
    const-string/jumbo v0, "CodecPrivateData"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->splitNalUnits([B)[[B

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iput v3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    const-string/jumbo v0, "FourCC"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    iput v3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
