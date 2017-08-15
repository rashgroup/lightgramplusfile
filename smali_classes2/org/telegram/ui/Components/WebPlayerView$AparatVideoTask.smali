.class Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AparatVideoTask"
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

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->canRetry:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->videoId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "http://www.aparat.com/video/video/embed/vt/frame/showvideo/yes/videohash/%s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->videoId:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->aparatFileListPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$2400()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v2

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "file"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "file"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    const/4 v5, 0x1

    const-string/jumbo v6, "other"

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    aget-object v1, v1, v2

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2000(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_0
.end method
