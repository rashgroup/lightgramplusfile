.class Lorg/telegram/ui/BlockedUsersActivity$3;
.super Ljava/lang/Object;
.source "BlockedUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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

    iput-object p1, p0, Lorg/telegram/ui/BlockedUsersActivity$3;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/BlockedUsersActivity$3;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/BlockedUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity$3;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lorg/telegram/ui/BlockedUsersActivity;->selectedUserId:I
    invoke-static {v1, v0}, Lorg/telegram/ui/BlockedUsersActivity;->access$002(Lorg/telegram/ui/BlockedUsersActivity;I)I

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity$3;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/BlockedUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v1, v5, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "Unblock"

    const v4, 0x7f080541

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/telegram/ui/BlockedUsersActivity$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/BlockedUsersActivity$3$1;-><init>(Lorg/telegram/ui/BlockedUsersActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity$3;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/BlockedUsersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
