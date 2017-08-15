.class public final Lorg/telegram/ui/Animation/AnimatorSet10;
.super Lorg/telegram/ui/Animation/Animator10;
.source "AnimatorSet10.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Animation/AnimatorSet10$Builder;,
        Lorg/telegram/ui/Animation/AnimatorSet10$Node;,
        Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;,
        Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;,
        Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;
    }
.end annotation


# instance fields
.field private mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/telegram/ui/Animation/Animator10;",
            "Lorg/telegram/ui/Animation/AnimatorSet10$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/AnimatorSet10$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/Animator10;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/AnimatorSet10$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Animation/Animator10;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    iput-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSetListener:Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    iput-boolean v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mTerminated:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStartDelay:J

    iput-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDuration:J

    iput-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/ValueAnimator;)Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Animation/AnimatorSet10;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private sortNodes()V
    .locals 9

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v2, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v8, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    :goto_4
    if-ge v2, v5, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;

    iget-object v6, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v6, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v7, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_a
    iput-boolean v3, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->done:Z

    goto :goto_3

    :cond_b
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mTerminated:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/AnimatorSet10;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v1, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationCancel(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Animator10;->cancel()V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z

    :cond_4
    return-void

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/AnimatorSet10;->clone()Lorg/telegram/ui/Animation/AnimatorSet10;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/telegram/ui/Animation/Animator10;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/AnimatorSet10;->clone()Lorg/telegram/ui/Animation/AnimatorSet10;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Animation/AnimatorSet10;
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lorg/telegram/ui/Animation/Animator10;->clone()Lorg/telegram/ui/Animation/Animator10;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mTerminated:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->clone()Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;

    iget-object v6, v2, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v2, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->tmpDependencies:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependents:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/Animator10;->getListeners()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    instance-of v8, v1, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    if-eqz v8, :cond_1

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v3, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v1, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;

    iget-object v3, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    new-instance v7, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;

    iget v1, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->rule:I

    invoke-direct {v7, v3, v1}, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10$Node;I)V

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->addDependency(Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;)V

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public end()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mTerminated:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/AnimatorSet10;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Animation/AnimatorSet10;->sortNodes()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSetListener:Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    if-nez v2, :cond_0

    new-instance v2, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    invoke-direct {v2, p0, p0}, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/AnimatorSet10;)V

    iput-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSetListener:Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    iget-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSetListener:Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Animation/Animator10;->addListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Animator10;->end()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z

    :cond_5
    return-void
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/Animator10;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Animator10;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPaused:Z

    invoke-super {p0}, Lorg/telegram/ui/Animation/Animator10;->pause()V

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->pause()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Animator10;->pause()V

    goto :goto_0
.end method

.method public play(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    new-instance v0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/Animator10;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/ui/Animation/Animator10;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->play(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    :cond_0
    return-void

    :cond_1
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->play(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->before(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public varargs playSequentially([Lorg/telegram/ui/Animation/Animator10;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    array-length v1, p1

    if-ne v1, v2, :cond_1

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->play(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    :cond_0
    return-void

    :cond_1
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->play(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->before(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/telegram/ui/Animation/Animator10;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->play(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->with(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    move-object v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public varargs playTogether([Lorg/telegram/ui/Animation/Animator10;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNeedsSort:Z

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->play(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    move-result-object v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->with(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPaused:Z

    invoke-super {p0}, Lorg/telegram/ui/Animation/Animator10;->resume()V

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->resume()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Animator10;->resume()V

    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Lorg/telegram/ui/Animation/Animator10;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Animation/AnimatorSet10;->setDuration(J)Lorg/telegram/ui/Animation/AnimatorSet10;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lorg/telegram/ui/Animation/AnimatorSet10;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStartDelay:J

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    instance-of v2, v0, Lorg/telegram/ui/Animation/AnimatorSet10;

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/Animator10;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/Animator10;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Animator10;->setupEndValues()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Animator10;->setupStartValues()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mTerminated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPaused:Z

    iget-wide v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDuration:J

    cmp-long v0, v0, v10

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    iget-wide v4, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDuration:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Animation/Animator10;->setDuration(J)Lorg/telegram/ui/Animation/Animator10;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    iget-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Animation/Animator10;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Animation/AnimatorSet10;->sortNodes()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/Animator10;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    instance-of v5, v1, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;

    if-nez v5, :cond_4

    instance-of v5, v1, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    if-eqz v5, :cond_3

    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Animation/Animator10;->removeListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSetListener:Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    if-nez v1, :cond_6

    new-instance v1, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    invoke-direct {v1, p0, p0}, Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/AnimatorSet10;)V

    iput-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSetListener:Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mSetListener:Lorg/telegram/ui/Animation/AnimatorSet10$AnimatorSetListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/Animator10;->addListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    :goto_5
    if-ge v2, v6, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;

    iget-object v7, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v7, v7, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    new-instance v8, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;

    iget v1, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->rule:I

    invoke-direct {v8, p0, v0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/AnimatorSet10$Node;I)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Animation/Animator10;->addListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_4

    :cond_a
    iget-wide v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStartDelay:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v2, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v2}, Lorg/telegram/ui/Animation/Animator10;->start()V

    iget-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->ofFloat([F)Lorg/telegram/ui/Animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    iget-wide v6, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStartDelay:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Animation/ValueAnimator;->setDuration(J)Lorg/telegram/ui/Animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Animation/AnimatorSet10$1;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/Animation/AnimatorSet10$1;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/ValueAnimator;->addListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->start()V

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationStart(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    iget-wide v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStartDelay:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_e

    iput-boolean v3, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mStarted:Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_8

    :cond_e
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
