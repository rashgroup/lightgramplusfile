.class Lorg/telegram/ui/DialogsActivity$22;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;


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

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedOnSubDialog(I)V
    .locals 10

    const v9, 0x7f1000cc

    const v8, 0x7f1000ca

    const v7, 0x7f040033

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    int-to-long v2, p1

    # invokes: Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V
    invoke-static {v0, v2, v3, v6, v5}, Lorg/telegram/ui/DialogsActivity;->access$3300(Lorg/telegram/ui/DialogsActivity;JZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-lez p1, :cond_4

    const-string/jumbo v0, "user_id"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    int-to-long v2, p1

    # setter for: Lorg/telegram/ui/DialogsActivity;->openedDialogId:J
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$3602(Lorg/telegram/ui/DialogsActivity;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v1, 0x200

    # invokes: Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;I)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6

    const-string/jumbo v0, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/SetNewPass;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/SetNewPass;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "chat_id"

    neg-int v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    new-instance v5, Landroid/app/Dialog;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/byekan.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    const v0, 0x7f1000cf

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000ce

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const-string/jumbo v7, "actionBarDefault"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f1000cd

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/telegram/ui/DialogsActivity$22$1;

    invoke-direct {v2, p0, v0, v4, v5}, Lorg/telegram/ui/DialogsActivity$22$1;-><init>(Lorg/telegram/ui/DialogsActivity$22;Landroid/widget/EditText;Landroid/os/Bundle;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v4}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9

    const-string/jumbo v0, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/SetNewPass;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/SetNewPass;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_8
    new-instance v5, Landroid/app/Dialog;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/byekan.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    const v0, 0x7f1000cf

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000ce

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const-string/jumbo v7, "actionBarDefault"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f1000cd

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/telegram/ui/DialogsActivity$22$2;

    invoke-direct {v2, p0, v0, v4, v5}, Lorg/telegram/ui/DialogsActivity$22$2;-><init>(Lorg/telegram/ui/DialogsActivity$22;Landroid/widget/EditText;Landroid/os/Bundle;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v4}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method

.method public needRemoveHint(I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

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

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

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

    new-instance v2, Lorg/telegram/ui/DialogsActivity$22$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DialogsActivity$22$3;-><init>(Lorg/telegram/ui/DialogsActivity$22;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v0, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public searchStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_0
.end method
