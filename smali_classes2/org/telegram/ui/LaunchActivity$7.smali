.class Lorg/telegram/ui/LaunchActivity$7;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didAcceptedPassword()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z
    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$1100(Lorg/telegram/ui/LaunchActivity;)Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$1200(Lorg/telegram/ui/LaunchActivity;)Z

    move-result v3

    # invokes: Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z
    invoke-static {v0, v1, v2, v3, v5}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZ)Z

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$1002(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    :cond_1
    return-void
.end method
