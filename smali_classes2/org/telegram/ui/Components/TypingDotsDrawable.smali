.class public Lorg/telegram/ui/Components/TypingDotsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TypingDotsDrawable.java"


# instance fields
.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private elapsedTimes:[F

.field private isChat:Z

.field private lastUpdateTime:J

.field private scales:[F

.field private startTimes:[F

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    iput-boolean v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43160000    # 150.0f
        0x43960000    # 300.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/TypingDotsDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V

    return-void
.end method

.method private checkUpdate()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->update()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/TypingDotsDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TypingDotsDrawable$1;-><init>(Lorg/telegram/ui/Components/TypingDotsDrawable;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private update()V
    .locals 9

    const-wide/16 v0, 0x32

    const/4 v8, 0x0

    const/high16 v7, 0x43a00000    # 320.0f

    const v6, 0x3faa3d71    # 1.33f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    sub-long v2, v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_5

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aget v4, v3, v2

    long-to-float v5, v0

    add-float/2addr v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aget v3, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aget v4, v4, v2

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v8

    if-lez v4, :cond_3

    cmpg-float v4, v3, v7

    if-gtz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float/2addr v3, v7

    invoke-virtual {v4, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    add-float/2addr v3, v6

    aput v3, v4, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/high16 v4, 0x44200000    # 640.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float/2addr v3, v7

    div-float/2addr v3, v7

    invoke-virtual {v4, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    add-float/2addr v3, v6

    aput v3, v4, v2

    goto :goto_2

    :cond_1
    const/high16 v4, 0x44480000    # 800.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aput v8, v3, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aput v8, v3, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v6, v3, v2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v6, v3, v2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v6, v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->invalidateSelf()V

    return-void

    :cond_5
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41080000    # 8.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    :goto_0
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v3

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V

    return-void

    :cond_0
    const v0, 0x4114cccd    # 9.3f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    goto :goto_0
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

    const/high16 v0, 0x41900000    # 18.0f

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

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aput v4, v2, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const v3, 0x3faa3d71    # 1.33f

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aput v4, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    const/4 v2, 0x1

    const/high16 v3, 0x43160000    # 150.0f

    aput v3, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    const/4 v2, 0x2

    const/high16 v3, 0x43960000    # 300.0f

    aput v3, v0, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    return-void
.end method
