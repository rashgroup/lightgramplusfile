.class public final enum Lco/ronash/pushe/b/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lco/ronash/pushe/b/c;

.field public static final enum b:Lco/ronash/pushe/b/c;

.field public static final enum c:Lco/ronash/pushe/b/c;

.field public static final enum d:Lco/ronash/pushe/b/c;

.field public static final enum e:Lco/ronash/pushe/b/c;

.field public static final enum f:Lco/ronash/pushe/b/c;

.field private static final synthetic i:[Lco/ronash/pushe/b/c;


# instance fields
.field private g:Ljava/lang/Class;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lco/ronash/pushe/b/c;

    const-string/jumbo v1, "FLOATING"

    const-class v2, Lco/ronash/pushe/b/a/d;

    const-string/jumbo v3, "t5"

    invoke-direct {v0, v1, v5, v2, v3}, Lco/ronash/pushe/b/c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lco/ronash/pushe/b/c;->a:Lco/ronash/pushe/b/c;

    new-instance v0, Lco/ronash/pushe/b/c;

    const-string/jumbo v1, "VARIABLE"

    const-class v2, Lco/ronash/pushe/b/a/f;

    const-string/jumbo v3, "t4"

    invoke-direct {v0, v1, v6, v2, v3}, Lco/ronash/pushe/b/c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lco/ronash/pushe/b/c;->b:Lco/ronash/pushe/b/c;

    new-instance v0, Lco/ronash/pushe/b/c;

    const-string/jumbo v1, "CONSTANT"

    const-class v2, Lco/ronash/pushe/b/a/c;

    const-string/jumbo v3, "t3"

    invoke-direct {v0, v1, v7, v2, v3}, Lco/ronash/pushe/b/c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lco/ronash/pushe/b/c;->c:Lco/ronash/pushe/b/c;

    new-instance v0, Lco/ronash/pushe/b/c;

    const-string/jumbo v1, "APP_LIST"

    const-class v2, Lco/ronash/pushe/b/a/a;

    const-string/jumbo v3, "t14"

    invoke-direct {v0, v1, v8, v2, v3}, Lco/ronash/pushe/b/c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lco/ronash/pushe/b/c;->d:Lco/ronash/pushe/b/c;

    new-instance v0, Lco/ronash/pushe/b/c;

    const-string/jumbo v1, "WIFI_LIST"

    const-class v2, Lco/ronash/pushe/b/a/g;

    const-string/jumbo v3, "t16"

    invoke-direct {v0, v1, v9, v2, v3}, Lco/ronash/pushe/b/c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lco/ronash/pushe/b/c;->e:Lco/ronash/pushe/b/c;

    new-instance v0, Lco/ronash/pushe/b/c;

    const-string/jumbo v1, "CELL_INFO"

    const/4 v2, 0x5

    const-class v3, Lco/ronash/pushe/b/a/e;

    const-string/jumbo v4, "t6"

    invoke-direct {v0, v1, v2, v3, v4}, Lco/ronash/pushe/b/c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lco/ronash/pushe/b/c;->f:Lco/ronash/pushe/b/c;

    const/4 v0, 0x6

    new-array v0, v0, [Lco/ronash/pushe/b/c;

    sget-object v1, Lco/ronash/pushe/b/c;->a:Lco/ronash/pushe/b/c;

    aput-object v1, v0, v5

    sget-object v1, Lco/ronash/pushe/b/c;->b:Lco/ronash/pushe/b/c;

    aput-object v1, v0, v6

    sget-object v1, Lco/ronash/pushe/b/c;->c:Lco/ronash/pushe/b/c;

    aput-object v1, v0, v7

    sget-object v1, Lco/ronash/pushe/b/c;->d:Lco/ronash/pushe/b/c;

    aput-object v1, v0, v8

    sget-object v1, Lco/ronash/pushe/b/c;->e:Lco/ronash/pushe/b/c;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lco/ronash/pushe/b/c;->f:Lco/ronash/pushe/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lco/ronash/pushe/b/c;->i:[Lco/ronash/pushe/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lco/ronash/pushe/b/c;->g:Ljava/lang/Class;

    iput-object p4, p0, Lco/ronash/pushe/b/c;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lco/ronash/pushe/b/c;
    .locals 5

    invoke-static {}, Lco/ronash/pushe/b/c;->values()[Lco/ronash/pushe/b/c;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lco/ronash/pushe/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lco/ronash/pushe/b/c;
    .locals 1

    const-class v0, Lco/ronash/pushe/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/b/c;

    return-object v0
.end method

.method public static values()[Lco/ronash/pushe/b/c;
    .locals 1

    sget-object v0, Lco/ronash/pushe/b/c;->i:[Lco/ronash/pushe/b/c;

    invoke-virtual {v0}, [Lco/ronash/pushe/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/ronash/pushe/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/b/c;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/b/c;->h:Ljava/lang/String;

    return-object v0
.end method
