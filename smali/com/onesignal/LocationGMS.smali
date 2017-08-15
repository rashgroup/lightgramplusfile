.class Lcom/onesignal/LocationGMS;
.super Ljava/lang/Object;
.source "LocationGMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/LocationGMS$LocationHandlerThread;,
        Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;,
        Lcom/onesignal/LocationGMS$LocationUpdateListener;,
        Lcom/onesignal/LocationGMS$GoogleApiClientListener;,
        Lcom/onesignal/LocationGMS$LocationHandler;,
        Lcom/onesignal/LocationGMS$LocationPoint;
    }
.end annotation


# static fields
.field private static final TIME_BACKGROUND:I = 0x258

.field private static final TIME_FOREGROUND:I = 0x12c

.field private static classContext:Landroid/content/Context;

.field private static fallbackFailThread:Ljava/lang/Thread;

.field private static locationCoarse:Z

.field private static locationHandler:Lcom/onesignal/LocationGMS$LocationHandler;

.field private static locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

.field private static locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

.field private static mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

.field static requestPermission:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/onesignal/GoogleApiClientCompatProxy;
    .locals 1

    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    return-object v0
.end method

.method static synthetic access$200(Landroid/location/Location;)V
    .locals 0

    invoke-static {p0}, Lcom/onesignal/LocationGMS;->receivedLocationPoint(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$302(Lcom/onesignal/LocationGMS$LocationUpdateListener;)Lcom/onesignal/LocationGMS$LocationUpdateListener;
    .locals 0

    sput-object p0, Lcom/onesignal/LocationGMS;->locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

    return-object p0
.end method

.method private static declared-synchronized fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 3

    const-class v1, Lcom/onesignal/LocationGMS;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/onesignal/LocationGMS;->locationHandler:Lcom/onesignal/LocationGMS$LocationHandler;

    invoke-interface {v0, p0}, Lcom/onesignal/LocationGMS$LocationHandler;->complete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v2, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static fireFailedComplete()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/LocationGMS;->fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v0}, Lcom/onesignal/GoogleApiClientCompatProxy;->disconnect()V

    :cond_0
    return-void
.end method

.method private static getLastLocationTime(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "OS_LAST_LOCATION_TIME"

    const-wide/32 v2, -0x927c0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V
    .locals 4

    const/4 v0, -0x1

    sput-object p0, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    sput-object p2, Lcom/onesignal/LocationGMS;->locationHandler:Lcom/onesignal/LocationGMS$LocationHandler;

    sget-boolean v1, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_3

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/onesignal/LocationGMS$LocationHandler;->complete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    sput-object v1, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    :cond_4
    :goto_1
    sget-object v1, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/onesignal/PermissionsActivity;->startPrompt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    sput-object v1, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0
.end method

.method private static hasLocationPermission(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static receivedLocationPoint(Landroid/location/Location;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/onesignal/LocationGMS$LocationPoint;

    invoke-direct {v3}, Lcom/onesignal/LocationGMS$LocationPoint;-><init>()V

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/LocationGMS$LocationPoint;->accuracy:Ljava/lang/Float;

    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/LocationGMS$LocationPoint;->bg:Ljava/lang/Boolean;

    sget-boolean v0, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/LocationGMS$LocationPoint;->type:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/LocationGMS$LocationPoint;->timeStamp:Ljava/lang/Long;

    sget-boolean v0, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v6, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/LocationGMS$LocationPoint;->lat:Ljava/lang/Double;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v6, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/LocationGMS$LocationPoint;->log:Ljava/lang/Double;

    :goto_2
    invoke-static {v3}, Lcom/onesignal/LocationGMS;->fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/LocationGMS;->setLastLocationTime(J)V

    sget-object v0, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/LocationGMS;->scheduleUpdate(Landroid/content/Context;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/LocationGMS$LocationPoint;->lat:Ljava/lang/Double;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/LocationGMS$LocationPoint;->log:Ljava/lang/Double;

    goto :goto_2
.end method

.method static scheduleUpdate(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/onesignal/LocationGMS;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->getLastLocationTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12c

    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/onesignal/SyncService;->scheduleServiceSyncTask(Landroid/content/Context;J)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x258

    goto :goto_1
.end method

.method private static setLastLocationTime(J)V
    .locals 2

    sget-object v0, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "OS_LAST_LOCATION_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static startFallBackThread()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/LocationGMS$1;

    invoke-direct {v1}, Lcom/onesignal/LocationGMS$1;-><init>()V

    const-string/jumbo v2, "OS_GMS_LOCATION_FALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static startGetLocation()V
    .locals 3

    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/onesignal/LocationGMS;->startFallBackThread()V

    sget-object v0, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onesignal/LocationGMS$LocationHandlerThread;

    invoke-direct {v0}, Lcom/onesignal/LocationGMS$LocationHandlerThread;-><init>()V

    sput-object v0, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    :cond_1
    new-instance v0, Lcom/onesignal/LocationGMS$GoogleApiClientListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/LocationGMS$GoogleApiClientListener;-><init>(Lcom/onesignal/LocationGMS$1;)V

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v2, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    iget-object v1, v1, Lcom/onesignal/LocationGMS$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    new-instance v1, Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-direct {v1, v0}, Lcom/onesignal/GoogleApiClientCompatProxy;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v1, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v0}, Lcom/onesignal/GoogleApiClientCompatProxy;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string/jumbo v2, "Location permission exists but there was an error initializing: "

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    goto :goto_0
.end method
