.class Lorg/telegram/ui/VoIPActivity$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->setEmojiTooltipVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$25;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$25;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$4202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
