.class Lorg/telegram/ui/DialogsActivityF$4;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DialogsActivityF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivityF;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivityF;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivityF;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$4;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$4;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->onlySelect:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$600(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$4;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivityF;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$4;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1400(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$4;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1500(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_0

    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v2, :cond_3

    :goto_1
    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$4;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # invokes: Lorg/telegram/ui/DialogsActivityF;->updatePasscodeButton()V
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$800(Lorg/telegram/ui/DialogsActivityF;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
