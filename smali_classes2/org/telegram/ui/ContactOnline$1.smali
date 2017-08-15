.class Lorg/telegram/ui/ContactOnline$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ContactOnline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactOnline;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactOnline;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactOnline;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ContactOnline$1;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$1;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v0}, Lorg/telegram/ui/ContactOnline;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v1, v3}, Lorg/telegram/messenger/CContactsController;->processLoadedContacts2(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method
