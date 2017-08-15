.class final Lcom/onesignal/OneSignal$7;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string/jumbo v0, "create notification failed"

    # invokes: Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v0, p1, p3, p2}, Lcom/onesignal/OneSignal;->access$1700(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo p2, "{\"error\": \"HTTP no response error\"}"

    :cond_0
    iget-object v0, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "{\"error\": \"Unknown response!\"}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HTTP create notification success: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-interface {v1, v0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
