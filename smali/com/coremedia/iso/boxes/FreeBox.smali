.class public Lcom/coremedia/iso/boxes/FreeBox;
.super Ljava/lang/Object;
.source "FreeBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TYPE:Ljava/lang/String; = "free"


# instance fields
.field data:Ljava/nio/ByteBuffer;

.field private offset:J

.field private parent:Lcom/coremedia/iso/boxes/Container;

.field replacers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/coremedia/iso/boxes/FreeBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/boxes/FreeBox;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public addAndReplace(Lcom/coremedia/iso/boxes/Box;)V
    .locals 4

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/coremedia/iso/boxes/FreeBox;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 4

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    const-string/jumbo v1, "free"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v0, p1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->offset:J

    return-wide v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .locals 1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getSize()J
    .locals 5

    const-wide/16 v0, 0x8

    iget-object v2, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "free"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 5

    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->offset:J

    const-wide/32 v0, 0x100000

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    invoke-interface {p1, v0, v1, p3, p4}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/coremedia/iso/boxes/FreeBox;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .locals 0

    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeBox;->parent:Lcom/coremedia/iso/boxes/Container;

    return-void
.end method
