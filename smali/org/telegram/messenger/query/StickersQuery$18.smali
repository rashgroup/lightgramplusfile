.class final Lorg/telegram/messenger/query/StickersQuery$18;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersByIdAsRead(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/query/StickersQuery$18;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1300()Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/query/StickersQuery$18;->val$id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1700()Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/query/StickersQuery$18;->val$id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1500()Ljava/util/ArrayList;

    move-result-object v0

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$700(Ljava/util/ArrayList;)I

    move-result v0

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1102(I)I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1500()Ljava/util/ArrayList;

    move-result-object v0

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1300()Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1600()I

    move-result v2

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1100()I

    move-result v3

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method
