.class Lorg/telegram/ui/ActionBar/BottomSheet$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->val$item:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1200(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1200(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->val$item:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$8$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$8$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$8;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
