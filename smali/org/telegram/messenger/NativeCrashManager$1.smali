.class final Lorg/telegram/messenger/NativeCrashManager$1;
.super Ljava/lang/Thread;
.source "NativeCrashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NativeCrashManager;->uploadDumpAndLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dumpFilename:Ljava/lang/String;

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$logFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v1, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-direct {v1}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;-><init>()V

    invoke-virtual {v1}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeFirstBoundaryIfNeeds()V

    new-instance v0, Ljava/io/File;

    sget-object v2, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string/jumbo v3, "attachment0"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v2, v4}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    new-instance v0, Ljava/io/File;

    sget-object v2, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string/jumbo v3, "log"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v2, v4}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    invoke-virtual {v1}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeLastBoundaryIfNeeds()V

    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://rink.hockeyapp.net/api/2/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/crashes/upload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Content-Length"

    invoke-virtual {v1}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getOutputStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    iget-object v1, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    throw v0
.end method
