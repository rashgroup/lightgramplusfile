.class public Lcom/coremedia/iso/boxes/MetaBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MetaBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "meta"


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "meta"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/MetaBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/MetaBox;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    return v0
.end method

.method public getSize()J
    .locals 7

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->getContainerSize()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long v4, v0, v2

    iget-boolean v6, p0, Lcom/coremedia/iso/boxes/MetaBox;->largeBox:Z

    if-nez v6, :cond_0

    add-long/2addr v0, v2

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v4

    return-wide v0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    return v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/MetaBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const-wide/16 v0, 0x4

    sub-long v0, p3, v0

    invoke-virtual {p0, p1, v0, v1, p5}, Lcom/coremedia/iso/boxes/MetaBox;->initContainer(Lcom/googlecode/mp4parser/DataSource;JLcom/coremedia/iso/BoxParser;)V

    return-void
.end method

.method protected final parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
    .locals 2

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    return-void
.end method

.method protected final writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    return-void
.end method
