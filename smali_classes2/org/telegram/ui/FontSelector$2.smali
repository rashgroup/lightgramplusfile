.class Lorg/telegram/ui/FontSelector$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "FontSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FontSelector;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FontSelector;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FontSelector;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FontSelector$2;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$2;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->finishFragment()V

    return-void
.end method
