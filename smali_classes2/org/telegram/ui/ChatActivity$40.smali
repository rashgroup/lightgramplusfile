.class Lorg/telegram/ui/ChatActivity$40;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedAttachButton()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->openAttachMenu()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2500(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public needSendTyping()V
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    return-void
.end method

.method public needStartRecordVideo(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->send()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->cancel()V

    goto :goto_0
.end method

.method public onAttachButtonHidden()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAttachButtonShow()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public onMessageEditEnd(Z)V
    .locals 6

    const/16 v5, 0x2e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    if-lt v0, v5, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLongClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTitleContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v3

    if-lt v3, v5, :cond_7

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11600(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$11600(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$11602(Lorg/telegram/ui/ChatActivity;I)I

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$1600(Lorg/telegram/ui/ChatActivity;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1700(Lorg/telegram/ui/ChatActivity;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v3, v1

    goto :goto_2
.end method

.method public onMessageSend(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->moveScrollToLastMessage()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v3, v2

    move-object v4, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStickersTab(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->emojiButtonRed:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->emojiButtonRed:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanelSecond:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$10502(Lorg/telegram/ui/ChatActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->checkContextBotPanel()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;Z)V
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaController;->setInputFieldHasText(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersAdapter:Lorg/telegram/ui/Adapters/StickersAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/StickersAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersAdapter:Lorg/telegram/ui/Adapters/StickersAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/StickersAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/StickersAdapter;->loadStikersForEmoji(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getCursorPosition()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$10902(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isMessageWebPageSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingCaption()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-eqz p2, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->searchLinks(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$11000(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity$40$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatActivity$40$1;-><init>(Lorg/telegram/ui/ChatActivity$40;Ljava/lang/CharSequence;)V

    # setter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10902(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    if-nez v0, :cond_9

    const-wide/16 v0, 0xbb8

    :goto_2
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_9
    const-wide/16 v0, 0x3e8

    goto :goto_2
.end method

.method public onWindowSizeChanged(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v2, v1}, Lorg/telegram/ui/ChatActivity;->access$10302(Lorg/telegram/ui/ChatActivity;Z)Z

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    # setter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanel:Z
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$10402(Lorg/telegram/ui/ChatActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->checkContextBotPanel()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)V

    return-void

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$10302(Lorg/telegram/ui/ChatActivity;Z)Z

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanel:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanelSecond:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
