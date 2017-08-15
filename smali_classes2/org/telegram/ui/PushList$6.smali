.class Lorg/telegram/ui/PushList$6;
.super Ljava/lang/Object;
.source "PushList.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PushList;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PushList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PushList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 12

    const/4 v1, 0x0

    const v11, 0x7f08073d

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->onlySelect:Z
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$1200(Lorg/telegram/ui/PushList;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$2000(Lorg/telegram/ui/PushList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$2100(Lorg/telegram/ui/PushList;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-virtual {v0}, Lorg/telegram/ui/PushList;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$2100(Lorg/telegram/ui/PushList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$2000(Lorg/telegram/ui/PushList;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$1100(Lorg/telegram/ui/PushList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$900(Lorg/telegram/ui/PushList;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v4}, Lorg/telegram/ui/PushList;->access$1100(Lorg/telegram/ui/PushList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$1100(Lorg/telegram/ui/PushList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$1100(Lorg/telegram/ui/PushList;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-virtual {v3}, Lorg/telegram/ui/PushList;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "AppName"

    const v4, 0x7f080086

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v3, "ClearSearch"

    const v4, 0x7f080172

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v3, "ClearButton"

    const v4, 0x7f08016c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PushList$6$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PushList$6$1;-><init>(Lorg/telegram/ui/PushList$6;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0800f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PushList;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_0
    return v2

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # invokes: Lorg/telegram/ui/PushList;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PushList;->access$2200(Lorg/telegram/ui/PushList;)Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p2, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_8

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v4, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    # setter for: Lorg/telegram/ui/PushList;->selectedDialog:J
    invoke-static {v4, v6, v7}, Lorg/telegram/ui/PushList;->access$2302(Lorg/telegram/ui/PushList;J)J

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v4, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-virtual {v4}, Lorg/telegram/ui/PushList;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/PushList;->access$2300(Lorg/telegram/ui/PushList;)J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v4, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    # getter for: Lorg/telegram/ui/PushList;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/PushList;->access$2300(Lorg/telegram/ui/PushList;)J

    move-result-wide v8

    const/16 v4, 0x20

    shr-long/2addr v8, v4

    long-to-int v7, v8

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    if-eqz v4, :cond_b

    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_b

    new-array v1, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v0, "MoveToMainList"

    invoke-static {v0, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    if-eqz v4, :cond_9

    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_a

    :cond_9
    const-string/jumbo v0, "LeaveMegaMenu"

    const v3, 0x7f0802cf

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v1, v2

    move-object v0, v1

    :goto_2
    new-instance v1, Lorg/telegram/ui/PushList$6$2;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/PushList$6$2;-><init>(Lorg/telegram/ui/PushList$6;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v5, v0, v6, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PushList;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "DeleteMegaMenu"

    const v3, 0x7f0801cc

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    new-array v1, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v0, "MoveToMainList"

    invoke-static {v0, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    if-eqz v4, :cond_c

    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_d

    :cond_c
    const-string/jumbo v0, "LeaveChannelMenu"

    const v3, 0x7f0802cd

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_2

    :cond_d
    const-string/jumbo v0, "ChannelDeleteMenu"

    const v3, 0x7f080118

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_e
    if-gez v6, :cond_f

    if-eq v7, v2, :cond_f

    move v4, v2

    :goto_4
    if-nez v4, :cond_13

    if-lez v6, :cond_13

    if-eq v7, v2, :cond_13

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_10

    move v0, v2

    :goto_6
    new-array v6, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "MoveToMainList"

    invoke-static {v1, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    if-eqz v4, :cond_11

    const-string/jumbo v1, "DeleteChat"

    const v3, 0x7f0801c4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    aput-object v1, v6, v2

    new-array v1, v10, [I

    fill-array-data v1, :array_1

    new-instance v3, Lorg/telegram/ui/PushList$6$3;

    invoke-direct {v3, p0, v4, v0}, Lorg/telegram/ui/PushList$6$3;-><init>(Lorg/telegram/ui/PushList$6;ZZ)V

    invoke-virtual {v5, v6, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/PushList$6;->this$0:Lorg/telegram/ui/PushList;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PushList;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_f
    move v4, v3

    goto :goto_4

    :cond_10
    move v0, v3

    goto :goto_6

    :cond_11
    if-eqz v0, :cond_12

    const-string/jumbo v1, "DeleteAndStop"

    const v3, 0x7f0801c2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_12
    const-string/jumbo v1, "Delete"

    const v3, 0x7f0801bb

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_13
    move-object v0, v1

    goto :goto_5

    nop

    :array_0
    .array-data 4
        0x7f0201c0
        0x7f02009b
    .end array-data

    :array_1
    .array-data 4
        0x7f0201c0
        0x7f02009b
    .end array-data
.end method
