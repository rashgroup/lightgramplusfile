.class public Lorg/telegram/messenger/video/MP4Builder;
.super Ljava/lang/Object;
.source "MP4Builder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;
    }
.end annotation


# instance fields
.field private currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

.field private dataOffset:J

.field private fc:Ljava/nio/channels/FileChannel;

.field private fos:Ljava/io/FileOutputStream;

.field private mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

.field private sizeBuffer:Ljava/nio/ByteBuffer;

.field private track2SampleSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/telegram/messenger/video/Track;",
            "[J>;"
        }
    .end annotation
.end field

.field private writeNewMdat:Z

.field private writedSinceLastMdat:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private flushCurrentMdat()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getOffset()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    return-void
.end method

.method public static gcd(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    rem-long v0, p0, p2

    invoke-static {p2, p3, v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->gcd(JJ)J

    move-result-wide p0

    goto :goto_0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;Z)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/video/Mp4Movie;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v0

    return v0
.end method

.method protected createCtts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 7

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleCompositions()[I

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    aget v4, v2, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v4}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;-><init>()V

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->setEntries(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0
.end method

.method protected createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string/jumbo v1, "isom"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "iso2"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "avc1"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "mp41"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string/jumbo v2, "isom"

    const-wide/16 v4, 0x200

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method public createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;
    .locals 4

    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getCacheFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lorg/telegram/messenger/video/MP4Builder;->createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/FileTypeBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/FileTypeBox;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    iget-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    new-instance v0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;-><init>(Lorg/telegram/messenger/video/MP4Builder;Lorg/telegram/messenger/video/MP4Builder$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected createMovieBox(Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;
    .locals 12

    new-instance v4, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    new-instance v5, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/MP4Builder;->getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Track;->prepare()V

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v10

    mul-long/2addr v10, v6

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v10, v0

    cmp-long v9, v0, v2

    if-lez v9, :cond_2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    invoke-virtual {v5, v6, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/video/MP4Builder;->createTrackBox(Lorg/telegram/messenger/video/Track;Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_2

    :cond_1
    return-object v4

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method protected createStbl(Lorg/telegram/messenger/video/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 1

    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsd(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createCtts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStss(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsc(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsz(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStco(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    return-object v0
.end method

.method protected createStco(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 10

    const-wide/16 v4, -0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Sample;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v8

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    move-wide v2, v4

    :cond_0
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v8

    move-wide v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStsc(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 13

    new-instance v11, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v11, v0}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v12, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Sample;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v0

    add-long/2addr v4, v0

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    add-int/lit8 v0, v12, -0x1

    if-eq v10, v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Sample;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v2, v8, :cond_2

    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    int-to-long v2, v9

    int-to-long v4, v8

    const-wide/16 v6, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    :goto_2
    const/4 v8, 0x0

    add-int/lit8 v1, v9, 0x1

    :goto_3
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v9, v1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v11}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    move v1, v9

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected createStsd(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStss(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSyncSamples()[J

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V

    invoke-virtual {p2, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    :cond_0
    return-void
.end method

.method protected createStsz(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 2

    new-instance v1, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V

    invoke-virtual {p2, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 11

    const-wide/16 v8, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleDurations()[J

    move-result-object v3

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-wide v4, v3, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v0, v8, v9, v4, v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createTrackBox(Lorg/telegram/messenger/video/Track;Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v1, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    new-instance v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setEnabled(Z)V

    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInMovie(Z)V

    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInPreview(Z)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    :goto_0
    invoke-virtual {v0, v7}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(Ljava/util/Date;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/video/MP4Builder;->getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    invoke-virtual {v0, v7}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(Ljava/util/Date;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getTrackId()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v2, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    const-string/jumbo v3, "eng"

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v3, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SoundHandle"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/HandlerBox;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v3, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    new-instance v4, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v5, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    invoke-virtual {v5, v6}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/MP4Builder;->createStbl(Lorg/telegram/messenger/video/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {v2, v0}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/video/Mp4Movie;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "VideoHandle"

    goto :goto_1
.end method

.method public finishMovie(Z)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/video/MP4Builder;->flushCurrentMdat()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [J

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v1, v5

    if-ge v2, v1, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/Sample;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v6

    aput-wide v6, v5, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/MP4Builder;->createMovieBox(Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J
    .locals 5

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v0

    int-to-long v0, v0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/video/MP4Builder;->gcd(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z
    .locals 10

    const-wide/32 v8, 0x8000

    const-wide/16 v6, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    iput-boolean v1, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v4

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_4

    invoke-direct {p0}, Lorg/telegram/messenger/video/MP4Builder;->flushCurrentMdat()V

    iput-boolean v0, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    sub-long/2addr v2, v8

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v2, p1, v4, v5, p3}, Lorg/telegram/messenger/video/Mp4Movie;->addSample(IJLandroid/media/MediaCodec$BufferInfo;)V

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-nez p4, :cond_3

    move v2, v1

    :goto_1
    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz p4, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    :cond_2
    return v0

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
