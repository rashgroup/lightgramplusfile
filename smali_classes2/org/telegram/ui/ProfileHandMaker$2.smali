.class Lorg/telegram/ui/ProfileHandMaker$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ProfileHandMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileHandMaker;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileHandMaker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileHandMaker;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileHandMaker$2;->this$0:Lorg/telegram/ui/ProfileHandMaker;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ProfileHandMaker$2;->this$0:Lorg/telegram/ui/ProfileHandMaker;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileHandMaker;->finishFragment()V

    return-void
.end method
