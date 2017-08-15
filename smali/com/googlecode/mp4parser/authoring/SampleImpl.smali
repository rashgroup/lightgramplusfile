.class public Lcom/googlecode/mp4parser/authoring/SampleImpl;
.super Ljava/lang/Object;
.source "SampleImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Sample;


# instance fields
.field private data:[Ljava/nio/ByteBuffer;

.field private final offset:J

.field private final parent:Lcom/coremedia/iso/boxes/Container;

.field private final size:J


# direct methods
.method public constructor <init>(JJLcom/coremedia/iso/boxes/Container;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->offset:J

    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->size:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->data:[Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->parent:Lcom/coremedia/iso/boxes/Container;

    return-void
.end method

.method public constructor <init>(JJLjava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->offset:J

    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->size:J

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->data:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->parent:Lcom/coremedia/iso/boxes/Container;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->offset:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->size:J

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->data:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->parent:Lcom/coremedia/iso/boxes/Container;

    return-void
.end method

.method public constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->offset:J

    array-length v2, p1

    move v1, v0

    :goto_0
    if-lt v0, v2, :cond_0

    int-to-long v0, v1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->size:J

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->data:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->parent:Lcom/coremedia/iso/boxes/Container;

    return-void

    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/SampleImpl;->ensureData()V

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->size:J

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->data:[Ljava/nio/ByteBuffer;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected ensureData()V
    .locals 8

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->data:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->parent:Lcom/coremedia/iso/boxes/Container;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Missing parent container, can\'t read sample "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->parent:Lcom/coremedia/iso/boxes/Container;

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->offset:J

    iget-wide v6, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->size:J

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->data:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "couldn\'t read sample "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SampleImpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/channels/WritableByteChannel;)V
    .locals 4

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/SampleImpl;->ensureData()V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/SampleImpl;->data:[Ljava/nio/ByteBuffer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
