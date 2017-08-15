.class Lorg/telegram/ui/tools/d/c$b;
.super Ljava/lang/Object;
.source "RVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lorg/telegram/ui/tools/d/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/c;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/c$b;->b:Lorg/telegram/ui/tools/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/ui/tools/d/c$b;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/c$b;->b:Lorg/telegram/ui/tools/d/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/c;->a(Lorg/telegram/ui/tools/d/c;)Lorg/telegram/ui/tools/d/c$f;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/tools/d/c$b;->a:I

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/tools/d/c$f;->a(Landroid/view/View;I)V

    return-void
.end method
