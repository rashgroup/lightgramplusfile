.class final Lcom/onesignal/OneSignalRestClient$2;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$jsonBody:Lorg/json/JSONObject;

.field final synthetic val$responseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/OneSignalRestClient$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/OneSignalRestClient$2;->val$jsonBody:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/OneSignalRestClient$2;->val$responseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/onesignal/OneSignalRestClient$2;->val$url:Ljava/lang/String;

    const-string/jumbo v1, "POST"

    iget-object v2, p0, Lcom/onesignal/OneSignalRestClient$2;->val$jsonBody:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/OneSignalRestClient$2;->val$responseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    const v4, 0x1d4c0

    # invokes: Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/onesignal/OneSignalRestClient;->access$000(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    return-void
.end method
