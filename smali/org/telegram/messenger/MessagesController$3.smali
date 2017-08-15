.class Lorg/telegram/messenger/MessagesController$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$config:Lorg/telegram/tgnet/TLRPC$TL_config;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_big_size:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_config;->phonecalls_enabled:Z

    iput-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const-string/jumbo v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    iput v2, v0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    iput v2, v0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    iput v2, v0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    iput v2, v0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_dialogs_count_max:I

    iput v2, v0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v0, "maxGroupCount"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "maxMegagroupCount"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "groupBigSize"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "maxEditTime"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "ratingDecay"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "maxRecentGifsCount"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "maxRecentStickersCount"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "callReceiveTimeout"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "callRingTimeout"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "callConnectTimeout"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "callPacketTimeout"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "callsEnabled"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "linkPrefix"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "maxPinnedDialogsCount"

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :try_start_0
    new-instance v3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v3}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "disabledFeatures"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eq v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "disabledFeatures"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
