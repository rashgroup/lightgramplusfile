.class Lorg/telegram/ui/tools/c$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/c$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;J)J

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->f(Lorg/telegram/ui/tools/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/tools/c;->b(Lorg/telegram/ui/tools/c;J)J

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->f(Lorg/telegram/ui/tools/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/tools/c;->c(Lorg/telegram/ui/tools/c;J)J

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->f(Lorg/telegram/ui/tools/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/tools/c;->d(Lorg/telegram/ui/tools/c;J)J

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->f(Lorg/telegram/ui/tools/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/tools/c;->e(Lorg/telegram/ui/tools/c;J)J

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->f(Lorg/telegram/ui/tools/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Ljava/io/File;I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/tools/c;->f(Lorg/telegram/ui/tools/c;J)J

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v1}, Lorg/telegram/ui/tools/c;->g(Lorg/telegram/ui/tools/c;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v1}, Lorg/telegram/ui/tools/c;->h(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v1}, Lorg/telegram/ui/tools/c;->i(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v1}, Lorg/telegram/ui/tools/c;->j(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v1}, Lorg/telegram/ui/tools/c;->k(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v1}, Lorg/telegram/ui/tools/c;->l(Lorg/telegram/ui/tools/c;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/tools/c;->g(Lorg/telegram/ui/tools/c;J)J

    new-instance v0, Lorg/telegram/ui/tools/c$c$a;

    invoke-direct {v0, p0}, Lorg/telegram/ui/tools/c$c$a;-><init>(Lorg/telegram/ui/tools/c$c;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
