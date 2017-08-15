.class public Lorg/telegram/ui/Components/PlayingGameDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlayingGameDrawable.java"


# instance fields
.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isChat:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    iput-boolean v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PlayingGameDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->checkUpdate()V

    return-void
.end method

.method private checkUpdate()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->update()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/PlayingGameDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PlayingGameDrawable$1;-><init>(Lorg/telegram/ui/Components/PlayingGameDrawable;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private update()V
    .locals 7

    const-wide/16 v0, 0x10

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    sub-long v2, v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    long-to-float v0, v0

    const/high16 v1, 0x43960000    # 300.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    iput v6, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->invalidateSelf()V

    return-void

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v5, 0x420c0000    # 35.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/16 v10, 0xff

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    if-eqz v1, :cond_0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "actionBarDefaultSubtitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v7

    add-int v4, v6, v7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    div-float/2addr v0, v8

    sub-float v0, v9, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v2, v1

    const v3, 0x41133333    # 9.2f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v8

    float-to-int v4, v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    div-int/lit8 v3, v7, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    move v6, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    sub-float/2addr v0, v8

    mul-float/2addr v0, v5

    div-float/2addr v0, v8

    float-to-int v0, v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    sub-float/2addr v5, v8

    div-float/2addr v5, v8

    sub-float v5, v9, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    int-to-float v2, v0

    mul-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0x168

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "actionBarDefault"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-int/lit8 v1, v7, 0x2

    add-int/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->checkUpdate()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIsChat(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    return-void
.end method
