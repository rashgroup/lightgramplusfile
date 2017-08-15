.class Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet10.java"

# interfaces
.implements Lorg/telegram/ui/Animation/Animator10$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Animation/AnimatorSet10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

.field private mNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/AnimatorSet10$Node;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    iput-object p2, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iput p3, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mRule:I

    return-void
.end method

.method private startIfReady(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    iget-boolean v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10;->mTerminated:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;

    iget v4, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->rule:I

    iget v5, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mRule:I

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v4, v4, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    if-ne v4, p1, :cond_2

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Animation/Animator10;->removeListener(Lorg/telegram/ui/Animation/Animator10$AnimatorListener;)V

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v1, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Animator10;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mAnimatorSet:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$000(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v1, v1, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public onAnimationCancel(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->startIfReady(Lorg/telegram/ui/Animation/Animator10;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->mRule:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Animation/AnimatorSet10$DependencyListener;->startIfReady(Lorg/telegram/ui/Animation/Animator10;)V

    :cond_0
    return-void
.end method
