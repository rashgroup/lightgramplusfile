.class Lorg/telegram/ui/BlockedUsersActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "BlockedUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/BlockedUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/BlockedUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/BlockedUsersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/BlockedUsersActivity$1;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/BlockedUsersActivity$1;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/BlockedUsersActivity;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "onlyUsers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "destroyAfterSelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "returnAsResult"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/telegram/ui/BlockedUsersActivity$1;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/BlockedUsersActivity$1;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/BlockedUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
