.class final Lorg/telegram/messenger/query/SharedMediaQuery$4;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMediaCount(IJIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$fromCache:Z

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(JZIII)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    iput-boolean p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    iput p4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    iput p5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$type:I

    iput p6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, -0x1

    const/4 v0, 0x0

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    long-to-int v1, v2

    iget-boolean v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    if-ne v2, v6, :cond_0

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    iget v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$type:I

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$classGuid:I

    invoke-static {v2, v3, v1, v4, v0}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    if-nez v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    iget v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$type:I

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    # invokes: Lorg/telegram/messenger/query/SharedMediaQuery;->putMediaCountDatabase(JII)V
    invoke-static {v2, v3, v1, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$200(JII)V

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    if-ne v5, v6, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-boolean v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    goto :goto_1
.end method
