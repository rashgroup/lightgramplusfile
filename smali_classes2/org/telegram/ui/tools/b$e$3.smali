.class Lorg/telegram/ui/tools/b$e$3;
.super Ljava/util/TimerTask;
.source "AlertShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b$e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lorg/telegram/ui/tools/b$e;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b$e;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$e$3;->c:Lorg/telegram/ui/tools/b$e;

    iput-object p2, p0, Lorg/telegram/ui/tools/b$e$3;->a:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/tools/b$e$3;->b:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/tools/b$e$3;->cancel()Z

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$3;->c:Lorg/telegram/ui/tools/b$e;

    invoke-static {v0}, Lorg/telegram/ui/tools/b$e;->c(Lorg/telegram/ui/tools/b$e;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$3;->c:Lorg/telegram/ui/tools/b$e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/b$e;->a(Lorg/telegram/ui/tools/b$e;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$3;->c:Lorg/telegram/ui/tools/b$e;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e$3;->a:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/tools/b$e$3;->b:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/tools/b$e;->a(Lorg/telegram/ui/tools/b$e;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
