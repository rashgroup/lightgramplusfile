.class Lorg/telegram/ui/PaymentFormActivity$27;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity$27;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4202(Lorg/telegram/ui/PaymentFormActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->val$show:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4400(Lorg/telegram/ui/PaymentFormActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
