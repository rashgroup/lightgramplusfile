.class Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->checkDismiss(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->access$300(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->access$300(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->access$302(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
