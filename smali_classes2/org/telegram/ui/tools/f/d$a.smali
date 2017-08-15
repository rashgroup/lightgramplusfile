.class Lorg/telegram/ui/tools/f/d$a;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SpecialNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/d;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/d;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/d$a;->a:Lorg/telegram/ui/tools/f/d;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$a;->a:Lorg/telegram/ui/tools/f/d;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/f/d;->finishFragment()V

    :cond_0
    return-void
.end method
