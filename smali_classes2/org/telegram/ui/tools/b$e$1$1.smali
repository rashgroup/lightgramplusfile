.class Lorg/telegram/ui/tools/b$e$1$1;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b$e$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/ui/tools/b$e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/b$e$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b$e$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$e$1$1;->a:Lorg/telegram/ui/tools/b$e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/telegram/ui/tools/b$e$a;Lorg/telegram/ui/tools/b$e$a;)I
    .locals 2

    iget v0, p1, Lorg/telegram/ui/tools/b$e$a;->c:I

    iget v1, p2, Lorg/telegram/ui/tools/b$e$a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/telegram/ui/tools/b$e$a;->c:I

    iget v1, p2, Lorg/telegram/ui/tools/b$e$a;->c:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/ui/tools/b$e$a;

    check-cast p2, Lorg/telegram/ui/tools/b$e$a;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/tools/b$e$1$1;->a(Lorg/telegram/ui/tools/b$e$a;Lorg/telegram/ui/tools/b$e$a;)I

    move-result v0

    return v0
.end method
