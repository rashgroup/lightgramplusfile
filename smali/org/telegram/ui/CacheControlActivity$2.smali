.class Lorg/telegram/ui/CacheControlActivity$2;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->cleanupFolders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity$2;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    move v9, v3

    move v0, v3

    :goto_0
    const/4 v2, 0x6

    if-ge v9, v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->clear:[Z
    invoke-static {v2}, Lorg/telegram/ui/CacheControlActivity;->access$1100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v9

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-nez v9, :cond_5

    move v4, v3

    move v6, v3

    :goto_2
    const/4 v2, -0x1

    if-eq v6, v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_c

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_c

    move v2, v3

    :goto_3
    array-length v11, v10

    if-ge v2, v11, :cond_c

    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    if-eq v4, v1, :cond_2

    if-ne v4, v5, :cond_b

    :cond_2
    const-string/jumbo v12, ".mp3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, ".m4a"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_3
    if-ne v4, v1, :cond_b

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    if-ne v9, v1, :cond_6

    move v4, v3

    move v6, v5

    goto :goto_2

    :cond_6
    if-ne v9, v5, :cond_7

    move v4, v1

    move v6, v7

    goto :goto_2

    :cond_7
    if-ne v9, v7, :cond_8

    move v4, v5

    move v6, v7

    goto :goto_2

    :cond_8
    if-ne v9, v8, :cond_9

    move v4, v3

    move v6, v1

    goto :goto_2

    :cond_9
    const/4 v4, 0x5

    if-ne v9, v4, :cond_13

    move v4, v3

    move v6, v8

    goto :goto_2

    :cond_a
    if-eq v4, v5, :cond_4

    :cond_b
    const-string/jumbo v12, ".nomedia"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_4

    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c
    if-ne v6, v8, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v2, v6, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v10

    # setter for: Lorg/telegram/ui/CacheControlActivity;->cacheSize:J
    invoke-static {v0, v10, v11}, Lorg/telegram/ui/CacheControlActivity;->access$002(Lorg/telegram/ui/CacheControlActivity;J)J

    move v0, v1

    goto/16 :goto_1

    :cond_d
    if-ne v6, v1, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v6, v10, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v10

    # setter for: Lorg/telegram/ui/CacheControlActivity;->audioSize:J
    invoke-static {v2, v10, v11}, Lorg/telegram/ui/CacheControlActivity;->access$702(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_e
    if-ne v6, v7, :cond_10

    if-ne v4, v1, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v6, v10, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v10

    # setter for: Lorg/telegram/ui/CacheControlActivity;->documentsSize:J
    invoke-static {v2, v10, v11}, Lorg/telegram/ui/CacheControlActivity;->access$502(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v6, v10, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v10

    # setter for: Lorg/telegram/ui/CacheControlActivity;->musicSize:J
    invoke-static {v2, v10, v11}, Lorg/telegram/ui/CacheControlActivity;->access$602(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_10
    if-nez v6, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v2, v6, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v10

    # setter for: Lorg/telegram/ui/CacheControlActivity;->photoSize:J
    invoke-static {v0, v10, v11}, Lorg/telegram/ui/CacheControlActivity;->access$302(Lorg/telegram/ui/CacheControlActivity;J)J

    move v0, v1

    goto/16 :goto_1

    :cond_11
    if-ne v6, v5, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v6, v10, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v10

    # setter for: Lorg/telegram/ui/CacheControlActivity;->videoSize:J
    invoke-static {v2, v10, v11}, Lorg/telegram/ui/CacheControlActivity;->access$402(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_1

    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheSize:J
    invoke-static {v2}, Lorg/telegram/ui/CacheControlActivity;->access$000(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->videoSize:J
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->audioSize:J
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->photoSize:J
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->documentsSize:J
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->musicSize:J
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    # setter for: Lorg/telegram/ui/CacheControlActivity;->totalSize:J
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/CacheControlActivity;->access$802(Lorg/telegram/ui/CacheControlActivity;J)J

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$2$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/CacheControlActivity$2$1;-><init>(Lorg/telegram/ui/CacheControlActivity$2;Z)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_13
    move v4, v3

    move v6, v2

    goto/16 :goto_2
.end method
