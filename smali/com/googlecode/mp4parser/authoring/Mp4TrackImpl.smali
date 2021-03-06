.class public Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "Mp4TrackImpl.java"


# instance fields
.field private compositionTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private decodingTimes:[J

.field fragments:[Lcom/coremedia/iso/IsoFile;

.field private handler:Ljava/lang/String;

.field private sampleDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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

.field private subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

.field private syncSamples:[J

.field trackBox:Lcom/coremedia/iso/boxes/TrackBox;

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V
    .locals 28

    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [J

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    new-instance v4, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v12

    new-instance v4, Lcom/coremedia/iso/boxes/mdat/SampleList;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/coremedia/iso/boxes/mdat/SampleList;-><init>(Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/MediaBox;->getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->getEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->getEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SyncSampleBox;->getSampleNumber()[J

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    :cond_2
    const-string/jumbo v4, "subs"

    invoke-static {v5, v4}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v4}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v4

    const-class v6, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-interface {v4, v6}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p3

    array-length v6, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_6

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v4

    const-class v6, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface {v4, v6}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1e

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1c

    :goto_1
    invoke-static {v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimes:[J

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTrackId(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getCreationTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getModificationTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getLayer()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLayer(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    const-string/jumbo v4, "edts/elst"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/EditListBox;

    const-string/jumbo v5, "../mvhd"

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/EditListBox;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_5
    return-void

    :cond_6
    aget-object v7, p3, v4

    const-class v8, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v7, v8}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    const-class v5, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-nez v5, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v5}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v5

    const-string/jumbo v6, "/moof/traf/subs"

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    new-instance v5, Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    :cond_9
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    const-wide/16 v6, 0x1

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    array-length v5, v5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-array v5, v5, [J

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    array-length v4, v4

    move v5, v4

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v8, v5

    move v5, v6

    goto :goto_4

    :cond_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    const-class v8, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v5, v8}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-wide v8, v6

    :cond_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_c

    move-wide v6, v8

    goto :goto_3

    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-nez v6, :cond_b

    const-string/jumbo v6, "subs"

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    if-eqz v6, :cond_d

    move/from16 v0, v16

    int-to-long v10, v0

    sub-long v10, v8, v10

    const-wide/16 v22, 0x1

    sub-long v10, v10, v22

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_13

    :cond_d
    const-class v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v22

    const/4 v6, 0x1

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move v10, v6

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v24

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v26

    cmp-long v7, v24, v26

    if-eqz v7, :cond_15

    :cond_f
    new-instance v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v24, 0x1

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v26

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v7

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v24, v0

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()J

    move-result-wide v26

    cmp-long v7, v24, v26

    if-eqz v7, :cond_18

    :cond_10
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    new-instance v24, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/16 v25, 0x1

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v26

    invoke-direct/range {v24 .. v26}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_8
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v6

    :goto_9
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->isSampleIsDifferenceSample()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    const/4 v6, 0x0

    move v10, v6

    goto/16 :goto_6

    :cond_13
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;

    new-instance v23, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;

    invoke-direct/range {v23 .. v23}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->getSubsampleEntries()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->getSubsampleEntries()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide/16 v24, 0x0

    cmp-long v7, v10, v24

    if-eqz v7, :cond_14

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->getSampleDelta()J

    move-result-wide v6

    add-long/2addr v6, v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->setSampleDelta(J)V

    const-wide/16 v6, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getEntries()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v10, v6

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->getSampleDelta()J

    move-result-wide v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->setSampleDelta(J)V

    move-wide v6, v10

    goto :goto_a

    :cond_15
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto/16 :goto_7

    :cond_16
    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleDuration()Z

    move-result v7

    if-eqz v7, :cond_17

    new-instance v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v24, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleDuration()J

    move-result-wide v26

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_17
    new-instance v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v24, 0x1

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleDuration()J

    move-result-wide v26

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto/16 :goto_8

    :cond_19
    if-eqz v10, :cond_1a

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v6

    goto/16 :goto_9

    :cond_1a
    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleFlags()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v6

    goto/16 :goto_9

    :cond_1b
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v6

    goto/16 :goto_9

    :cond_1c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    const-class v6, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v4, v6}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1d
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-nez v7, :cond_1d

    const-string/jumbo v7, "sgpd"

    invoke-static {v4, v7}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "sbgp"

    invoke-static {v4, v8}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleGroups:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v8}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getSampleGroups(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleGroups:Ljava/util/Map;

    goto :goto_b

    :cond_1e
    const-class v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;

    invoke-virtual {v5, v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    const-class v6, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;

    invoke-virtual {v5, v6}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleGroups:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getSampleGroups(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleGroups:Ljava/util/Map;

    goto/16 :goto_1

    :cond_1f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/EditListBox$Entry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->edits:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v5, Lcom/googlecode/mp4parser/authoring/Edit;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/EditListBox$Entry;->getMediaTime()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/EditListBox$Entry;->getMediaRate()D

    move-result-wide v10

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/EditListBox$Entry;->getSegmentDuration()J

    move-result-wide v12

    long-to-double v12, v12

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getTimescale()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v12, v12, v18

    invoke-direct/range {v5 .. v13}, Lcom/googlecode/mp4parser/authoring/Edit;-><init>(JJDD)V

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private getSampleGroups(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;",
            "[J>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;",
            "[J>;"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p3

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;

    const/4 v3, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v3

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not find SampleToGroupBox for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getGroupEntries()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getGroupingType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getGroupEntries()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v4

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    move v5, v6

    goto :goto_0

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getGroupDescriptionIndex()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getGroupEntries()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getGroupDescriptionIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    if-nez v5, :cond_5

    const/4 v5, 0x0

    new-array v5, v5, [J

    :cond_5
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getSampleCount()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    array-length v12, v5

    add-int/2addr v8, v12

    new-array v12, v8, [J

    const/4 v8, 0x0

    const/4 v13, 0x0

    array-length v14, v5

    invoke-static {v5, v8, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    :goto_2
    int-to-long v14, v8

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getSampleCount()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-ltz v13, :cond_7

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    int-to-long v4, v7

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getSampleCount()J

    move-result-wide v12

    add-long/2addr v4, v12

    long-to-int v3, v4

    move v7, v3

    goto :goto_1

    :cond_7
    array-length v13, v5

    add-int/2addr v13, v8

    add-int v14, v7, v8

    int-to-long v14, v14

    aput-wide v14, v12, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v0

    instance-of v1, v0, Lcom/googlecode/mp4parser/BasicContainer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/googlecode/mp4parser/BasicContainer;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/BasicContainer;->close()V

    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->fragments:[Lcom/coremedia/iso/IsoFile;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public declared-synchronized getSampleDurations()[J
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    array-length v0, v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    goto :goto_0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
