.class public Lorg/telegram/ui/tools/h/a/b;
.super Ljava/lang/Object;
.source "ShamsiDate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/ui/tools/h/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0*1[34]\\d\\d[/\\\\-]0*([1-9]|1[012])[/\\\\-]0*([1-9]|[12]\\d|3[01])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/tools/h/a/b;->a:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "0*(|[12])\\d:0*(|[1-5])\\d(:(0*(|[1-5])\\d)|)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/tools/h/a/b;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/h/a/b;->a(I)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/tools/h/a/b;->c(I)V

    invoke-direct {p0, p3}, Lorg/telegram/ui/tools/h/a/b;->d(I)V

    invoke-direct {p0, p4}, Lorg/telegram/ui/tools/h/a/b;->e(I)V

    invoke-direct {p0, p5}, Lorg/telegram/ui/tools/h/a/b;->f(I)V

    invoke-direct {p0, p6}, Lorg/telegram/ui/tools/h/a/b;->g(I)V

    return-void
.end method

.method private a(I)V
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/tools/h/a/b;->i:I

    rem-int/lit8 v0, p1, 0x64

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/h/a/b;->b(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Year must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)V
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/tools/h/a/b;->h:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Small Year must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Month must be between 1 and 12"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/ui/tools/h/a/b;->f:I

    return-void
.end method

.method private d(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Day must be between 1 and 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/ui/tools/h/a/b;->c:I

    return-void
.end method

.method private e(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Hour must be between 0 and 23"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/ui/tools/h/a/b;->d:I

    return-void
.end method

.method private f(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minute must be between 0 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/ui/tools/h/a/b;->e:I

    return-void
.end method

.method private g(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Second must be between 0 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/ui/tools/h/a/b;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->i:I

    return v0
.end method

.method public a(Lorg/telegram/ui/tools/h/a/b;)I
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Object must not be null and must be of type ShamsiDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->i:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->i:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->i:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->i:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->f:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->f:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->f:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->f:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->c:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->c:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->c:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->c:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->d:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->d:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->d:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->d:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->e:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->e:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->e:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->e:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->g:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->g:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->g:I

    iget v1, p1, Lorg/telegram/ui/tools/h/a/b;->g:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(C)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->c:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/ui/tools/h/a/b;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/h/a/b;->a(Lorg/telegram/ui/tools/h/a/b;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/h/a/b;->g:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/h/a/b;->a(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/h/a/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
