.class Lorg/telegram/ui/VoIPActivity$13$1;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/VoIPActivity$13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$13;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$13;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$13$1;->this$1:Lorg/telegram/ui/VoIPActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$13$1;->this$1:Lorg/telegram/ui/VoIPActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$13;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$13$1;->this$1:Lorg/telegram/ui/VoIPActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$13;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$2000(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method
