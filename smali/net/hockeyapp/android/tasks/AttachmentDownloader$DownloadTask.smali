.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;
.super Landroid/os/AsyncTask;
.source "AttachmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapOrientation:I

.field private final downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

.field private dropFolder:Ljava/io/File;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    iput-object p2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->handler:Landroid/os/Handler;

    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    return-void
.end method

.method private createConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "HockeySDK/Android 4.1.2"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    const-string/jumbo v1, "connection"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private downloadAttachment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    const-string/jumbo v3, "Status"

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v7, v2, [B

    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    int-to-long v10, v8

    add-long/2addr v2, v10

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v2

    int-to-long v14, v4

    div-long/2addr v12, v14

    long-to-int v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadImageThumbnail()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getFeedbackAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getAttachmentView()Lnet/hockeyapp/android/views/AttachmentView;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/ImageUtils;->determineOrientation(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    iget v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Lnet/hockeyapp/android/views/AttachmentView;->getWidthLandscape()I

    move-result v0

    move v1, v0

    :goto_0
    iget v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Lnet/hockeyapp/android/views/AttachmentView;->getMaxHeightLandscape()I

    move-result v0

    :goto_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v1, v0}, Lnet/hockeyapp/android/utils/ImageUtils;->decodeSampledBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    :goto_2
    return-void

    :cond_0
    invoke-virtual {v3}, Lnet/hockeyapp/android/views/AttachmentView;->getWidthPortrait()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lnet/hockeyapp/android/views/AttachmentView;->getMaxHeightPortrait()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getFeedbackAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->isAvailableInCache()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cached..."

    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->loadImageThumbnail()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "Downloading..."

    invoke-static {v1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->loadImageThumbnail()V

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getAttachmentView()Lnet/hockeyapp/android/views/AttachmentView;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->setSuccess(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    invoke-virtual {v0, v1, v2}, Lnet/hockeyapp/android/views/AttachmentView;->setImage(Landroid/graphics/Bitmap;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->hasRetry()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->signalImageLoadingError()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
