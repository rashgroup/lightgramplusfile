.class final Lorg/telegram/messenger/query/StickersQuery$9;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$documents:Ljava/util/ArrayList;

.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZILjava/util/ArrayList;)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$documents:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "emoji"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    if-eqz v1, :cond_1

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z
    invoke-static {v4}, Lorg/telegram/messenger/query/StickersQuery;->access$102(Z)Z

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z
    invoke-static {v5}, Lorg/telegram/messenger/query/StickersQuery;->access$202(Z)Z

    const-string/jumbo v1, "lastGifLoadTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$documents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$documents:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$400()[Z

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    aput-boolean v4, v1, v2

    # getter for: Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$500()[Z

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    aput-boolean v5, v1, v2

    const-string/jumbo v1, "lastStickersLoadTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$300()[Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$documents:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    goto :goto_1
.end method
