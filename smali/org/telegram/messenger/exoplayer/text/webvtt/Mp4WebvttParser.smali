.class public final Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;
.super Ljava/lang/Object;
.source "Mp4WebvttParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/text/SubtitleParser;


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I

.field private static final TYPE_sttg:I

.field private static final TYPE_vttc:I


# instance fields
.field private final builder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

.field private final sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "payl"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_payl:I

    const-string/jumbo v0, "sttg"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_sttg:I

    const-string/jumbo v0, "vttc"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_vttc:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->builder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    return-void
.end method

.method private static parseVttCueBox(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;I)Lorg/telegram/messenger/exoplayer/text/Cue;
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->reset()V

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    const/16 v0, 0x8

    if-ge p2, v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Incomplete vtt cue box header found."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v2, p2, -0x8

    add-int/lit8 v0, v0, -0x8

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    sub-int p2, v2, v0

    sget v0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_sttg:I

    if-ne v1, v0, :cond_2

    invoke-static {v3, p1}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;)V

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_payl:I

    if-ne v1, v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->build()Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "application/x-mp4vtt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BII)Lorg/telegram/messenger/exoplayer/text/Subtitle;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->parse([BII)Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public parse([BII)Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttSubtitle;
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    add-int v1, p2, p3

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_vttc:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->builder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    add-int/lit8 v1, v1, -0x8

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->parseVttCueBox(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;I)Lorg/telegram/messenger/exoplayer/text/Cue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttSubtitle;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/text/webvtt/Mp4WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method
