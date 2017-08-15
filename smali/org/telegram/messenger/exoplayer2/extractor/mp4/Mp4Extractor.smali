.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field private static final BRAND_QUICKTIME:I

.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_AFTER_SEEK:I = 0x0

.field private static final STATE_READING_ATOM_HEADER:I = 0x1

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3


# instance fields
.field private atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private isQuickTime:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    const-string/jumbo v0, "qt  "

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .locals 7

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v4, v0

    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v6, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v4, v4, v5

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    move-wide v2, v4

    move v1, v0

    goto :goto_1

    :cond_2
    return v1
.end method

.method private processAtomEnded(J)V
    .locals 5

    const/4 v3, 0x3

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v0, v3, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_3
    return-void
.end method

.method private static processFtypAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processMoovAtom(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 14

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    new-instance v13, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v13}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v13, v0}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Z

    :cond_0
    move-object v6, v0

    :goto_0
    const/4 v0, 0x0

    move v7, v0

    move-wide v8, v2

    move-wide v10, v4

    :goto_1
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq v1, v2, :cond_1

    move-wide v2, v8

    move-wide v4, v10

    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-wide v8, v2

    move-wide v10, v4

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;JLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-result-object v1

    if-nez v1, :cond_2

    move-wide v2, v8

    move-wide v4, v10

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v1, v0, v13}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v2

    iget v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v0, :cond_3

    move-wide v2, v8

    move-wide v4, v10

    goto :goto_2

    :cond_3
    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    iget v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v0, v0, 0x1e

    iget-object v4, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithMaxInputSize(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    iget v4, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    invoke-virtual {v13}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v13, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    iget v5, v13, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithGaplessInfo(II)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    :cond_5
    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    iget-wide v0, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, v2, v8

    if-gez v0, :cond_7

    move-wide v4, v10

    goto :goto_2

    :cond_6
    iput-wide v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    return-void

    :cond_7
    move-wide v2, v8

    move-wide v4, v10

    goto/16 :goto_2

    :cond_8
    move-object v6, v0

    goto/16 :goto_0
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v8, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v8, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v8, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iput v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v4, v4

    invoke-interface {p1, v0, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move v0, v1

    :goto_0
    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    :goto_1
    return v2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-wide/32 v8, 0x40000

    cmp-long v0, v4, v8

    if-gez v0, :cond_2

    long-to-int v0, v4

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    add-long/2addr v4, v8

    iput-wide v4, p2, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 12

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfEarliestCurrentSample()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v8, v1, v0

    iget-object v1, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget v4, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v0, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v0, v4

    iget-object v0, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v0, v0, v4

    iget-object v5, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, -0x8

    :cond_1
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v10, v5

    add-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-ltz v5, :cond_2

    const-wide/32 v10, 0x40000

    cmp-long v5, v6, v10

    if-ltz v5, :cond_3

    :cond_2
    iput-wide v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    long-to-int v2, v6

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iget-object v2, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    iget-object v2, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iget-object v3, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v3, v3, 0x4

    :goto_1
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v5, v0, :cond_5

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-interface {v1, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v0, v3

    goto :goto_1

    :cond_4
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v6, 0x0

    invoke-interface {v1, p1, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v5, v6, v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_2
    iget-object v0, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v0, v4

    iget-object v0, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v4, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget v0, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    :goto_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v0, :cond_7

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v2, v3, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_3

    :cond_7
    move v5, v0

    goto :goto_2
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 9

    const-wide v2, 0x7fffffffffffffffL

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    iget-object v7, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-virtual {v7, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    invoke-virtual {v7, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    :cond_0
    iput v0, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v1, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v0, v1, v0

    cmp-long v7, v0, v2

    if-gez v7, :cond_2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 4

    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(J)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
