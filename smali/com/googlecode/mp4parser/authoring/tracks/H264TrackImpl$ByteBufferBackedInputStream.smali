.class public Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;
.super Ljava/io/InputStream;
.source "H264TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ByteBufferBackedInputStream"
.end annotation


# instance fields
.field private final buf:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/nio/ByteBuffer;)V
    .locals 1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ByteBufferBackedInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
