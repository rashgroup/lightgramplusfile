.class public Lnet/hockeyapp/android/tasks/CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "CheckUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field protected static final APK:Ljava/lang/String; = "apk"

.field private static final MAX_NUMBER_OF_VERSIONS:I = 0x19


# instance fields
.field protected appIdentifier:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field protected listener:Lnet/hockeyapp/android/UpdateManagerListener;

.field protected mandatory:Ljava/lang/Boolean;

.field protected urlString:Ljava/lang/String;

.field private usageTime:J


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->mandatory:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    iput-object p3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    iput-object p2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    iput-object p4, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/hockeyapp/android/Tracking;->getUsageTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private encodeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private findNewVersion(Lorg/json/JSONArray;I)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v6, v2

    move v0, v2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v6, v3, :cond_6

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v3, "version"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, p2, :cond_3

    move v5, v1

    :goto_1
    const-string/jumbo v3, "version"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p2, :cond_4

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lnet/hockeyapp/android/utils/VersionHelper;->isNewerThanLastUpdateTime(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, v1

    :goto_2
    const-string/jumbo v3, "minimum_os_version"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v8}, Lnet/hockeyapp/android/utils/VersionHelper;->mapGoogleVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lnet/hockeyapp/android/utils/VersionHelper;->compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_5

    move v3, v1

    :goto_3
    if-nez v5, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v3, :cond_2

    const-string/jumbo v0, "mandatory"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->mandatory:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v3, "mandatory"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->mandatory:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    :cond_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    :cond_3
    move v5, v2

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move v0, v2

    :cond_6
    return v0
.end method

.method private limitResponseSize(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public attach(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    return-void
.end method

.method protected createConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "HockeySDK/Android 4.1.2"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    const-string/jumbo v1, "connection"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONArray;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getVersionCode()I

    move-result v1

    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lnet/hockeyapp/android/utils/VersionCache;->getVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getCachingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->findNewVersion(Lorg/json/JSONArray;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "HockeyUpdate"

    const-string/jumbo v2, "Returning cached JSON"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v2, "json"

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->findNewVersion(Lorg/json/JSONArray;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->limitResponseSize(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected getCachingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getURLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "api/2/apps/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "?format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&udid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    const-string/jumbo v2, "net.hockeyapp.android.login"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "auid"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&auid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v2, "iuid"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&iuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v0, "&os=Android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&os_version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&oem="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&app_version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&sdk="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "HockeySDK"

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&sdk_version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "4.1.2"

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&lang="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&usage_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected getVersionCode()I
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->onPostExecute(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "HockeyUpdate"

    const-string/jumbo v1, "Received Update Info"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    const-string/jumbo v1, "apk"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/hockeyapp/android/UpdateManagerListener;->onUpdateAvailable(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HockeyUpdate"

    const-string/jumbo v1, "No Update Info available"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateManagerListener;->onNoUpdateAvailable()V

    goto :goto_0
.end method
