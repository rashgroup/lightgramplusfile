.class public Lorg/telegram/ui/tools/b/b;
.super Ljava/lang/Object;
.source "TabModel2.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/tools/b/b;->a:I

    iput p2, p0, Lorg/telegram/ui/tools/b/b;->b:I

    invoke-static {}, Lorg/telegram/ui/tools/a/f;->a()Lorg/telegram/ui/tools/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/b/b;->c:I

    invoke-static {}, Lorg/telegram/ui/tools/a/f;->a()Lorg/telegram/ui/tools/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/b/b;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/b/b;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/b/b;->d:I

    return v0
.end method
