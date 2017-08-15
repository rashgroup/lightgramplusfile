.class public Lorg/telegram/ui/AnimationCompat/ViewProxy;
.super Ljava/lang/Object;
.source "ViewProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlpha(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getAlpha()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getPivotX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    goto :goto_0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getPivotY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    goto :goto_0
.end method

.method public static getRotation(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getRotation()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    goto :goto_0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getRotationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    goto :goto_0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getRotationY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    goto :goto_0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getScaleX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    goto :goto_0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getScaleY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    goto :goto_0
.end method

.method public static getScrollX(Landroid/view/View;)I
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getScrollX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method public static getScrollY(Landroid/view/View;)I
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getScrollY()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getTranslationY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    goto :goto_0
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setPivotX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setPivotY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0
.end method

.method public static setRotation(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setRotation(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setScaleX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setScaleY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method

.method public static setScrollX(Landroid/view/View;I)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setScrollX(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0
.end method

.method public static setScrollY(Landroid/view/View;I)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setScrollY(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollY(I)V

    goto :goto_0
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setTranslationY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    goto :goto_0
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/View10;->setY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method

.method public static wrap(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public setRotationX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/View10;->setRotationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/View10;->setRotationY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0
.end method
