.class Lcom/onesignal/LocationGMS$LocationHandlerThread;
.super Landroid/os/HandlerThread;
.source "LocationGMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/LocationGMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationHandlerThread"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    const-string/jumbo v0, "OSH_LocationHandlerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/LocationGMS$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/LocationGMS$LocationHandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/LocationGMS$LocationHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/LocationGMS$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method
