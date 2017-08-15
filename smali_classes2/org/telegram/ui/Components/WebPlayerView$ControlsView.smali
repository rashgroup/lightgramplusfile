.class Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
.super Landroid/widget/FrameLayout;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlsView"
.end annotation


# instance fields
.field private bufferedPercentage:I

.field private bufferedPosition:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private currentProgressX:I

.field private duration:I

.field private durationLayout:Landroid/text/StaticLayout;

.field private durationWidth:I

.field private hideRunnable:Ljava/lang/Runnable;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isVisible:Z

.field private lastProgressX:I

.field private progress:I

.field private progressBufferedPaint:Landroid/graphics/Paint;

.field private progressInnerPaint:Landroid/graphics/Paint;

.field private progressLayout:Landroid/text/StaticLayout;

.field private progressPaint:Landroid/graphics/Paint;

.field private progressPressed:Z

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setWillNotDraw(Z)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    const v1, -0xe65818

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    const v1, -0x6a6e69

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method

.method private checkNeedHide()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v1, 0x6

    const/high16 v12, 0x40e00000    # 7.0f

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/high16 v13, 0x40400000    # 3.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4700(Lorg/telegram/ui/Components/WebPlayerView;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4702(Lorg/telegram/ui/Components/WebPlayerView;J)J

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F
    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v2

    long-to-float v3, v4

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4602(Lorg/telegram/ui/Components/WebPlayerView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F
    invoke-static {v0, v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$4602(Lorg/telegram/ui/Components/WebPlayerView;F)F

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F
    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredHeight()I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1d

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v5, v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_1
    add-int/lit8 v1, v1, 0x1d

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v5, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v1, v5, v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v5, v0

    move v6, v0

    move v7, v2

    move v8, v9

    move v10, v1

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_5

    int-to-float v1, v8

    int-to-float v2, v10

    int-to-float v3, v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    move v11, v0

    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPercentage:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v0, :cond_7

    sub-int v0, v7, v8

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    div-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPosition:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v8

    if-ge v11, v0, :cond_6

    sub-int v9, v0, v11

    :cond_6
    sub-int v1, v0, v9

    int-to-float v1, v1

    int-to-float v2, v10

    int-to-float v3, v0

    sub-int v0, v7, v0

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPercentage:I

    mul-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    :goto_4
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    int-to-float v1, v8

    int-to-float v2, v10

    int-to-float v3, v11

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_8

    int-to-float v1, v11

    int-to-float v2, v6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v0, :cond_f

    move v0, v12

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    return-void

    :cond_9
    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/high16 v0, 0x41e80000    # 29.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v4, v5, v0

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    add-int v3, v0, v1

    const/high16 v0, 0x42980000    # 76.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v2, v0

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int v1, v0, v1

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v5, v0

    move v6, v0

    move v7, v1

    move v8, v3

    move v10, v4

    goto/16 :goto_2

    :cond_c
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v1, v5, v0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v5, v0

    move v6, v0

    move v7, v2

    move v8, v9

    move v10, v1

    goto/16 :goto_2

    :cond_d
    sub-int v0, v7, v8

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v8

    move v11, v0

    goto/16 :goto_3

    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    goto/16 :goto_4

    :cond_f
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, 0x0

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    add-int v2, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredHeight()I

    move-result v0

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v4, :cond_3

    sub-int v4, v1, v2

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_1
    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v4, v3

    if-lt v1, v3, :cond_0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    if-lt v2, v3, :cond_0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    if-gt v2, v0, :cond_0

    iput-boolean v7, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    iput v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    :cond_0
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v7

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v7, v7}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v7, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    if-ge v0, v2, :cond_a

    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    :cond_9
    :goto_4
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setProgress(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    goto/16 :goto_3

    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    if-le v0, v1, :cond_9

    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    goto :goto_4
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method

.method public setBufferedProgress(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPosition:I

    iput p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPercentage:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    return-void
.end method

.method public setDuration(I)V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eq v0, p1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 10

    const-wide/16 v8, 0x96

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [F

    aput v6, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$2;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [F

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$3;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setAlpha(F)V

    goto :goto_1
.end method
