.class Lorg/telegram/ui/tools/c$d;
.super Ljava/lang/Object;
.source "CacheCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/c$d$a;
    }
.end annotation


# instance fields
.field final a:Landroid/app/ProgressDialog;

.field final synthetic b:Lorg/telegram/ui/tools/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/c;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/tools/c$d;->a:Landroid/app/ProgressDialog;

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

    if-ge v9, v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {v2}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;)[Z

    move-result-object v2

    aget-boolean v2, v2, v9

    if-eqz v2, :cond_b

    const/4 v2, -0x1

    if-nez v9, :cond_4

    move v4, v3

    move v6, v3

    :goto_1
    const/4 v2, -0x1

    if-eq v6, v2, :cond_b

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_a

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_a

    move v2, v3

    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_a

    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    if-eq v4, v1, :cond_0

    if-ne v4, v5, :cond_2

    :cond_0
    const-string/jumbo v12, ".mp3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, ".m4a"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_1
    if-ne v4, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_3
    const-string/jumbo v12, ".nomedia"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_3

    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-ne v9, v1, :cond_5

    move v4, v3

    move v6, v5

    goto :goto_1

    :cond_5
    if-ne v9, v5, :cond_6

    move v4, v1

    move v6, v7

    goto :goto_1

    :cond_6
    if-ne v9, v7, :cond_7

    move v4, v5

    move v6, v7

    goto :goto_1

    :cond_7
    if-ne v9, v8, :cond_8

    move v4, v3

    move v6, v1

    goto :goto_1

    :cond_8
    const/4 v4, 0x5

    if-ne v9, v4, :cond_12

    move v4, v3

    move v6, v8

    goto :goto_1

    :cond_9
    if-ne v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    :cond_a
    if-ne v6, v8, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    iget-object v2, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;J)J

    move v0, v1

    :cond_b
    :goto_4
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    :cond_c
    if-ne v6, v1, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    iget-object v6, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v6, v10, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v10

    invoke-static {v2, v10, v11}, Lorg/telegram/ui/tools/c;->f(Lorg/telegram/ui/tools/c;J)J

    goto :goto_4

    :cond_d
    if-ne v6, v7, :cond_f

    if-ne v4, v1, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    iget-object v6, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v6, v10, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v10

    invoke-static {v2, v10, v11}, Lorg/telegram/ui/tools/c;->d(Lorg/telegram/ui/tools/c;J)J

    goto :goto_4

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    iget-object v6, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v6, v10, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v10

    invoke-static {v2, v10, v11}, Lorg/telegram/ui/tools/c;->e(Lorg/telegram/ui/tools/c;J)J

    goto :goto_4

    :cond_f
    if-nez v6, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    iget-object v2, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lorg/telegram/ui/tools/c;->b(Lorg/telegram/ui/tools/c;J)J

    move v0, v1

    goto :goto_4

    :cond_10
    if-ne v6, v5, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    iget-object v6, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v6, v10, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v10

    invoke-static {v2, v10, v11}, Lorg/telegram/ui/tools/c;->c(Lorg/telegram/ui/tools/c;J)J

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    iget-object v2, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {v2}, Lorg/telegram/ui/tools/c;->g(Lorg/telegram/ui/tools/c;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {v4}, Lorg/telegram/ui/tools/c;->h(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {v4}, Lorg/telegram/ui/tools/c;->i(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {v4}, Lorg/telegram/ui/tools/c;->j(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {v4}, Lorg/telegram/ui/tools/c;->k(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-static {v4}, Lorg/telegram/ui/tools/c;->l(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/tools/c;->g(Lorg/telegram/ui/tools/c;J)J

    new-instance v1, Lorg/telegram/ui/tools/c$d$a;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/tools/c$d$a;-><init>(Lorg/telegram/ui/tools/c$d;Z)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_12
    move v4, v3

    move v6, v2

    goto/16 :goto_1
.end method
