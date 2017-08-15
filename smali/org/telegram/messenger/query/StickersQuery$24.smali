.class final Lorg/telegram/messenger/query/StickersQuery$24;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:Z

.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$res:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;III)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$hash:I

    iput p5, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-wide/16 v0, 0x3e8

    const/4 v10, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v0

    iget v4, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$hash:I

    if-nez v2, :cond_4

    :cond_1
    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$24$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/query/StickersQuery$24$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$24;)V

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-nez v3, :cond_3

    :goto_0
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v12, v10

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_6

    :cond_5
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v10

    :goto_3
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_9

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_7

    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v8, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3

    :cond_8
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v13, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_9
    :try_start_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v1, :cond_5

    move v11, v10

    :goto_5
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    if-eqz v1, :cond_a

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    if-nez v7, :cond_b

    :cond_a
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_5

    :cond_b
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string/jumbo v8, "\ufe0f"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_11

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v7

    :goto_6
    move v9, v10

    :goto_7
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v9, v7, :cond_a

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_d

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_7

    :cond_e
    iget-boolean v0, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-nez v0, :cond_f

    iget v0, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V
    invoke-static {v0, v4, v1, v7}, Lorg/telegram/messenger/query/StickersQuery;->access$2500(ILjava/util/ArrayList;II)V

    :cond_f
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$24$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/query/StickersQuery$24$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$24;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_10
    iget-boolean v0, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$24$3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/query/StickersQuery$24$3;-><init>(Lorg/telegram/messenger/query/StickersQuery$24;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V
    invoke-static {v0, v1, v2, v10}, Lorg/telegram/messenger/query/StickersQuery;->access$2500(ILjava/util/ArrayList;II)V

    goto/16 :goto_1

    :cond_11
    move-object v8, v7

    goto :goto_6
.end method
