.class public final Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field private volatile bytesLoaded:J

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field public final dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field private volatile isCanceled:Z

.field private final parser:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            "Landroid/net/Uri;",
            "I",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->parser:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->isCanceled:Z

    return-void
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->isCanceled:Z

    return v0
.end method

.method public final load()V
    .locals 4

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    :try_start_0
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->open()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->parser:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->bytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->bytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    throw v0
.end method
