.class Lorg/telegram/ui/Adapters/SearchAdapter1$1;
.super Ljava/util/TimerTask;
.source "SearchAdapter1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapter1;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapter1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter1;->searchTimer:Ljava/util/Timer;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/SearchAdapter1;->access$000(Lorg/telegram/ui/Adapters/SearchAdapter1;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapter1;->searchTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter1;->access$002(Lorg/telegram/ui/Adapters/SearchAdapter1;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$1;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/SearchAdapter1;->processSearch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter1;->access$100(Lorg/telegram/ui/Adapters/SearchAdapter1;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
