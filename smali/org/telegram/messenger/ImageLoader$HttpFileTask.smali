.class Lorg/telegram/messenger/ImageLoader$HttpFileTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private fileSize:I

.field private lastProgressTime:J

.field private tempFile:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;

    return-object v0
.end method

.method private reportProgress(F)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lastProgressTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lastProgressTime:J

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lastProgressTime:J

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpFileTask;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v6, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Referer"

    const-string/jumbo v6, "google.com"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1388

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x12e

    if-eq v6, v7, :cond_0

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_0

    const/16 v7, 0x12f

    if-ne v6, v7, :cond_1

    :cond_0
    const-string/jumbo v6, "Location"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Set-Cookie"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string/jumbo v6, "Cookie"

    invoke-virtual {v2, v6, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v6, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Referer"

    const-string/jumbo v6, "google.com"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v1

    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    const-string/jumbo v7, "rws"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b

    move-object v3, v1

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    if-eqz v1, :cond_7

    if-eqz v2, :cond_2

    :try_start_3
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v6, 0xc8

    if-eq v1, v6, :cond_2

    const/16 v6, 0xca

    if-eq v1, v6, :cond_2

    const/16 v6, 0x130

    if-eq v1, v6, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "content-Length"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    const v1, 0x8000

    :try_start_5
    new-array v2, v1, [B

    move v1, v4

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->isCancelled()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    move-result v6

    if-eqz v6, :cond_c

    move v1, v4

    :goto_4
    move v4, v1

    :cond_5
    :goto_5
    :try_start_6
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_7
    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v9, v1

    move-object v1, v3

    move-object v3, v9

    :goto_8
    instance-of v6, v3, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_9

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v6

    if-eqz v6, :cond_8

    iput-boolean v4, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    :cond_8
    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v1

    goto/16 :goto_0

    :cond_9
    instance-of v6, v3, Ljava/net/UnknownHostException;

    if-eqz v6, :cond_a

    iput-boolean v4, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    goto :goto_9

    :cond_a
    instance-of v6, v3, Ljava/net/SocketException;

    if-eqz v6, :cond_b

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ECONNRESET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iput-boolean v4, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    goto :goto_9

    :cond_b
    instance-of v6, v3, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_8

    iput-boolean v4, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    goto :goto_9

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_c
    :try_start_8
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_d

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v1, v6

    iget v6, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I

    if-lez v6, :cond_4

    int-to-float v6, v1

    iget v7, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->reportProgress(F)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_3

    :catch_3
    move-exception v1

    move-object v2, v1

    move v1, v4

    :goto_a
    :try_start_9
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v2

    move v4, v1

    move-object v1, v2

    :goto_b
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_d
    const/4 v1, -0x1

    if-ne v6, v1, :cond_f

    :try_start_a
    iget v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I

    if-eqz v1, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->reportProgress(F)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    :cond_e
    move v1, v5

    goto/16 :goto_4

    :cond_f
    move v1, v4

    goto/16 :goto_4

    :catch_5
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catch_6
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    move v4, v5

    goto :goto_b

    :catch_9
    move-exception v1

    move-object v2, v1

    move v1, v5

    goto :goto_a

    :catch_a
    move-exception v1

    move-object v9, v1

    move-object v1, v3

    move-object v3, v9

    goto/16 :goto_8

    :catch_b
    move-exception v3

    goto/16 :goto_8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x2

    # invokes: Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->access$200(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    # invokes: Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/ImageLoader;->access$200(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
