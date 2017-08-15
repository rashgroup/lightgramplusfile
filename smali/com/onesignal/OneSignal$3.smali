.class final Lcom/onesignal/OneSignal$3;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$3$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$3$1;-><init>(Lcom/onesignal/OneSignal$3;)V

    const-string/jumbo v2, "OS_PARAMS_REQUEST"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android_sender_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    # setter for: Lcom/onesignal/OneSignal;->mGoogleProjectNumberIsRemote:Z
    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$1202(Z)Z

    const-string/jumbo v1, "android_sender_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$1302(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string/jumbo v1, "enterp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/onesignal/OneSignal;->mEnterp:Z

    const-string/jumbo v1, "awl_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    # setter for: Lcom/onesignal/OneSignal;->awl:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1402(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    # setter for: Lcom/onesignal/OneSignal;->awlFired:Z
    invoke-static {v3}, Lcom/onesignal/OneSignal;->access$1502(Z)Z

    # invokes: Lcom/onesignal/OneSignal;->registerForPushToken()V
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1600()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
