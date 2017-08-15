.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;
.super Ljava/util/TimerTask;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->val$searchId:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->cancel()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    # getter for: Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2700(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2702(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->val$query:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;->val$searchId:I

    # invokes: Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2800(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
