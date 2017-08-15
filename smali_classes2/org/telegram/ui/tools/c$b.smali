.class Lorg/telegram/ui/tools/c$b;
.super Ljava/lang/Object;
.source "CacheCleaner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/c$b;->a:Lorg/telegram/ui/tools/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/tools/c$b;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->b(Lorg/telegram/ui/tools/c;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$b;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->c(Lorg/telegram/ui/tools/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/c$b;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->d(Lorg/telegram/ui/tools/c;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
