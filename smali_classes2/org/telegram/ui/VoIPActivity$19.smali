.class Lorg/telegram/ui/VoIPActivity$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->callAccepted()V
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

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$19;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$19;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$2700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$19;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$1300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$19;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$1500(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
