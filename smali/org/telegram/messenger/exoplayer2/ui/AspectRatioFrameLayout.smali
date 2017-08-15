.class public Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout$ResizeMode;
    }
.end annotation


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f

.field public static final RESIZE_MODE_FILL:I = 0x3

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1


# instance fields
.field private matrix:Landroid/graphics/Matrix;

.field private resizeMode:I

.field private rotation:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float v2, v3, v2

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    packed-switch v3, :pswitch_data_0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    int-to-float v0, v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/TextureView;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    int-to-float v4, v4

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    div-float v5, v7, v3

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    check-cast v0, Landroid/view/TextureView;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :pswitch_0
    int-to-float v0, v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    :pswitch_1
    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    :cond_4
    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatio(FI)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
