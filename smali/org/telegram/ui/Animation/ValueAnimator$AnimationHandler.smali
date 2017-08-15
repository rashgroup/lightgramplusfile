.class public Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;
.super Ljava/lang/Object;
.source "ValueAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationHandler"
.end annotation


# instance fields
.field private mAnimationScheduled:Z

.field protected final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    return-void
.end method

.method private doAnimationFrame(J)V
    .locals 7

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator;

    # getter for: Lorg/telegram/ui/Animation/ValueAnimator;->mStartDelay:J
    invoke-static {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->access$000(Lorg/telegram/ui/Animation/ValueAnimator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    # invokes: Lorg/telegram/ui/Animation/ValueAnimator;->startAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V
    invoke-static {v0, p0}, Lorg/telegram/ui/Animation/ValueAnimator;->access$100(Lorg/telegram/ui/Animation/ValueAnimator;Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator;

    # invokes: Lorg/telegram/ui/Animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Animation/ValueAnimator;->access$200(Lorg/telegram/ui/Animation/ValueAnimator;J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator;

    # invokes: Lorg/telegram/ui/Animation/ValueAnimator;->startAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V
    invoke-static {v0, p0}, Lorg/telegram/ui/Animation/ValueAnimator;->access$100(Lorg/telegram/ui/Animation/ValueAnimator;Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Animation/ValueAnimator;->access$302(Lorg/telegram/ui/Animation/ValueAnimator;Z)Z

    iget-object v2, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator;

    iget-object v3, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator;

    iget-object v3, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator;

    # invokes: Lorg/telegram/ui/Animation/ValueAnimator;->endAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V
    invoke-static {v0, p0}, Lorg/telegram/ui/Animation/ValueAnimator;->access$400(Lorg/telegram/ui/Animation/ValueAnimator;Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->scheduleAnimation()V

    :cond_d
    return-void
.end method

.method private scheduleAnimation()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->scheduleAnimation()V

    return-void
.end method
