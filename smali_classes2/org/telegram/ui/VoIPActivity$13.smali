.class Lorg/telegram/ui/VoIPActivity$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->createContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private restarter:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$13;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance v0, Lorg/telegram/ui/VoIPActivity$13$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$13$1;-><init>(Lorg/telegram/ui/VoIPActivity$13;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity$13;->restarter:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$13;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$13;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$2100(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$13;->restarter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
