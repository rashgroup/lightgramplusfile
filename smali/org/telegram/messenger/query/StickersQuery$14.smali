.class final Lorg/telegram/messenger/query/StickersQuery$14;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
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

.field final synthetic val$unreadStickers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    iput-object p5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-wide/16 v0, 0x3e8

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v0

    iget v3, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xe10

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    iget v3, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    if-nez v3, :cond_4

    :cond_1
    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$14$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/query/StickersQuery$14$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$14;)V

    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-nez v4, :cond_3

    :goto_0
    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$unreadStickers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    invoke-static {v3, v0, v1, v2}, Lorg/telegram/messenger/query/StickersQuery;->access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_6
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$14$2;

    invoke-direct {v0, p0, v4, v3}, Lorg/telegram/messenger/query/StickersQuery$14$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$14;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$14$3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/query/StickersQuery$14$3;-><init>(Lorg/telegram/messenger/query/StickersQuery$14;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    invoke-static {v8, v8, v0, v2}, Lorg/telegram/messenger/query/StickersQuery;->access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_1
.end method
