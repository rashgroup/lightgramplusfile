.class Lorg/telegram/messenger/query/StickersQuery$14$2;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$14;

.field final synthetic val$stickerSetsByIdNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsNew:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$14;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$14$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$14$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$14$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$14;->val$unreadStickers:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1402(Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1502(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1102(I)I

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1602(I)I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
