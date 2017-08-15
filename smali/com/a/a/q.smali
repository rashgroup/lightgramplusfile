.class Lcom/a/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Lcom/a/a/j;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/a/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/q;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Lcom/a/a/q;->a:Lcom/a/a/j;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/a/a/a;->b()Lcom/a/a/a;

    move-result-object v1

    new-instance v0, Lcom/a/a/m;

    sget-object v2, Lcom/a/a/o;->a:Lcom/a/a/o;

    invoke-direct {v0, p2, v2}, Lcom/a/a/m;-><init>(Ljava/lang/Throwable;Lcom/a/a/o;)V

    invoke-static {v1}, Lcom/a/a/a;->d(Lcom/a/a/a;)Lcom/a/a/e;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/a/a/m;->c(Ljava/lang/String;)Lcom/a/a/m;

    invoke-static {v1}, Lcom/a/a/a;->e(Lcom/a/a/a;)Lcom/a/a/n;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/a/a/a;->e(Lcom/a/a/a;)Lcom/a/a/n;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/a/a/n;->a(Lcom/a/a/m;)Lcom/a/a/m;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/a/a/m;->a(Lcom/a/a/m;)Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "contexts"

    invoke-static {v1}, Lcom/a/a/a;->f(Lcom/a/a/a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/a/a/q;->a:Lcom/a/a/j;

    new-instance v2, Lcom/a/a/p;

    invoke-direct {v2, v0}, Lcom/a/a/p;-><init>(Lcom/a/a/m;)V

    invoke-virtual {v1, v2}, Lcom/a/a/j;->a(Lcom/a/a/p;)V

    :goto_0
    iget-object v0, p0, Lcom/a/a/q;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const-string/jumbo v0, "Sentry"

    const-string/jumbo v1, "SentryEventBuilder in uncaughtException is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
