.class Lorg/telegram/messenger/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileDidFailedLoad(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$2$5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$2$5;-><init>(Lorg/telegram/messenger/ImageLoader$2;Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fileDidFailedUpload(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$2$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$2$3;-><init>(Lorg/telegram/messenger/ImageLoader$2;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$2$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/ImageLoader$2$4;-><init>(Lorg/telegram/messenger/ImageLoader$2;Ljava/io/File;Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fileDidUploaded(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BJ)V
    .locals 10

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$2$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/ImageLoader$2$2;-><init>(Lorg/telegram/messenger/ImageLoader$2;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fileLoadProgressChanged(Ljava/lang/String;F)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2600(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2600(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # setter for: Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$2602(Lorg/telegram/messenger/ImageLoader;J)J

    new-instance v0, Lorg/telegram/messenger/ImageLoader$2$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$2$6;-><init>(Lorg/telegram/messenger/ImageLoader$2;Ljava/lang/String;F)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public fileUploadProgressChanged(Ljava/lang/String;FZ)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2600(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2600(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$2;->this$0:Lorg/telegram/messenger/ImageLoader;

    # setter for: Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$2602(Lorg/telegram/messenger/ImageLoader;J)J

    new-instance v0, Lorg/telegram/messenger/ImageLoader$2$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$2$1;-><init>(Lorg/telegram/messenger/ImageLoader$2;Ljava/lang/String;FZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
