.class Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;
.super Ljava/lang/Object;
.source "MP4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/MP4Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterleaveChunkMdat"
.end annotation


# instance fields
.field private contentSize:J

.field private dataOffset:J

.field private parent:Lcom/coremedia/iso/boxes/Container;

.field final synthetic this$0:Lorg/telegram/messenger/video/MP4Builder;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/video/MP4Builder;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->this$0:Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/video/MP4Builder;Lorg/telegram/messenger/video/MP4Builder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;-><init>(Lorg/telegram/messenger/video/MP4Builder;)V

    return-void
.end method

.method private isSmallBox(J)Z
    .locals 5

    const-wide/16 v0, 0x8

    add-long/2addr v0, p1

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 6

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getSize()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :goto_0
    const-string/jumbo v1, "mdat"

    invoke-static {v1}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void

    :cond_0
    const-wide/16 v4, 0x1

    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_1
.end method

.method public getContentSize()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    return-wide v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    add-long/2addr v0, v2

    return-wide v0
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

.method public setContentSize(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    return-void
.end method

.method public setDataOffset(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/Container;

    return-void
.end method
