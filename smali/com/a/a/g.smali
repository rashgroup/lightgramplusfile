.class final enum Lcom/a/a/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/a/g;

.field public static final enum b:Lcom/a/a/g;

.field public static final enum c:Lcom/a/a/g;

.field private static final synthetic e:[Lcom/a/a/g;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/a/a/g;

    const-string/jumbo v1, "Default"

    const-string/jumbo v2, "default"

    invoke-direct {v0, v1, v3, v2}, Lcom/a/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/g;->a:Lcom/a/a/g;

    new-instance v0, Lcom/a/a/g;

    const-string/jumbo v1, "HTTP"

    const-string/jumbo v2, "http"

    invoke-direct {v0, v1, v4, v2}, Lcom/a/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/g;->b:Lcom/a/a/g;

    new-instance v0, Lcom/a/a/g;

    const-string/jumbo v1, "Navigation"

    const-string/jumbo v2, "navigation"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/g;->c:Lcom/a/a/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/g;

    sget-object v1, Lcom/a/a/g;->a:Lcom/a/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/g;->b:Lcom/a/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/g;->c:Lcom/a/a/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/a/g;->e:[Lcom/a/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/a/a/g;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/a/a/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/g;
    .locals 1

    const-class v0, Lcom/a/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/g;

    return-object v0
.end method

.method public static values()[Lcom/a/a/g;
    .locals 1

    sget-object v0, Lcom/a/a/g;->e:[Lcom/a/a/g;

    invoke-virtual {v0}, [Lcom/a/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/g;

    return-object v0
.end method
