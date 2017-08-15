.class public Lorg/telegram/ui/Components/RecordStatusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RecordStatusDrawable.java"


# instance fields
.field private isChat:Z

.field private lastUpdateTime:J

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private update()V
    .locals 7

    const-wide/16 v0, 0x32

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    sub-long v2, v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    long-to-float v0, v0

    const/high16 v1, 0x43960000    # 300.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    sub-float/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->invalidateSelf()V

    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v4, 0x0

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    move v7, v4

    :goto_1
    const/4 v0, 0x4

    if-ge v7, v0, :cond_3

    if-nez v7, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_2
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr v0, v7

    int-to-float v0, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v2, -0x3e900000    # -15.0f

    const/high16 v3, 0x41f00000    # 30.0f

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v7, v0, :cond_2

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    sub-float v1, v6, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->update()V

    :cond_4
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41600000    # 14.0f

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

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    return-void
.end method
