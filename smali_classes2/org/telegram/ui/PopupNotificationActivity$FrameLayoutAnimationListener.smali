.class public Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;
.super Landroid/widget/FrameLayout;
.source "PopupNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PopupNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameLayoutAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAnimationEnd()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$000(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$000(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$002(Lorg/telegram/ui/PopupNotificationActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
