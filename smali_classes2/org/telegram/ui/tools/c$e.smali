.class Lorg/telegram/ui/tools/c$e;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CacheCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/c$e;->a:Lorg/telegram/ui/tools/c;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/c$e;->a:Lorg/telegram/ui/tools/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/c;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/tools/c$e;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->m(Lorg/telegram/ui/tools/c;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/c$e;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->n(Lorg/telegram/ui/tools/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/tools/c$e;->a:Lorg/telegram/ui/tools/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/c;->d(Lorg/telegram/ui/tools/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
