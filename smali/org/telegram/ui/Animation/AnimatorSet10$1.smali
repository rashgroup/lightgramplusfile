.class Lorg/telegram/ui/Animation/AnimatorSet10$1;
.super Lorg/telegram/ui/Animation/AnimatorListenerAdapter10;
.source "AnimatorSet10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Animation/AnimatorSet10;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

.field final synthetic val$nodesToStart:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Animation/AnimatorSet10;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    iput-object p2, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/Animation/AnimatorListenerAdapter10;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->canceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v2, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v2}, Lorg/telegram/ui/Animation/Animator10;->start()V

    iget-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$000(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$1;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mDelayAnim:Lorg/telegram/ui/Animation/ValueAnimator;
    invoke-static {v0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$102(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/ValueAnimator;)Lorg/telegram/ui/Animation/ValueAnimator;

    return-void
.end method
