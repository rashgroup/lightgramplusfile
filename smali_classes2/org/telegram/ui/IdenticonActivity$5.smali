.class Lorg/telegram/ui/IdenticonActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IdenticonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->updateEmojiButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$600(Lorg/telegram/ui/IdenticonActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$5;->this$0:Lorg/telegram/ui/IdenticonActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/IdenticonActivity;->access$602(Lorg/telegram/ui/IdenticonActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
