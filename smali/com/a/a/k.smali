.class Lcom/a/a/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/a/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/j;-><init>(Lcom/a/a/b;)V

    sput-object v0, Lcom/a/a/k;->a:Lcom/a/a/j;

    return-void
.end method

.method static synthetic a()Lcom/a/a/j;
    .locals 1

    sget-object v0, Lcom/a/a/k;->a:Lcom/a/a/j;

    return-object v0
.end method
