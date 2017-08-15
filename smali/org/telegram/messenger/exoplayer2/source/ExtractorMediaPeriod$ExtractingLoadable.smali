.class final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# static fields
.field private static final CONTINUE_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {p4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 13

    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_7

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v0, :cond_7

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v9, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    move-result-object v6

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v1, :cond_1

    invoke-interface {v6, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->seek(J)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move-wide v4, v2

    move v1, v8

    :goto_1
    if-nez v1, :cond_2

    :try_start_2
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->block()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v6, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    add-long/2addr v10, v4

    cmp-long v1, v8, v10

    if-lez v1, :cond_8

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->close()Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$800(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$700(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    move v8, v0

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    :cond_4
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v7

    move v2, v8

    :goto_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    :cond_5
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v0

    :cond_6
    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_4

    :cond_7
    return-void

    :catchall_1
    move-exception v1

    move v2, v8

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v12, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method public setLoadPosition(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    return-void
.end method
