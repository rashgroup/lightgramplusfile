.class public Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;
.super Ljava/lang/Object;
.source "ObjectAnimatorProxy.java"


# instance fields
.field private objectAnimator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Ljava/lang/Object;
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs ofFloatProxy(Ljava/lang/Object;Ljava/lang/String;[F)Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;
    .locals 2

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Ljava/lang/Object;
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs ofIntProxy(Ljava/lang/Object;Ljava/lang/String;[I)Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;
    .locals 2

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;)Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;
    .locals 2

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    iget-object v1, p1, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->animatorListenerAdapter:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorListenerAdapter10;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->addListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    iget-object v1, p1, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->animatorListenerAdapter:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0
.end method

.method public end()V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->end()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public setAutoCancel(Z)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setAutoCancel(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    goto :goto_0
.end method

.method public setDuration(J)Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setDuration(J)Lorg/telegram/ui/Animation/ObjectAnimator10;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/ObjectAnimatorProxy;->objectAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
