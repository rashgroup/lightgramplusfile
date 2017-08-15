.class public Lcom/onesignal/OSSubscriptionStateChanges;
.super Ljava/lang/Object;
.source "OSSubscriptionStateChanges.java"


# instance fields
.field from:Lcom/onesignal/OSSubscriptionState;

.field to:Lcom/onesignal/OSSubscriptionState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()Lcom/onesignal/OSSubscriptionState;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionStateChanges;->from:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method public getTo()Lcom/onesignal/OSSubscriptionState;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionStateChanges;->to:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "from"

    iget-object v2, p0, Lcom/onesignal/OSSubscriptionStateChanges;->from:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "to"

    iget-object v2, p0, Lcom/onesignal/OSSubscriptionStateChanges;->to:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionStateChanges;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
