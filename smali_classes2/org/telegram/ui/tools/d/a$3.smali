.class Lorg/telegram/ui/tools/d/a$3;
.super Ljava/lang/Object;
.source "AddRemmber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d/a;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/a$3;->a:Lorg/telegram/ui/tools/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$3;->a:Lorg/telegram/ui/tools/d/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a;->a()V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$3;->a:Lorg/telegram/ui/tools/d/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a;->finishFragment()V

    return-void
.end method
