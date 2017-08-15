.class Lorg/telegram/messenger/NotificationsController$9$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/NotificationsController$9;

.field final synthetic val$popupFinal:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController$9;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$9$1;->this$1:Lorg/telegram/messenger/NotificationsController$9;

    iput p2, p0, Lorg/telegram/messenger/NotificationsController$9$1;->val$popupFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$9$1;->this$1:Lorg/telegram/messenger/NotificationsController$9;

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$9$1;->this$1:Lorg/telegram/messenger/NotificationsController$9;

    iget-object v1, v1, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/NotificationsController$9$1;->val$popupFinal:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/NotificationsController$9$1;->val$popupFinal:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/NotificationsController$9$1;->val$popupFinal:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10050004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method
