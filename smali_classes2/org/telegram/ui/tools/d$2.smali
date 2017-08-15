.class Lorg/telegram/ui/tools/d$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChatAc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d$2;->a:Lorg/telegram/ui/tools/d;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d$2;->a:Lorg/telegram/ui/tools/d;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d;->finishFragment()V

    :cond_0
    return-void
.end method
