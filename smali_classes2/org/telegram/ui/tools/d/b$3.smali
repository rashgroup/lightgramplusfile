.class Lorg/telegram/ui/tools/d/b$3;
.super Ljava/lang/Object;
.source "DownloadManeger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d/b;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/b$3;->a:Lorg/telegram/ui/tools/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$3;->a:Lorg/telegram/ui/tools/d/b;

    new-instance v1, Lorg/telegram/ui/tools/d/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/tools/d/a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/d/b;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
