.class Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalStateSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetTagsResult"
.end annotation


# instance fields
.field public result:Lorg/json/JSONObject;

.field public serverSuccess:Z


# direct methods
.method constructor <init>(ZLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->serverSuccess:Z

    iput-object p2, p0, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    return-void
.end method
