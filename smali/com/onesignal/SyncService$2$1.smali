.class Lcom/onesignal/SyncService$2$1;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/SyncService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onesignal/SyncService$2;


# direct methods
.method constructor <init>(Lcom/onesignal/SyncService$2;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/SyncService$2$1;->this$1:Lcom/onesignal/SyncService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->syncUserState(Z)V

    # invokes: Lcom/onesignal/SyncService;->checkOnFocusSync()V
    invoke-static {}, Lcom/onesignal/SyncService;->access$000()V

    iget-object v0, p0, Lcom/onesignal/SyncService$2$1;->this$1:Lcom/onesignal/SyncService$2;

    iget-object v0, v0, Lcom/onesignal/SyncService$2;->this$0:Lcom/onesignal/SyncService;

    invoke-virtual {v0}, Lcom/onesignal/SyncService;->stopSelf()V

    return-void
.end method
