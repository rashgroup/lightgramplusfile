.class Lorg/telegram/messenger/query/StickersQuery$21$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$21;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$21;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$21;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x0

    const-wide/16 v12, 0x3e8

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    if-eqz v0, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v12

    long-to-int v1, v4

    iget v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
    invoke-static {v0, v2, v7, v1, v3}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v3, v7

    :goto_1
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$StickerSet;

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2100()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    if-ne v1, v8, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed:Z

    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed:Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v12

    long-to-int v1, v8

    iget v5, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
    invoke-static {v0, v2, v7, v1, v5}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$21$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/query/StickersQuery$21$1$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$21$1;Ljava/util/ArrayList;ILjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;)V

    invoke-virtual {v9, v8, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v12

    long-to-int v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$21;->val$hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
    invoke-static {v0, v14, v7, v1, v2}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    goto/16 :goto_0
.end method
