.class Lorg/telegram/tgnet/ConnectionsManager$11;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/tgnet/ConnectionsManager;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$11;->this$0:Lorg/telegram/tgnet/ConnectionsManager;

    iput-boolean p2, p0, Lorg/telegram/tgnet/ConnectionsManager$11;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$11;->this$0:Lorg/telegram/tgnet/ConnectionsManager;

    # getter for: Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->access$200(Lorg/telegram/tgnet/ConnectionsManager;)Z

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/tgnet/ConnectionsManager$11;->val$value:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$11;->this$0:Lorg/telegram/tgnet/ConnectionsManager;

    iget-boolean v1, p0, Lorg/telegram/tgnet/ConnectionsManager$11;->val$value:Z

    # setter for: Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z
    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->access$202(Lorg/telegram/tgnet/ConnectionsManager;Z)Z

    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$11;->this$0:Lorg/telegram/tgnet/ConnectionsManager;

    # getter for: Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->access$100(Lorg/telegram/tgnet/ConnectionsManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
