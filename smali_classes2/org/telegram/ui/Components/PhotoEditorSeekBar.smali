.class public Lorg/telegram/ui/Components/PhotoEditorSeekBar;
.super Landroid/view/View;
.source "PhotoEditorSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

.field private innerPaint:Landroid/graphics/Paint;

.field private maxValue:I

.field private minValue:I

.field private outerPaint:Landroid/graphics/Paint;

.field private pressed:Z

.field private progress:F

.field private thumbDX:I

.field private thumbSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    iput v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    const v1, -0x66c7c7c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    const v1, -0xac5111

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v7, v6

    sub-float v7, v5, v7

    cmpg-float v7, v7, v3

    if-gtz v7, :cond_6

    iget v7, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    int-to-float v6, v6

    add-float/2addr v6, v7

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_6

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_6

    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    sub-float v0, v3, v5

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->invalidate()V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->invalidate()V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-boolean v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    if-eqz v4, :cond_6

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    int-to-float v1, v1

    sub-float v1, v3, v1

    float-to-int v1, v1

    int-to-float v1, v1

    cmpg-float v3, v1, v0

    if-gez v3, :cond_5

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;->onProgressChanged()V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->invalidate()V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    return-void
.end method

.method public setMinMax(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    iput p2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    if-ge p1, v0, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->invalidate()V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;->onProgressChanged()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    goto :goto_0
.end method
