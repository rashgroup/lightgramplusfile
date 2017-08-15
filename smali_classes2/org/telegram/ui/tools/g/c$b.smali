.class Lorg/telegram/ui/tools/g/c$b;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/g/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/g/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/g/c$b;->a:Lorg/telegram/ui/tools/g/c;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$b;->a:Lorg/telegram/ui/tools/g/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/c;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$b;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->c(Lorg/telegram/ui/tools/g/c;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$b;->a:Lorg/telegram/ui/tools/g/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/c;->a()V

    goto :goto_0
.end method
