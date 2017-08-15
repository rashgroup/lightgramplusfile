.class Lorg/telegram/ui/tools/f/c$a;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SpecialContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/c$a;->a:Lorg/telegram/ui/tools/f/c;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$a;->a:Lorg/telegram/ui/tools/f/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/f/c;->finishFragment()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$a;->a:Lorg/telegram/ui/tools/f/c;

    new-instance v1, Lorg/telegram/ui/tools/f/e;

    invoke-direct {v1}, Lorg/telegram/ui/tools/f/e;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/f/c;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$a;->a:Lorg/telegram/ui/tools/f/c;

    new-instance v1, Lorg/telegram/ui/tools/f/d;

    invoke-direct {v1}, Lorg/telegram/ui/tools/f/d;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/f/c;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
