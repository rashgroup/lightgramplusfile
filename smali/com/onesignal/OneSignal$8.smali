.class final Lcom/onesignal/OneSignal$8;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/OneSignal$8;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    # getter for: Lcom/onesignal/OneSignal;->getTagsCall:Z
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2600()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;

    move-result-object v0

    iget-boolean v2, v0, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->serverSuccess:Z

    if-eqz v2, :cond_0

    # setter for: Lcom/onesignal/OneSignal;->getTagsCall:Z
    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$2602(Z)Z

    :cond_0
    iget-object v1, v0, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/onesignal/OneSignal$8;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$GetTagsHandler;->tagsAvailable(Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/onesignal/OneSignal$8;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    iget-object v0, v0, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/onesignal/OneSignal$GetTagsHandler;->tagsAvailable(Lorg/json/JSONObject;)V

    goto :goto_1
.end method
