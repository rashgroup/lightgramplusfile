.class Lorg/telegram/ui/PopupNotificationActivity$5;
.super Ljava/lang/Object;
.source "PopupNotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onTouchEventMy(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$5;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$5;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1002(Lorg/telegram/ui/PopupNotificationActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$5;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # invokes: Lorg/telegram/ui/PopupNotificationActivity;->switchToPreviousMessage()V
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$1100(Lorg/telegram/ui/PopupNotificationActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$5;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method
