.class public final Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;
.source "HttpMediaDrmCallback.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;

.field private final defaultUrl:Ljava/lang/String;

.field private final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    sget-object v0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "text/xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    const-string/jumbo v1, "SOAPAction"

    const-string/jumbo v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->defaultUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    return-void
.end method

.method private executePost(Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;

    move-result-object v12

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v12, v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;

    invoke-direct {v0, v12, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    throw v1
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 4

    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->defaultUrl:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/octet-stream"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/telegram/messenger/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->PLAYREADY_KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method
