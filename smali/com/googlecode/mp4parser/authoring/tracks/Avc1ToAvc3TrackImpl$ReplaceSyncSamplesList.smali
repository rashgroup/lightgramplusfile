.class Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;
.super Ljava/util/AbstractList;
.source "Avc1ToAvc3TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplaceSyncSamplesList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/googlecode/mp4parser/authoring/Sample;",
        ">;"
    }
.end annotation


# instance fields
.field parentSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->parentSamples:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1(Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;)Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/googlecode/mp4parser/authoring/Sample;
    .locals 4

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;->getSyncSamples()[J

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl;->avcC:Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->getLengthSizeMinusOne()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->parentSamples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Sample;

    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList$1;

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList$1;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;Ljava/nio/ByteBuffer;ILcom/googlecode/mp4parser/authoring/Sample;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->parentSamples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Sample;

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->get(I)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Avc1ToAvc3TrackImpl$ReplaceSyncSamplesList;->parentSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
