.class public Lorg/telegram/ui/Components/VideoTimelineView;
.super Landroid/view/View;
.source "VideoTimelineView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;
    }
.end annotation


# static fields
.field private static final sync:Ljava/lang/Object;


# instance fields
.field private currentTask:Landroid/os/AsyncTask;
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
.end field

.field private delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private framesToLoad:I

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/VideoTimelineView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelineView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public clearFrames()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method public getLeftProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    const/high16 v12, 0x42300000    # 44.0f

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v6, v1, v2

    int-to-float v1, v6

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v7, v1, v2

    int-to-float v1, v6

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v8, v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    :cond_0
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, v7

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v1, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v1, v0

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    int-to-float v0, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v6, v0, v1

    int-to-float v0, v6

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v6

    iget v7, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v7, v1, v6

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_1

    add-int v7, v1, v6

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_1

    cmpl-float v7, v5, v9

    if-ltz v7, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_1

    iput-boolean v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    int-to-float v0, v1

    sub-float v0, v4, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v0, v3

    goto :goto_0

    :cond_1
    sub-int v1, v0, v6

    int-to-float v1, v1

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_f

    add-int v1, v0, v6

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_f

    cmpl-float v1, v5, v9

    if-ltz v1, :cond_f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_f

    iput-boolean v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    int-to-float v0, v0

    sub-float v0, v4, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v0, v3

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    move v0, v3

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz v0, :cond_f

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    move v0, v3

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_f

    iget-boolean v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz v5, :cond_a

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float v1, v4, v1

    float-to-int v1, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :cond_6
    :goto_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v6

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v0, v3

    goto/16 :goto_0

    :cond_9
    if-gt v1, v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float v0, v4, v0

    float-to-int v0, v0

    if-ge v0, v1, :cond_e

    move v0, v1

    :cond_b
    :goto_2
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v6

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onRifhtProgressChanged(F)V

    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v0, v3

    goto/16 :goto_0

    :cond_e
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v6

    if-le v0, v1, :cond_b

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v6

    goto :goto_2

    :cond_f
    move v0, v2

    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
