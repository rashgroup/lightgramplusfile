.class Lorg/telegram/ui/tools/b$6;
.super Landroid/widget/FrameLayout;
.source "AlertShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/b;

.field private b:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/b$6;->b:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->g(Lorg/telegram/ui/tools/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->b(Lorg/telegram/ui/tools/b;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/tools/b;->c()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b$6;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b$6;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->g(Lorg/telegram/ui/tools/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->b(Lorg/telegram/ui/tools/b;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->b(Lorg/telegram/ui/tools/b;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->f(Lorg/telegram/ui/tools/b;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/tools/b$e;->getItemCount()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v3}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/tools/b$d;->getItemCount()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x3

    int-to-float v1, v1

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v1, v5

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    invoke-static {}, Lorg/telegram/ui/tools/b;->b()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v3, v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v4}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v4

    if-eq v4, v1, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/tools/b$6;->b:Z

    iget-object v4, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v4}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v2, v1, v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    iput-boolean v2, p0, Lorg/telegram/ui/tools/b$6;->b:Z

    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_2
    div-int/lit8 v1, v0, 0x5

    mul-int/lit8 v1, v1, 0x3

    sub-int v1, v0, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$6;->a:Lorg/telegram/ui/tools/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/b$6;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method
