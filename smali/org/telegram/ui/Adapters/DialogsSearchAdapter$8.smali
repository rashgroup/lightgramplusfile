.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;
.super Ljava/util/TimerTask;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$searchId:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->cancel()Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1402(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$query:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;->val$searchId:I

    # invokes: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1500(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V

    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
