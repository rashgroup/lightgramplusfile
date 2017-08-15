.class public final Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final baseDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final context:Landroid/content/Context;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    invoke-direct {p0, p1, p3, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;->baseDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;
    .locals 4

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;->baseDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    return-object v0
.end method
