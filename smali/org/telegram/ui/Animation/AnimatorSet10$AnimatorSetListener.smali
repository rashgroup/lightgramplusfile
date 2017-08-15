.class Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet10.java"

# interfaces
.implements Lorg/telegram/ui/Animation/Animator10$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Animation/AnimatorSet10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

.field final synthetic this$0:Lorg/telegram/ui/Animation/AnimatorSet10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/AnimatorSet10;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-boolean v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mTerminated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$000(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    iget-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationCancel(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Animation/Animator10;->removeListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$000(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iput-boolean v2, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->done:Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-boolean v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mTerminated:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$300(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-boolean v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->done:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    iget-object v3, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-interface {v0, v3}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    # setter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$402(Lorg/telegram/ui/Animation/AnimatorSet10;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    iput-boolean v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPaused:Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onAnimationRepeat(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 0

    return-void
.end method
