.class Lorg/telegram/messenger/MessagesController$22;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedDeleteTask(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$messages:Ljava/util/ArrayList;

.field final synthetic val$taskTime:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$22;->val$messages:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$22;->val$taskTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z
    invoke-static {v0, v2}, Lorg/telegram/messenger/MessagesController;->access$3002(Lorg/telegram/messenger/MessagesController;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->val$messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$22;->val$taskTime:I

    # setter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3102(Lorg/telegram/messenger/MessagesController;I)I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$22;->val$messages:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v3}, Lorg/telegram/messenger/MessagesController;->access$3202(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # invokes: Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z
    invoke-static {v0, v2}, Lorg/telegram/messenger/MessagesController;->access$3300(Lorg/telegram/messenger/MessagesController;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    new-instance v1, Lorg/telegram/messenger/MessagesController$22$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$22$1;-><init>(Lorg/telegram/messenger/MessagesController$22;)V

    # setter for: Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3202(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$3100(Lorg/telegram/messenger/MessagesController;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/MessagesController;->access$3102(Lorg/telegram/messenger/MessagesController;I)I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;
    invoke-static {v0, v3}, Lorg/telegram/messenger/MessagesController;->access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method
