.class Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoubVideoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field private results:[Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->canRetry:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->videoId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "https://coub.com/api/v2/coubs/%s.json"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->videoId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "audio_file_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v3, 0x1

    const-string/jumbo v4, "other"

    aput-object v4, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v2, 0x3

    const-string/jumbo v3, "other"

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    aget-object v0, v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    aget-object v1, v1, v3

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2502(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playAudioType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2602(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2000(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V
    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_0
.end method
