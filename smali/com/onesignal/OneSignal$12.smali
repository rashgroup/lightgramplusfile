.class final Lcom/onesignal/OneSignal$12;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->promptLocation()V
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
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    :cond_0
    return-void
.end method
