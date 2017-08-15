.class Lorg/telegram/ui/ActionBar/ActionBarLayout$2;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$first:Z

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$first:Z

    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v0, 0x12

    const/4 v9, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v2

    if-eq v2, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$502(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$first:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J
    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$602(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)J

    move-result-wide v2

    sub-long v2, v4, v2

    cmp-long v6, v2, v0

    if-lez v6, :cond_5

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J
    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$702(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v3

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$802(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$802(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$900(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v7, v0

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V
    invoke-static {v0, v1, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1000(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZ)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v1

    sub-float v2, v7, v0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V
    invoke-static {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1100(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    goto/16 :goto_0

    :cond_5
    move-wide v0, v2

    goto/16 :goto_1
.end method
