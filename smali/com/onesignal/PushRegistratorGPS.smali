.class public Lcom/onesignal/PushRegistratorGPS;
.super Ljava/lang/Object;
.source "PushRegistratorGPS.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator;


# static fields
.field private static GCM_RETRY_COUNT:I


# instance fields
.field private appContext:Landroid/content/Context;

.field private registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ShowUpdateGPSDialog()V
    .locals 1

    new-instance v0, Lcom/onesignal/PushRegistratorGPS$1;

    invoke-direct {v0, p0}, Lcom/onesignal/PushRegistratorGPS$1;-><init>(Lcom/onesignal/PushRegistratorGPS;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/PushRegistratorGPS;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I

    return v0
.end method

.method static synthetic access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    return-object v0
.end method

.method private internalRegisterForPush(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/PushRegistratorGPS;->isGMSInstalledAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/onesignal/PushRegistratorGPS;->registerInBackground(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string/jumbo v1, "\'Google Play services\' app not installed or disabled on the device."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v1, 0x0

    const/4 v2, -0x7

    invoke-interface {v0, v1, v2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string/jumbo v2, "Could not register with GCM due to an error with the AndroidManifest.xml file or with \'Google Play services\'."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v1, -0x8

    invoke-interface {v0, v3, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isGMSInstalledAndEnabled()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/onesignal/PushRegistratorGPS;->isGooglePlayStoreInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "GT_DO_NOT_SHOW_MISSING_GPS"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/onesignal/PushRegistratorGPS;->ShowUpdateGPSDialog()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private isGooglePlayStoreInstalled()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "com.android.vending"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v3, "Market"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method private registerInBackground(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/PushRegistratorGPS$2;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/PushRegistratorGPS$2;-><init>(Lcom/onesignal/PushRegistratorGPS;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 3

    iput-object p1, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "REMOTE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string/jumbo v1, "Missing Google Project number!\nPlease enter a Google Project number / Sender ID on under App Settings > Android > Configuration on the OneSignal dashboard."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v1, 0x0

    const/4 v2, -0x6

    invoke-interface {v0, v1, v2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/onesignal/PushRegistratorGPS;->internalRegisterForPush(Ljava/lang/String;)V

    goto :goto_0
.end method
