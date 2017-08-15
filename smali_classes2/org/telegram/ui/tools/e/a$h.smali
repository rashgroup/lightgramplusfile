.class public Lorg/telegram/ui/tools/e/a$h;
.super Landroid/widget/ImageView;
.source "PPPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lorg/telegram/ui/tools/e/a;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Canvas;

.field private f:Landroid/graphics/Path;

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/tools/e/a;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a$h;->b:Lorg/telegram/ui/tools/e/a;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/e/a$h;->setAdjustViewBounds(Z)V

    iput-object p2, p0, Lorg/telegram/ui/tools/e/a$h;->a:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->d:Landroid/graphics/Paint;

    return-void
.end method

.method private a(FF)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iput p1, p0, Lorg/telegram/ui/tools/e/a$h;->g:F

    iput p2, p0, Lorg/telegram/ui/tools/e/a$h;->h:F

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/tools/e/a$h;->g:F

    iget v2, p0, Lorg/telegram/ui/tools/e/a$h;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->e:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/tools/e/a$h;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v2}, Lorg/telegram/ui/tools/e/a;->m(Lorg/telegram/ui/tools/e/a;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private b(FF)V
    .locals 6

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    iget v0, p0, Lorg/telegram/ui/tools/e/a$h;->g:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/tools/e/a$h;->h:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/tools/e/a$h;->g:F

    iget v2, p0, Lorg/telegram/ui/tools/e/a$h;->h:F

    iget v3, p0, Lorg/telegram/ui/tools/e/a$h;->g:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lorg/telegram/ui/tools/e/a$h;->h:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput p1, p0, Lorg/telegram/ui/tools/e/a$h;->g:F

    iput p2, p0, Lorg/telegram/ui/tools/e/a$h;->h:F

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a$h;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$h;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$h;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/e/a;->m(Lorg/telegram/ui/tools/e/a;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->c:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$h;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/e/a$h;->e:Landroid/graphics/Canvas;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/tools/e/a$h;->a(FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a$h;->invalidate()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lorg/telegram/ui/tools/e/a$h;->b()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a$h;->invalidate()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/tools/e/a$h;->b(FF)V

    iget-object v2, p0, Lorg/telegram/ui/tools/e/a$h;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v2}, Lorg/telegram/ui/tools/e/a;->r(Lorg/telegram/ui/tools/e/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    iget v3, p0, Lorg/telegram/ui/tools/e/a$h;->g:F

    iget v4, p0, Lorg/telegram/ui/tools/e/a$h;->h:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lorg/telegram/ui/tools/e/a$h;->e:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/telegram/ui/tools/e/a$h;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v4}, Lorg/telegram/ui/tools/e/a;->m(Lorg/telegram/ui/tools/e/a;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lorg/telegram/ui/tools/e/a$h;->f:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/tools/e/a$h;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
