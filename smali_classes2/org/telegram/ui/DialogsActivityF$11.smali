.class Lorg/telegram/ui/DialogsActivityF$11;
.super Ljava/lang/Object;
.source "DialogsActivityF.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->onlySelect:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$600(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$000(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$900(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivityF;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$900(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$000(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$100(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivityF;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "ClearSearch"

    const v2, 0x7f080172

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "ClearButton"

    const v2, 0x7f08016c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivityF$11$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivityF$11$1;-><init>(Lorg/telegram/ui/DialogsActivityF$11;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivityF;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # invokes: Lorg/telegram/ui/DialogsActivityF;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$2400(Lorg/telegram/ui/DialogsActivityF;)Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p2, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    # setter for: Lorg/telegram/ui/DialogsActivityF;->selectedDialog:J
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/DialogsActivityF;->access$2502(Lorg/telegram/ui/DialogsActivityF;J)J

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivityF;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$2500(Lorg/telegram/ui/DialogsActivityF;)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$2500(Lorg/telegram/ui/DialogsActivityF;)J

    move-result-wide v6

    const/16 v1, 0x20

    shr-long/2addr v6, v1

    long-to-int v6, v6

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    const/4 v1, 0x3

    new-array v3, v1, [I

    const/4 v6, 0x0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v1, :cond_b

    const v1, 0x7f02009d

    :goto_1
    aput v1, v3, v6

    const/4 v1, 0x1

    const v6, 0x7f020095

    aput v6, v3, v1

    const/4 v1, 0x2

    const v6, 0x7f02009b

    aput v6, v3, v1

    if-eqz v2, :cond_f

    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v7, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_9
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "UnpinFromTop"

    const v7, 0x7f080548

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v1, v6

    const/4 v0, 0x1

    const-string/jumbo v6, "ClearHistoryCache"

    const v7, 0x7f08016e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    const/4 v6, 0x2

    if-eqz v2, :cond_a

    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_e

    :cond_a
    const-string/jumbo v0, "LeaveMegaMenu"

    const v7, 0x7f0802cf

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v1, v6

    move-object v0, v1

    :goto_4
    new-instance v1, Lorg/telegram/ui/DialogsActivityF$11$2;

    invoke-direct {v1, p0, v4, v2}, Lorg/telegram/ui/DialogsActivityF$11$2;-><init>(Lorg/telegram/ui/DialogsActivityF$11;ZLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v5, v0, v3, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivityF;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    const v1, 0x7f02009c

    goto :goto_1

    :cond_c
    const-string/jumbo v0, "PinToTop"

    const v7, 0x7f08044c

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    :cond_e
    const-string/jumbo v0, "DeleteMegaMenu"

    const v7, 0x7f0801cc

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v7, :cond_10

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_10
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "UnpinFromTop"

    const v7, 0x7f080548

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    aput-object v0, v1, v6

    const/4 v0, 0x1

    const-string/jumbo v6, "ClearHistoryCache"

    const v7, 0x7f08016e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    const/4 v6, 0x2

    if-eqz v2, :cond_11

    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_14

    :cond_11
    const-string/jumbo v0, "LeaveChannelMenu"

    const v7, 0x7f0802cd

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    aput-object v0, v1, v6

    move-object v0, v1

    goto :goto_4

    :cond_12
    const-string/jumbo v0, "PinToTop"

    const v7, 0x7f08044c

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    :cond_14
    const-string/jumbo v0, "ChannelDeleteMenu"

    const v7, 0x7f080118

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_15
    if-gez v2, :cond_18

    const/4 v1, 0x1

    if-eq v6, v1, :cond_18

    const/4 v1, 0x1

    move v3, v1

    :goto_8
    const/4 v1, 0x0

    if-nez v3, :cond_16

    if-lez v2, :cond_16

    const/4 v7, 0x1

    if-eq v6, v7, :cond_16

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    :cond_16
    if-eqz v1, :cond_19

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_9
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v8, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v8, v2}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_17
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "UnpinFromTop"

    const v8, 0x7f080548

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_b
    aput-object v2, v6, v7

    const/4 v2, 0x1

    const-string/jumbo v7, "ClearHistory"

    const v8, 0x7f08016d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    if-eqz v3, :cond_1d

    const-string/jumbo v2, "DeleteChat"

    const v8, 0x7f0801c4

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_c
    aput-object v2, v6, v7

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v7, 0x0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_1f

    const v0, 0x7f02009d

    :goto_d
    aput v0, v2, v7

    const/4 v0, 0x1

    const v7, 0x7f020095

    aput v7, v2, v0

    const/4 v7, 0x2

    if-eqz v3, :cond_20

    const v0, 0x7f02009b

    :goto_e
    aput v0, v2, v7

    new-instance v0, Lorg/telegram/ui/DialogsActivityF$11$3;

    invoke-direct {v0, p0, v4, v3, v1}, Lorg/telegram/ui/DialogsActivityF$11$3;-><init>(Lorg/telegram/ui/DialogsActivityF$11;ZZZ)V

    invoke-virtual {v5, v6, v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivityF;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    :cond_18
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_8

    :cond_19
    const/4 v1, 0x0

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    goto :goto_a

    :cond_1b
    const-string/jumbo v2, "PinToTop"

    const v8, 0x7f08044c

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_1c
    const/4 v2, 0x0

    goto :goto_b

    :cond_1d
    if-eqz v1, :cond_1e

    const-string/jumbo v2, "DeleteAndStop"

    const v8, 0x7f0801c2

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_1e
    const-string/jumbo v2, "Delete"

    const v8, 0x7f0801bb

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_1f
    const v0, 0x7f02009c

    goto :goto_d

    :cond_20
    const v0, 0x7f020096

    goto :goto_e
.end method
