.class Lorg/telegram/messenger/MessagesController$110$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$110;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$110;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$110;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$110$1;->this$1:Lorg/telegram/messenger/MessagesController$110;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$110$1;->this$1:Lorg/telegram/messenger/MessagesController$110;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$110;->val$pushMessages:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;Z)V

    return-void
.end method
