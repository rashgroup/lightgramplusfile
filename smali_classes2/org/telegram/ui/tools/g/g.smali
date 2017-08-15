.class public Lorg/telegram/ui/tools/g/g;
.super Ljava/lang/Object;
.source "UpdateModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/tools/g/g;->b:Ljava/lang/Long;

    iput p2, p0, Lorg/telegram/ui/tools/g/g;->f:I

    iput-object p3, p0, Lorg/telegram/ui/tools/g/g;->e:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/tools/g/g;->d:Ljava/lang/String;

    iput p5, p0, Lorg/telegram/ui/tools/g/g;->g:I

    iput-boolean p6, p0, Lorg/telegram/ui/tools/g/g;->c:Z

    iput-object p7, p0, Lorg/telegram/ui/tools/g/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/g/g;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/g/g;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/g/g;->c:Z

    return-void
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/g;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/g/g;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/g/g;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/g/g;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/g/g;->g:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/g/g;->c:Z

    return v0
.end method
