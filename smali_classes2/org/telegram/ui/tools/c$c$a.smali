.class Lorg/telegram/ui/tools/c$c$a;
.super Ljava/lang/Object;
.source "CacheCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/c$c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/c$c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/c$c$a;->a:Lorg/telegram/ui/tools/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c$a;->a:Lorg/telegram/ui/tools/c$c;

    iget-object v0, v0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/c;->a(Lorg/telegram/ui/tools/c;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c$a;->a:Lorg/telegram/ui/tools/c$c;

    iget-object v0, v0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->e(Lorg/telegram/ui/tools/c;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c$a;->a:Lorg/telegram/ui/tools/c$c;

    iget-object v0, v0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c$a;->a:Lorg/telegram/ui/tools/c$c;

    iget-object v0, v0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/c$c$a;->a:Lorg/telegram/ui/tools/c$c;

    iget-object v0, v0, Lorg/telegram/ui/tools/c$c;->a:Lorg/telegram/ui/tools/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
