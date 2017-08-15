.class Lorg/telegram/ui/DialogsActivity$16;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v3

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "AppName"

    const v4, 0x7f080086

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v3, "ClearSearch"

    const v4, 0x7f080172

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v3, "ClearButton"

    const v4, 0x7f08016c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/DialogsActivity$16$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/DialogsActivity$16$1;-><init>(Lorg/telegram/ui/DialogsActivity$16;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0800f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-ltz p2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p2

    if-lt v0, v3, :cond_8

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    # setter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/DialogsActivity;->access$3902(Lorg/telegram/ui/DialogsActivity;J)J

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    new-instance v17, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v6

    const/16 v3, 0x20

    shr-long/2addr v6, v3

    long-to-int v9, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v3

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->u()Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/tools/c/b;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/tools/c/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/tools/c/a;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    const/4 v3, 0x6

    new-array v10, v3, [I

    const/4 v9, 0x0

    if-eqz v6, :cond_b

    const v3, 0x7f020097

    :goto_1
    aput v3, v10, v9

    const/4 v9, 0x1

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_c

    const v3, 0x7f02009d

    :goto_2
    aput v3, v10, v9

    const/4 v3, 0x2

    const v9, 0x7f020095

    aput v9, v10, v3

    const/4 v9, 0x3

    if-eqz v7, :cond_d

    const v3, 0x7f0201ac

    :goto_3
    aput v3, v10, v9

    const/4 v9, 0x4

    if-eqz v8, :cond_e

    const v3, 0x7f02009a

    :goto_4
    aput v3, v10, v9

    const/4 v3, 0x5

    const v9, 0x7f02009b

    aput v9, v10, v3

    if-eqz v5, :cond_15

    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x6

    new-array v9, v3, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    if-eqz v6, :cond_f

    const-string/jumbo v3, "RemoveFromFavorites"

    const v12, 0x7f080784

    invoke-static {v3, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    aput-object v3, v9, v11

    const/4 v3, 0x1

    iget-boolean v11, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v11, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v11

    if-eqz v11, :cond_11

    :cond_9
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "UnpinFromTop"

    const v11, 0x7f080548

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    aput-object v2, v9, v3

    const/4 v2, 0x2

    const-string/jumbo v3, "ClearHistoryCache"

    const v11, 0x7f08016e

    invoke-static {v3, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v3, 0x3

    if-eqz v7, :cond_12

    const-string/jumbo v2, "Unlock"

    const v11, 0x7f08080c

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    aput-object v2, v9, v3

    const/4 v3, 0x4

    if-eqz v8, :cond_13

    const-string/jumbo v2, "RemoveFromHidden"

    const v11, 0x7f080785

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    aput-object v2, v9, v3

    const/4 v3, 0x5

    if-eqz v5, :cond_a

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_14

    :cond_a
    const-string/jumbo v2, "LeaveMegaMenu"

    const v11, 0x7f0802cf

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    aput-object v2, v9, v3

    :goto_a
    new-instance v2, Lorg/telegram/ui/DialogsActivity$16$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/DialogsActivity$16$2;-><init>(Lorg/telegram/ui/DialogsActivity$16;ZLorg/telegram/tgnet/TLRPC$Chat;ZZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    const v3, 0x7f020098

    goto/16 :goto_1

    :cond_c
    const v3, 0x7f02009c

    goto/16 :goto_2

    :cond_d
    const v3, 0x7f0201ab

    goto/16 :goto_3

    :cond_e
    const v3, 0x7f020099

    goto/16 :goto_4

    :cond_f
    const-string/jumbo v3, "AddToFavorites"

    const v12, 0x7f080634

    invoke-static {v3, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "PinToTop"

    const v11, 0x7f08044c

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v2, "SetLock"

    const v11, 0x7f0808b4

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_13
    const-string/jumbo v2, "SetHidden"

    const v11, 0x7f0808b3

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_14
    const-string/jumbo v2, "DeleteMegaMenu"

    const v11, 0x7f0801cc

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_15
    const/4 v3, 0x6

    new-array v9, v3, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    if-eqz v6, :cond_18

    const-string/jumbo v3, "RemoveFromFavorites"

    const v12, 0x7f080784

    invoke-static {v3, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_c
    aput-object v3, v9, v11

    const/4 v3, 0x1

    iget-boolean v11, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v11, :cond_16

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_16
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v2, :cond_19

    const-string/jumbo v2, "UnpinFromTop"

    const v11, 0x7f080548

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_d
    aput-object v2, v9, v3

    const/4 v2, 0x2

    const-string/jumbo v3, "ClearHistoryCache"

    const v11, 0x7f08016e

    invoke-static {v3, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v3, 0x3

    if-eqz v7, :cond_1b

    const-string/jumbo v2, "Unlock"

    const v11, 0x7f08080c

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_e
    aput-object v2, v9, v3

    const/4 v3, 0x4

    if-eqz v8, :cond_1c

    const-string/jumbo v2, "RemoveFromHidden"

    const v11, 0x7f080785

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_f
    aput-object v2, v9, v3

    const/4 v3, 0x5

    if-eqz v5, :cond_17

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_1d

    :cond_17
    const-string/jumbo v2, "LeaveChannelMenu"

    const v11, 0x7f0802cd

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_10
    aput-object v2, v9, v3

    goto/16 :goto_a

    :cond_18
    const-string/jumbo v3, "AddToFavorites"

    const v12, 0x7f080634

    invoke-static {v3, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_19
    const-string/jumbo v2, "PinToTop"

    const v11, 0x7f08044c

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    :cond_1b
    const-string/jumbo v2, "SetLock"

    const v11, 0x7f0808b4

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_1c
    const-string/jumbo v2, "SetHidden"

    const v11, 0x7f0808b3

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_1d
    const-string/jumbo v2, "ChannelDeleteMenu"

    const v11, 0x7f080118

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_1e
    if-gez v5, :cond_21

    const/4 v3, 0x1

    if-eq v9, v3, :cond_21

    const/4 v15, 0x1

    :goto_11
    const/4 v3, 0x0

    if-nez v15, :cond_1f

    if-lez v5, :cond_1f

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1f

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    :cond_1f
    if-eqz v3, :cond_22

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_22

    const/16 v16, 0x1

    :goto_12
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const/4 v9, 0x0

    if-eqz v6, :cond_23

    const-string/jumbo v3, "RemoveFromFavorites"

    const v10, 0x7f080784

    invoke-static {v3, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_13
    aput-object v3, v18, v9

    const/4 v9, 0x1

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v3, :cond_20

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    if-nez v5, :cond_24

    const/4 v3, 0x1

    :goto_14
    invoke-virtual {v10, v3}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_20
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v3, :cond_25

    const-string/jumbo v3, "UnpinFromTop"

    const v5, 0x7f080548

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_15
    aput-object v3, v18, v9

    const/4 v3, 0x2

    const-string/jumbo v5, "ClearHistory"

    const v9, 0x7f08016d

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v18, v3

    const/4 v5, 0x3

    if-eqz v7, :cond_27

    const-string/jumbo v3, "Unlock"

    const v9, 0x7f08080c

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_16
    aput-object v3, v18, v5

    const/4 v5, 0x4

    if-eqz v8, :cond_28

    const-string/jumbo v3, "RemoveFromHidden"

    const v9, 0x7f080785

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_17
    aput-object v3, v18, v5

    const/4 v5, 0x5

    if-eqz v15, :cond_29

    const-string/jumbo v3, "DeleteChat"

    const v9, 0x7f0801c4

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_18
    aput-object v3, v18, v5

    const/4 v3, 0x6

    new-array v5, v3, [I

    const/4 v9, 0x0

    if-eqz v6, :cond_2b

    const v3, 0x7f020097

    :goto_19
    aput v3, v5, v9

    const/4 v3, 0x1

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v2, :cond_2c

    const v2, 0x7f02009d

    :goto_1a
    aput v2, v5, v3

    const/4 v2, 0x2

    const v3, 0x7f020095

    aput v3, v5, v2

    const/4 v3, 0x3

    if-eqz v7, :cond_2d

    const v2, 0x7f0201ac

    :goto_1b
    aput v2, v5, v3

    const/4 v3, 0x4

    if-eqz v8, :cond_2e

    const v2, 0x7f02009a

    :goto_1c
    aput v2, v5, v3

    const/4 v3, 0x5

    if-eqz v15, :cond_2f

    const v2, 0x7f02009b

    :goto_1d
    aput v2, v5, v3

    new-instance v9, Lorg/telegram/ui/DialogsActivity$16$3;

    move-object/from16 v10, p0

    move v11, v4

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/DialogsActivity$16$3;-><init>(Lorg/telegram/ui/DialogsActivity$16;ZZZZZZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_b

    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_11

    :cond_22
    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_23
    const-string/jumbo v3, "AddToFavorites"

    const v10, 0x7f080634

    invoke-static {v3, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_13

    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_14

    :cond_25
    const-string/jumbo v3, "PinToTop"

    const v5, 0x7f08044c

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_15

    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_15

    :cond_27
    const-string/jumbo v3, "SetLock"

    const v9, 0x7f0808b4

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_16

    :cond_28
    const-string/jumbo v3, "SetHidden"

    const v9, 0x7f0808b3

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_17

    :cond_29
    if-eqz v16, :cond_2a

    const-string/jumbo v3, "DeleteAndStop"

    const v9, 0x7f0801c2

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_18

    :cond_2a
    const-string/jumbo v3, "Delete"

    const v9, 0x7f0801bb

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_18

    :cond_2b
    const v3, 0x7f020098

    goto/16 :goto_19

    :cond_2c
    const v2, 0x7f02009c

    goto/16 :goto_1a

    :cond_2d
    const v2, 0x7f0201ab

    goto/16 :goto_1b

    :cond_2e
    const v2, 0x7f020099

    goto/16 :goto_1c

    :cond_2f
    const v2, 0x7f020096

    goto/16 :goto_1d
.end method
