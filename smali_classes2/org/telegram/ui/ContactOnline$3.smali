.class Lorg/telegram/ui/ContactOnline$3;
.super Ljava/lang/Object;
.source "ContactOnline.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactOnline;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactOnline;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactOnline;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v6, 0x7f0808a1

    const v7, 0x7f040033

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/ContactOnline;->access$000(Lorg/telegram/ui/ContactOnline;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/ContactOnline;->access$100(Lorg/telegram/ui/ContactOnline;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ContactOnline;->access$200(Lorg/telegram/ui/ContactOnline;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$200(Lorg/telegram/ui/ContactOnline;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/telegram/ui/Adapters/SearchAdapter;->isGlobalSearch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v5, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->returnAsResult:Z
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$300(Lorg/telegram/ui/ContactOnline;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->ignoreUsers:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$400(Lorg/telegram/ui/ContactOnline;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->ignoreUsers:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$400(Lorg/telegram/ui/ContactOnline;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # invokes: Lorg/telegram/ui/ContactOnline;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    invoke-static {v2, v0, v4, v1}, Lorg/telegram/ui/ContactOnline;->access$500(Lorg/telegram/ui/ContactOnline;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->createSecretChat:Z
    invoke-static {v1}, Lorg/telegram/ui/ContactOnline;->access$600(Lorg/telegram/ui/ContactOnline;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # setter for: Lorg/telegram/ui/ContactOnline;->creatingChat:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/ContactOnline;->access$702(Lorg/telegram/ui/ContactOnline;Z)Z

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v2}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lorg/telegram/ui/tools/c/g;->u()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    new-instance v6, Landroid/app/Dialog;

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v1}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v1}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/byekan.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    const v1, 0x7f1000cf

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f1000ca

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1000ce

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1000cc

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f1000cd

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->a()Lorg/telegram/ui/tools/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/tools/b/c;->a()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v4, Lorg/telegram/ui/ContactOnline$3$1;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/ContactOnline$3$1;-><init>(Lorg/telegram/ui/ContactOnline$3;Landroid/widget/EditText;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    :cond_7
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    new-instance v6, Landroid/app/Dialog;

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v1}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v1}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/byekan.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    const v1, 0x7f1000cf

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f1000ca

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1000ce

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1000cc

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f1000cd

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/ui/tools/a/e;->a()Lorg/telegram/ui/tools/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/tools/b/c;->a()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v4, Lorg/telegram/ui/ContactOnline$3$2;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/ContactOnline$3$2;-><init>(Lorg/telegram/ui/ContactOnline$3;Landroid/widget/EditText;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-static {v1, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ContactOnline;->access$800(Lorg/telegram/ui/ContactOnline;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$800(Lorg/telegram/ui/ContactOnline;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v2

    if-ltz v2, :cond_0

    if-ltz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->onlyUsers:Z
    invoke-static {v3}, Lorg/telegram/ui/ContactOnline;->access$900(Lorg/telegram/ui/ContactOnline;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/ContactOnline;->access$1000(Lorg/telegram/ui/ContactOnline;)I

    move-result v3

    if-eqz v3, :cond_10

    :cond_b
    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->needPhonebook:Z
    invoke-static {v0}, Lorg/telegram/ui/ContactOnline;->access$1100(Lorg/telegram/ui/ContactOnline;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->chat_id:I
    invoke-static {v0}, Lorg/telegram/ui/ContactOnline;->access$1000(Lorg/telegram/ui/ContactOnline;)I

    move-result v0

    if-eqz v0, :cond_c

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    new-instance v1, Lorg/telegram/ui/GroupInviteActivity;

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->chat_id:I
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$1000(Lorg/telegram/ui/ContactOnline;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/GroupInviteActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_c
    if-nez v2, :cond_d

    const-string/jumbo v0, "chat_create"

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v1}, Lorg/telegram/ui/GroupCreateActivity;-><init>()V

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    :cond_d
    if-ne v2, v4, :cond_e

    const-string/jumbo v0, "LOG"

    const-string/jumbo v1, "HOSHYAR :1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "onlyUsers"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "destroyAfterSelect"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "createSecretChat"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "allowBots"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    new-instance v2, Lorg/telegram/ui/ContactOnline;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContactOnline;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    const-string/jumbo v0, "LOG"

    const-string/jumbo v1, "HOSHYAR :2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "broadcast_create"

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "channel_intro"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "step"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "LOG"

    const-string/jumbo v2, "HOSHYAR :3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    new-instance v2, Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct {v2}, Lorg/telegram/ui/ChannelIntroActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const-string/jumbo v1, "LOG"

    const-string/jumbo v2, "HOSHYAR :4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "channel_intro"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/ContactOnline;->access$800(Lorg/telegram/ui/ContactOnline;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_14

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->returnAsResult:Z
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$300(Lorg/telegram/ui/ContactOnline;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "LOG"

    const-string/jumbo v3, "HOSHYAR :6"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->ignoreUsers:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$400(Lorg/telegram/ui/ContactOnline;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->ignoreUsers:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/ContactOnline;->access$400(Lorg/telegram/ui/ContactOnline;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # invokes: Lorg/telegram/ui/ContactOnline;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    invoke-static {v2, v0, v4, v1}, Lorg/telegram/ui/ContactOnline;->access$500(Lorg/telegram/ui/ContactOnline;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v1, "LOG"

    const-string/jumbo v2, "HOSHYAR :7"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # getter for: Lorg/telegram/ui/ContactOnline;->createSecretChat:Z
    invoke-static {v1}, Lorg/telegram/ui/ContactOnline;->access$600(Lorg/telegram/ui/ContactOnline;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "LOG"

    const-string/jumbo v2, "HOSHYAR :9"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    # setter for: Lorg/telegram/ui/ContactOnline;->creatingChat:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/ContactOnline;->access$702(Lorg/telegram/ui/ContactOnline;Z)Z

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v2}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0

    :cond_13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-static {v1, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LOG"

    const-string/jumbo v2, "HOSHYAR :10"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    const-string/jumbo v0, "LOG"

    const-string/jumbo v1, "is contact activity 01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    instance-of v2, v0, Lorg/telegram/messenger/CContactsController$Contact;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LOG"

    const-string/jumbo v3, "HOSHYAR :8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lorg/telegram/messenger/CContactsController$Contact;

    iget-object v2, v0, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v2}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v3}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "InviteUser"

    const v4, 0x7f080299

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v3, "AppName"

    const v4, 0x7f080086

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v3, "OK"

    const v4, 0x7f0803c8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ContactOnline$3$3;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/ContactOnline$3$3;-><init>(Lorg/telegram/ui/ContactOnline$3;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "Cancel"

    const v3, 0x7f0800f2

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline$3;->this$0:Lorg/telegram/ui/ContactOnline;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ContactOnline;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_15
    move-object v0, v1

    goto :goto_1
.end method
