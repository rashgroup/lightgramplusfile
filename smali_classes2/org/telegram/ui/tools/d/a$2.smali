.class Lorg/telegram/ui/tools/d/a$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "AddRemmber.java"


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

    iput-object p1, p0, Lorg/telegram/ui/tools/d/a$2;->a:Lorg/telegram/ui/tools/d/a;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$2;->a:Lorg/telegram/ui/tools/d/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a;->finishFragment()V

    return-void
.end method
