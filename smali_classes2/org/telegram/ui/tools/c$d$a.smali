.class Lorg/telegram/ui/tools/c$d$a;
.super Ljava/lang/Object;
.source "CacheCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/c$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final synthetic b:Lorg/telegram/ui/tools/c$d;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/c$d;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/c$d$a;->b:Lorg/telegram/ui/tools/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/telegram/ui/tools/c$d$a;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/tools/c$d$a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/tools/c$d$a;->b:Lorg/telegram/ui/tools/c$d;

    iget-object v0, v0, Lorg/telegram/ui/tools/c$d;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/tools/c$d$a;->b:Lorg/telegram/ui/tools/c$d;

    iget-object v0, v0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/c$d$a;->b:Lorg/telegram/ui/tools/c$d;

    iget-object v1, v1, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080666

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/telegram/ui/tools/c$d$a;->b:Lorg/telegram/ui/tools/c$d;

    iget-object v0, v0, Lorg/telegram/ui/tools/c$d;->b:Lorg/telegram/ui/tools/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/c;->finishFragment()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
