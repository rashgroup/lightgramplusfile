.class Lorg/telegram/messenger/query/StickersQuery$24$2;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$24;

.field final synthetic val$allStickersNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsByIdNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsByNameNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsNew:Ljava/util/ArrayList;

.field final synthetic val$stickersByEmojiNew:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$24;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$stickerSetsByNameNew:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$allStickersNew:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$stickersByEmojiNew:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2600()[Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2600()[Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2100()Ljava/util/HashMap;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2700()Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2700()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$stickerSetsByNameNew:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2600()[Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    aput-object v3, v0, v1

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2400()[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$24;->val$hash:I

    aput v3, v0, v1

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2800()[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    aput v3, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$allStickersNew:Ljava/util/HashMap;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$2902(Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->val$stickersByEmojiNew:Ljava/util/HashMap;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$3002(Ljava/util/HashMap;)Ljava/util/HashMap;

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$24$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v4, v4, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
