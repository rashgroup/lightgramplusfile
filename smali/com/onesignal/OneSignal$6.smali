.class final Lcom/onesignal/OneSignal$6;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getNewUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "app_id"

    sget-object v5, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "identifier"

    # getter for: Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    # getter for: Lcom/onesignal/OneSignal;->mainAdIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1900()Lcom/onesignal/AdvertisingIdentifierProvider;

    move-result-object v4

    sget-object v5, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/onesignal/AdvertisingIdentifierProvider;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v5, "ad_id"

    invoke-virtual {v3, v5, v4}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v4, "device_os"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "timezone"

    # invokes: Lcom/onesignal/OneSignal;->getTimeZoneOffset()I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2000()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "language"

    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "sdk"

    const-string/jumbo v5, "030508"

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "sdk_type"

    sget-object v5, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "android_package"

    invoke-virtual {v3, v4, v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "device_model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "device_type"

    # getter for: Lcom/onesignal/OneSignal;->deviceType:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2100()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "subscribableStatus"

    # getter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$600()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "androidPermission"

    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string/jumbo v4, "game_version"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/onesignal/OneSignal;->awl:Lorg/json/JSONObject;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1400()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "pkgs"

    invoke-virtual {v3, v0, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string/jumbo v0, "net_type"

    # getter for: Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()Lcom/onesignal/OSUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "carrier"

    # getter for: Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()Lcom/onesignal/OSUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "rooted"

    invoke-static {}, Lcom/onesignal/RootToolsInternalMethods;->isRooted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    # getter for: Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$300()Lcom/onesignal/LocationGMS$LocationPoint;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$300()Lcom/onesignal/LocationGMS$LocationPoint;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->setLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    :cond_3
    # getter for: Lcom/onesignal/OneSignal;->sendAsSession:Z
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2300()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->postUpdate(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)V

    # setter for: Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z
    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$2402(Z)Z

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    # getter for: Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2500()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/onesignal/AdvertisingIdProviderGPS;->getLastValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalChromeTab;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
