.class public abstract Lorg/telegram/ui/Animation/Animator10;
.super Ljava/lang/Object;
.source "Animator10.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;,
        Lorg/telegram/ui/Animation/Animator10$AnimatorListener;
    }
.end annotation


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/Animator10$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field mPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPaused:Z

    return-void
.end method


# virtual methods
.method public addListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPauseListener(Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/Animator10;->clone()Lorg/telegram/ui/Animation/Animator10;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Animation/Animator10;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10;

    iget-object v1, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    iget-object v3, v0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;

    iget-object v3, v0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public abstract getDuration()J
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/Animator10$AnimatorListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getStartDelay()J
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPaused:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/Animator10;->isRunning()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/Animator10;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPaused:Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;->onAnimationPause(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public removeListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removePauseListener(Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPaused:Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/Animator10;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorPauseListener;->onAnimationResume(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract setDuration(J)Lorg/telegram/ui/Animation/Animator10;
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setStartDelay(J)V
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setupEndValues()V
    .locals 0

    return-void
.end method

.method public setupStartValues()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
