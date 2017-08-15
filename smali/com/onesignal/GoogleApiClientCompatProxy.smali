.class Lcom/onesignal/GoogleApiClientCompatProxy;
.super Ljava/lang/Object;
.source "GoogleApiClientCompatProxy.java"


# instance fields
.field private final googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final googleApiClientListenerClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClientListenerClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method connect()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClientListenerClass:Ljava/lang/Class;

    const-string/jumbo v1, "connect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method disconnect()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClientListenerClass:Ljava/lang/Class;

    const-string/jumbo v1, "disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method
