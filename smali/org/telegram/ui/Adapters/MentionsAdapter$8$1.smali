.class Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$8;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I
    invoke-static {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1502(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v1, v2, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-boolean v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    if-nez v1, :cond_4

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->cache_time:I

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->next_offset:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1702(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1802(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    :cond_5
    move v2, v3

    :goto_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v5, :cond_7

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez v5, :cond_7

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v5, :cond_7

    :cond_6
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_7
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->query_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1902(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->gallery:Z

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2002(Lorg/telegram/ui/Adapters/MentionsAdapter;Z)Z

    move v1, v3

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;
    invoke-static {v2, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2102(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;
    invoke-static {v2, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2202(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;
    invoke-static {v2, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2302(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;
    invoke-static {v2, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2402(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;
    invoke-static {v2, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2502(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v1

    if-eqz v1, :cond_e

    move v1, v4

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v5, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, v2, v6

    if-eqz v1, :cond_f

    move v2, v4

    :goto_4
    add-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemChanged(I)V

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v1, :cond_10

    move v1, v4

    :goto_5
    add-int/2addr v1, v5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemRangeInserted(II)V

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v1

    if-eqz v1, :cond_b

    :cond_a
    move v3, v4

    :cond_b
    invoke-interface {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const-string/jumbo v2, ""

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    move v1, v4

    goto/16 :goto_2

    :cond_e
    move v1, v3

    goto/16 :goto_3

    :cond_f
    move v2, v3

    goto :goto_4

    :cond_10
    move v1, v3

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    goto :goto_6
.end method
