.class public Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;
.super Ljava/lang/Object;
.source "AnimatorSetProxy.java"


# instance fields
.field private animatorSet:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p0

    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    sub-int v1, p2, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;)V
    .locals 2

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-object v1, p1, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->animatorListenerAdapter:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorListenerAdapter10;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->addListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v1, p1, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->animatorListenerAdapter:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playTogether(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->playTogether(Ljava/util/Collection;)V

    :goto_1
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public varargs playTogether([Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    array-length v0, p1

    const-class v1, [Lorg/telegram/ui/Animation/Animator10;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Animation/Animator10;

    iget-object v1, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->playTogether([Lorg/telegram/ui/Animation/Animator10;)V

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    const-class v1, [Landroid/animation/Animator;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public setDuration(J)Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Animation/AnimatorSet10;->setDuration(J)Lorg/telegram/ui/Animation/AnimatorSet10;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/AnimatorSet10;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorSetProxy;->animatorSet:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
