.class public Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;
.super Ljava/lang/Object;
.source "TwoSecondIntersectionFinder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# instance fields
.field private fragmentLength:I

.field private movie:Lcom/googlecode/mp4parser/authoring/Movie;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Movie;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    iput p2, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    return-void
.end method


# virtual methods
.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;)[J
    .locals 15

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-array v6, v0, [J

    const-wide/16 v0, -0x1

    invoke-static {v6, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    aput-wide v2, v6, v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move-wide v4, v2

    :goto_1
    if-lt v0, v8, :cond_4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    int-to-long v2, v0

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-gez v0, :cond_5

    const/4 v0, 0x0

    new-array v1, v0, [J

    array-length v2, v6

    const/4 v0, 0x0

    move v14, v0

    move-object v0, v1

    move v1, v14

    :goto_3
    if-lt v1, v2, :cond_7

    return-object v0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getDuration()J

    move-result-wide v6

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v0

    div-long v0, v6, v0

    long-to-double v0, v0

    cmpg-double v5, v2, v0

    if-gez v5, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_4
    aget-wide v10, v7, v0

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v2

    div-long v2, v4, v2

    iget v9, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    int-to-long v12, v9

    div-long/2addr v2, v12

    long-to-int v2, v2

    add-int/lit8 v3, v2, 0x1

    array-length v2, v6

    if-ge v3, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-long v12, v1

    aput-wide v12, v6, v3

    add-long/2addr v4, v10

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_5
    aget-wide v4, v6, v0

    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-nez v1, :cond_6

    aput-wide v2, v6, v0

    :cond_6
    aget-wide v2, v6, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    aget-wide v4, v6, v1

    array-length v3, v0

    if-eqz v3, :cond_8

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-wide v8, v0, v3

    cmp-long v3, v8, v4

    if-eqz v3, :cond_9

    :cond_8
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-wide v4, v0, v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
