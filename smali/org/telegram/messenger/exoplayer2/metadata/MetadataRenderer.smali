.class public final Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private final metadataDecoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

.field private final output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

.field private final outputHandler:Landroid/os/Handler;

.field private pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

.field private pendingMetadataTimestamp:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;)V
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private invokeRenderer(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return-void
.end method

.method public render(JJ)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamp:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRenderer(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamp:J

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;->canDecode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
