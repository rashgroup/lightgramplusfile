.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final FLAG_SIDELOADED:I = 0x4

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


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

.field private currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private final encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private endOfMdatPosition:J

.field private final extendedTypeScratch:[B

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

.field private final timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    const-string/jumbo v0, "seig"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V
    .locals 4

    const/16 v3, 0x10

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v4, :cond_0

    iget-object v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    :goto_0
    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    iget-object v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v2, v0, v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    if-eqz v2, :cond_1

    const/16 v0, 0x80

    :goto_1
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    invoke-interface {v0, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    if-nez v2, :cond_2

    add-int/lit8 v0, v4, 0x1

    :goto_2
    return v0

    :cond_0
    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v4, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    add-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    move-object v1, v2

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-ne v5, v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v0, "FragmentedMp4Extractor"

    const-string/jumbo v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    new-instance v6, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo v7, "video/mp4"

    invoke-direct {v6, v5, v7, v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private static getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v4, v5, :cond_0

    move-wide v9, v2

    move-object v2, v1

    move-wide v0, v9

    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-wide v9, v0

    move-object v1, v2

    move-wide v2, v9

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v4, v4, v5

    cmp-long v8, v4, v2

    if-gez v8, :cond_2

    move-object v2, v0

    move-wide v0, v4

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    move-wide v9, v2

    move-object v2, v1

    move-wide v0, v9

    goto :goto_1
.end method

.method private onContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2

    iget v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0
.end method

.method private onLeafAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0
.end method

.method private onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    const-string/jumbo v1, "Unexpected moov box."

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v7

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move v1, v5

    :goto_1
    if-ge v1, v9, :cond_3

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    if-ne v10, v11, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v10

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    if-ne v10, v11, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v2

    goto :goto_2

    :cond_3
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    move v7, v5

    :goto_3
    if-ge v7, v10, :cond_5

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-ne v1, v11, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;JLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v9, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_7

    move v1, v5

    :goto_4
    if-ge v1, v3, :cond_6

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v7, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    :goto_5
    if-ge v5, v3, :cond_9

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v3, :cond_8

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_5

    :cond_8
    move v6, v5

    goto :goto_6

    :cond_9
    return-void
.end method

.method private static parseMehd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static parseMoof(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    if-ne v3, v4, :cond_0

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseSaio(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-eq v1, v2, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected saio entry count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static parseSaiz(Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 9

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iget v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-eq v6, v3, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Length mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_3

    iget-object v7, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    add-int v4, v0, v8

    if-le v8, v5, :cond_2

    move v0, v1

    :goto_1
    aput-boolean v0, v7, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-le v0, v5, :cond_5

    :goto_2
    mul-int/2addr v0, v6

    add-int/2addr v0, v2

    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v2, v6, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_4
    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    return-void

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-eq v2, v3, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Length mismatch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    return-void
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static parseSgpd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 9

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    if-eq v0, v1, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-ne v3, v4, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-lt v0, v8, :cond_5

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v4, 0x10

    new-array v4, v4, [B

    array-length v5, v4

    invoke-virtual {p1, v4, v2, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iput-boolean v1, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v1, v0, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    iput-object v1, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private static parseSidx(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;
    .locals 23

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    add-long v4, v4, p1

    move-wide v10, v4

    move-wide v4, v6

    :goto_0
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v18, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    const/4 v6, 0x0

    move-wide v14, v10

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    const/high16 v12, -0x80000000

    and-int/2addr v12, v11

    if-eqz v12, :cond_1

    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v5, "Unhandled indirect reference"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    add-long v4, v4, p1

    move-wide v10, v4

    move-wide v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    const v21, 0x7fffffff

    and-int v11, v11, v21

    aput v11, v17, v10

    aput-wide v14, v18, v10

    aput-wide v4, v20, v10

    add-long v4, v6, v12

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    aget-wide v6, v20, v10

    sub-long v6, v12, v6

    aput-wide v6, v19, v10

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    aget v6, v17, v10

    int-to-long v6, v6

    add-long/2addr v14, v6

    add-int/lit8 v6, v10, 0x1

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    goto :goto_1

    :cond_2
    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v4
.end method

.method private static parseTfdt(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static parseTfhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    :cond_2
    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_2
    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    move v3, v1

    :goto_3
    and-int/lit8 v1, v5, 0x10

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    move v2, v1

    :goto_4
    and-int/lit8 v1, v5, 0x20

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    :goto_5
    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v4, v3, v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v6, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    goto :goto_1

    :cond_3
    iget v1, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move v4, v1

    goto :goto_2

    :cond_4
    iget v1, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    move v3, v1

    goto :goto_3

    :cond_5
    iget v1, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    move v2, v1

    goto :goto_4

    :cond_6
    iget v1, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_5
.end method

.method private static parseTraf(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-wide v0, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_2

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v0

    :cond_2
    invoke-static {p0, v2, v0, v1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v2, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    aget-object v1, v1, v2

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    :cond_3
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    :cond_4
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    :cond_5
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSgpd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    if-ne v4, v5, :cond_7

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, v3, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;[B)V

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static parseTrex(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v5, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseTrun(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I
    .locals 28

    const/16 v2, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    aput v4, v2, p1

    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v4, v2, p1

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_0

    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v4, v2, p1

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, p1

    :cond_0
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v8, v2

    :goto_0
    move-object/from16 v0, v21

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v8, :cond_1

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    :cond_1
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move/from16 v19, v2

    :goto_1
    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move/from16 v18, v2

    :goto_2
    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move/from16 v17, v2

    :goto_3
    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move v9, v2

    :goto_4
    const-wide/16 v2, 0x0

    iget-object v4, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_11

    iget-object v4, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    iget-object v4, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    iget-object v2, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x3e8

    iget-wide v6, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    move-wide v10, v2

    :goto_5
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v25, v0

    iget v2, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v12, v2

    :goto_6
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    aget v2, v2, p1

    add-int v26, p6, v2

    iget-wide v6, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    if-lez p1, :cond_2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move-wide/from16 p2, v0

    :cond_2
    move-wide/from16 v2, p2

    :goto_7
    move/from16 v0, p6

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    if-eqz v19, :cond_a

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    move/from16 v16, v4

    :goto_8
    if-eqz v18, :cond_b

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    move v15, v4

    :goto_9
    if-nez p6, :cond_c

    if-eqz v8, :cond_c

    move v13, v14

    :goto_a
    if-eqz v9, :cond_e

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v23, p6

    :goto_b
    const-wide/16 v4, 0x3e8

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v24, p6

    aput v15, v22, p6

    shr-int/lit8 v4, v13, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_f

    if-eqz v12, :cond_3

    if-nez p6, :cond_f

    :cond_3
    const/4 v4, 0x1

    :goto_c
    aput-boolean v4, v25, p6

    move/from16 v0, v16

    int-to-long v4, v0

    add-long/2addr v2, v4

    add-int/lit8 p6, p6, 0x1

    goto :goto_7

    :cond_4
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_4

    :cond_9
    const/4 v2, 0x0

    move v12, v2

    goto :goto_6

    :cond_a
    move-object/from16 v0, v21

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v16, v4

    goto :goto_8

    :cond_b
    move-object/from16 v0, v21

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    move v15, v4

    goto :goto_9

    :cond_c
    if-eqz v17, :cond_d

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    move v13, v4

    goto :goto_a

    :cond_d
    move-object/from16 v0, v21

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    move v13, v4

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    aput v4, v23, p6

    goto :goto_b

    :cond_f
    const/4 v4, 0x0

    goto :goto_c

    :cond_10
    move-object/from16 v0, v20

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    return v26

    :cond_11
    move-wide v10, v2

    goto/16 :goto_5
.end method

.method private static parseTruns(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V
    .locals 12

    const/4 v3, 0x0

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v4, v3

    move v1, v3

    move v2, v3

    :goto_0
    if-ge v4, v10, :cond_0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-ne v5, v6, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-lez v0, :cond_3

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iput v3, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iput v3, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iput v3, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initTables(II)V

    move v8, v3

    move v6, v3

    move v1, v3

    :goto_2
    if-ge v8, v10, :cond_2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-ne v2, v3, :cond_1

    add-int/lit8 v7, v1, 0x1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object v0, p1

    move-wide v2, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v6

    move v1, v7

    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private static parseUuid(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;[B)V
    .locals 2

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private processAtomEnded(J)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 12

    const-wide/32 v10, 0x7fffffff

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v1, v8, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v8, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->atomPosition:J

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdat:I

    if-ne v0, v3, :cond_5

    iput-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    move v0, v2

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v4, v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    :goto_2
    move v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    :cond_7
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-eq v0, v8, :cond_8

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v4, v10

    if-lez v0, :cond_9

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    :cond_a
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_b

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V

    :goto_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    return-void

    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 10

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide v8, v0

    move-object v1, v2

    move-wide v2, v8

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    :goto_2
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-gez v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Offset to encryption data was negative."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iget-object v0, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_2

    :cond_3
    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 14

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v13, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    if-ne v0, v13, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v1

    if-nez v1, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-gez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Offset to end of mdat was negative."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    :goto_0
    return v6

    :cond_1
    iget-object v0, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v2, v0, v2

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v0, v4

    if-gez v0, :cond_2

    iget-object v0, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->atomPosition:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-string/jumbo v0, "FragmentedMp4Extractor"

    const-string/jumbo v2, "Offset to sample data was missing."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :cond_2
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v0, v8, :cond_4

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_4
    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v0, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aput-byte v6, v0, v6

    aput-byte v6, v0, v8

    const/4 v4, 0x2

    aput-byte v6, v0, v4

    iget v0, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iget v4, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v4, v4, 0x4

    :goto_2
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v5, v7, :cond_a

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v5, :cond_8

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v4, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v5, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Offset to sample data was negative."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_1

    :cond_8
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v1, p1, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v5

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v7, v5

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v5, v7, v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    :cond_9
    :goto_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v0, v4, :cond_a

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v0, v4

    invoke-interface {v1, p1, v0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v0

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_3

    :cond_a
    invoke-virtual {v12, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v4

    iget-boolean v0, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v0, :cond_c

    const/high16 v0, 0x40000000    # 2.0f

    :goto_4
    iget-object v4, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v2, v4, v2

    if-eqz v2, :cond_d

    move v2, v8

    :goto_5
    or-int v4, v0, v2

    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iget-boolean v2, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v2, :cond_10

    iget-object v2, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v2, :cond_e

    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->keyId:[B

    :goto_6
    move-object v7, v0

    :goto_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v2

    :goto_8
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v1, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iput v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iput-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_b
    iput v13, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    move v6, v8

    goto/16 :goto_0

    :cond_c
    move v0, v6

    goto :goto_4

    :cond_d
    move v2, v6

    goto :goto_5

    :cond_e
    iget-object v2, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v2, v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->keyId:[B

    goto :goto_6

    :cond_f
    move-wide v2, v10

    goto :goto_8

    :cond_10
    move-object v7, v9

    goto :goto_7
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

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

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

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

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
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-interface {p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v2, v3, v3, v3, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    :cond_0
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 1

    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    nop

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
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Sniffer;->sniffFragmented(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
