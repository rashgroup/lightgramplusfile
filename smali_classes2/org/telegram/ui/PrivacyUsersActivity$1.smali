.class Lorg/telegram/ui/PrivacyUsersActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PrivacyUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$000(Lorg/telegram/ui/PrivacyUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "isAlwaysShare"

    :goto_1
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "isGroup"

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->isGroup:Z
    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$100(Lorg/telegram/ui/PrivacyUsersActivity;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v1, Lorg/telegram/ui/PrivacyUsersActivity$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PrivacyUsersActivity$1$1;-><init>(Lorg/telegram/ui/PrivacyUsersActivity$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PrivacyUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "isNeverShare"

    goto :goto_1
.end method
