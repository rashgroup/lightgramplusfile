.class Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;
.super Ljava/lang/Object;
.source "FragmentedMp4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1Mdat"
.end annotation


# instance fields
.field parent:Lcom/coremedia/iso/boxes/Container;

.field size_:J

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

.field private final synthetic val$endSample:J

.field private final synthetic val$i:I

.field private final synthetic val$startSample:J

.field private final synthetic val$track:Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;JJLcom/googlecode/mp4parser/authoring/Track;I)V
    .locals 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    iput-wide p4, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    iput-object p6, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    iput p7, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->size_:J

    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    iget v7, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Sample;

    invoke-interface {v0, p1}, Lcom/googlecode/mp4parser/authoring/Sample;->writeTo(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0
.end method

.method public getOffset()J
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Doesn\'t have any meaning for programmatically created boxes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getSize()J
    .locals 10

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->size_:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->size_:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v8, 0x8

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    iget v7, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v8

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide v2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->size_:J

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Sample;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Sample;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mdat"

    return-object v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0

    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->parent:Lcom/coremedia/iso/boxes/Container;

    return-void
.end method
