.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;
.super Landroid/os/Handler;
.source "AttachmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader;->downloadNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    # getter for: Lnet/hockeyapp/android/tasks/AttachmentDownloader;->queue:Ljava/util/Queue;
    invoke-static {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$200(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->consumeRetry()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;

    invoke-direct {v1, p0, v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;-><init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    const/4 v1, 0x0

    # setter for: Lnet/hockeyapp/android/tasks/AttachmentDownloader;->downloadRunning:Z
    invoke-static {v0, v1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$402(Lnet/hockeyapp/android/tasks/AttachmentDownloader;Z)Z

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    # invokes: Lnet/hockeyapp/android/tasks/AttachmentDownloader;->downloadNext()V
    invoke-static {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$300(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)V

    return-void
.end method
