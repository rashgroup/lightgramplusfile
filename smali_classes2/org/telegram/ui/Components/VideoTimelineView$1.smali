.class Lorg/telegram/ui/Components/VideoTimelineView$1;
.super Landroid/os/AsyncTask;
.source "VideoTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private frameNum:I

.field final synthetic this$0:Lorg/telegram/ui/Components/VideoTimelineView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/VideoTimelineView;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J
    invoke-static {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J

    move-result-wide v2

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I
    invoke-static {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I
    invoke-static {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I
    invoke-static {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I
    invoke-static {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    cmpl-float v5, v2, v3

    if-lez v5, :cond_2

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I
    invoke-static {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I
    invoke-static {v8}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v8

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v5, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView$1;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    # getter for: Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I
    invoke-static {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    add-int/lit8 v1, v1, 0x1

    # invokes: Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
