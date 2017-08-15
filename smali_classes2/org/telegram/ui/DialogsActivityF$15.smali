.class Lorg/telegram/ui/DialogsActivityF$15;
.super Ljava/lang/Object;
.source "DialogsActivityF.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;


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

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedOnSubDialog(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->onlySelect:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$600(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    int-to-long v2, p1

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/DialogsActivityF;->didSelectResult(JZZ)V
    invoke-static {v0, v2, v3, v1, v6}, Lorg/telegram/ui/DialogsActivityF;->access$1900(Lorg/telegram/ui/DialogsActivityF;JZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-lez p1, :cond_4

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$3000(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$3100(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$1200(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$1200(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    int-to-long v4, p1

    # setter for: Lorg/telegram/ui/DialogsActivityF;->openedDialogId:J
    invoke-static {v2, v4, v5}, Lorg/telegram/ui/DialogsActivityF;->access$2202(Lorg/telegram/ui/DialogsActivityF;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    const/16 v2, 0x200

    # invokes: Lorg/telegram/ui/DialogsActivityF;->updateVisibleRows(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivityF;->access$2300(Lorg/telegram/ui/DialogsActivityF;I)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchString:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$200(Lorg/telegram/ui/DialogsActivityF;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivityF;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "chat_id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivityF;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method

.method public needRemoveHint(I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivityF;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivityF;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "AppName"

    const v3, 0x7f080086

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v2, "ChatHintsDelete"

    const v3, 0x7f08015e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v0, "OK"

    const v2, 0x7f0803c8

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/DialogsActivityF$15$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DialogsActivityF$15$1;-><init>(Lorg/telegram/ui/DialogsActivityF$15;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v0, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivityF;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public searchStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$000(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$900(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$15;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_0
.end method
