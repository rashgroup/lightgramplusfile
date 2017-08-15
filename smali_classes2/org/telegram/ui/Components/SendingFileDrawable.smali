.class public Lorg/telegram/ui/Components/SendingFileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SendingFileDrawable.java"


# instance fields
.field private isChat:Z

.field private lastUpdateTime:J

.field private progress:F

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    iput-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    return-void
.end method

.method private update()V
    .locals 7

    const-wide/16 v0, 0x32

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    sub-long v2, v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    sub-float/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->invalidateSelf()V

    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v9, v0, :cond_6

    if-nez v9, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    mul-float/2addr v1, v11

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr v0, v9

    int-to-float v0, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_3

    move v0, v7

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x41300000    # 11.0f

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_5

    move v0, v7

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v11

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v8

    goto :goto_3

    :cond_4
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_4

    :cond_5
    move v0, v8

    goto :goto_5

    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->update()V

    :cond_7
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

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    return-void
.end method
