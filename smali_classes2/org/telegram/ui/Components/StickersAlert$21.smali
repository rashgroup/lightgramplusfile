.class Lorg/telegram/ui/Components/StickersAlert$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StickersAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;

.field final synthetic val$num:I

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$21;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iput p2, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$num:I

    iput-boolean p3, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$21;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$num:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$21;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$21;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$num:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$21;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$num:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$21;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$show:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$21;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$num:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$21;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$21;->val$num:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_1
    return-void
.end method
