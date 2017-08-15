.class public Lorg/telegram/messenger/query/StickersQuery;
.super Ljava/lang/Object;
.source "StickersQuery.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_MASK:I = 0x1

.field private static allStickers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation
.end field

.field private static archivedStickersCount:[I

.field private static featuredStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private static featuredStickerSetsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private static featuredStickersLoaded:Z

.field private static loadDate:[I

.field private static loadFeaturedDate:I

.field private static loadFeaturedHash:I

.field private static loadHash:[I

.field private static loadingFeaturedStickers:Z

.field private static loadingRecentGifs:Z

.field private static loadingRecentStickers:[Z

.field private static loadingStickers:[Z

.field private static readingStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static recentGifs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private static recentGifsLoaded:Z

.field private static recentStickers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private static recentStickersLoaded:[Z

.field private static stickerSets:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickerSetsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickerSetsByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersByEmoji:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersLoaded:[Z

.field private static unreadStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    new-array v0, v2, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0

    sput p0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    return p0
.end method

.method static synthetic access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1402(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0

    sput p0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    return p0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800()[I
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/ArrayList;)I
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(ILjava/util/ArrayList;ZII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    return p0
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200()[Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    return-object v0
.end method

.method static synthetic access$2300()[Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    return-object v0
.end method

.method static synthetic access$2400()[I
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    return-object v0
.end method

.method static synthetic access$2500(ILjava/util/ArrayList;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$2600()[Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800()[I
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    return-object v0
.end method

.method static synthetic access$2902(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300()[Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400()[Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    return-object v0
.end method

.method static synthetic access$500()[Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    return-object v0
.end method

.method static synthetic access$600(ILjava/util/ArrayList;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    return-void
.end method

.method static synthetic access$700(Ljava/util/ArrayList;)I
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    return p0
.end method

.method public static addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move v1, v4

    :goto_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string/jumbo v6, "\ufe0f"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    :goto_4
    move v7, v4

    :goto_5
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_6

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v9, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_7
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    aput v1, v0, v2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    goto/16 :goto_0

    :cond_8
    move-object v6, v1

    goto :goto_4
.end method

.method public static addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    if-le v0, v1, :cond_3

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$4;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/query/StickersQuery$4;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v0, v4, p1}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    return-void
.end method

.method public static addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 8

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v3, v3, p0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v3, v3, p0

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    if-le v0, v1, :cond_3

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$1;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/query/StickersQuery$1;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, v2, p2}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    return-void
.end method

.method private static calcDocumentsHash(Ljava/util/ArrayList;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v10, 0x4f25

    const/4 v0, 0x0

    const-wide v8, 0x80000000L

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x0

    move v1, v0

    :goto_1
    const/16 v0, 0xc8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    long-to-int v0, v6

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    int-to-long v4, v4

    add-long/2addr v2, v4

    rem-long/2addr v2, v8

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    int-to-long v4, v0

    add-long/2addr v2, v4

    rem-long/2addr v2, v8

    goto :goto_2

    :cond_2
    long-to-int v0, v2

    goto :goto_0
.end method

.method private static calcFeaturedStickersHash(Ljava/util/ArrayList;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v10, 0x4f25

    const-wide v8, 0x80000000L

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    long-to-int v5, v6

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    int-to-long v6, v4

    add-long/2addr v2, v6

    rem-long/2addr v2, v8

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    int-to-long v4, v5

    add-long/2addr v2, v4

    rem-long/2addr v2, v8

    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    rem-long/2addr v2, v8

    goto :goto_1

    :cond_2
    long-to-int v0, v2

    return v0
.end method

.method public static calcNewHash(I)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    aput v1, v0, p0

    return-void
.end method

.method private static calcStickersHash(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;)I"
        }
    .end annotation

    const-wide v6, 0x80000000L

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x4f25

    mul-long/2addr v2, v4

    add-long/2addr v2, v6

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    rem-long/2addr v2, v6

    goto :goto_1

    :cond_1
    long-to-int v0, v2

    return v0
.end method

.method public static checkFeaturedStickers()V
    .locals 4

    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget v2, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturesStickers(ZZ)V

    :cond_1
    return-void
.end method

.method public static checkStickers(I)V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aget v2, v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    :cond_1
    return-void
.end method

.method public static cleanup()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aput v1, v2, v0

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aput v1, v2, v0

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aput-boolean v1, v2, v0

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    aput-boolean v1, v2, v0

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aput-boolean v1, v2, v0

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sput v1, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    sput v1, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    return-void
.end method

.method public static getAllStickers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getArchivedStickersCount(I)I
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getEmojiForSticker(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getFeaturedStickerSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFeaturesStickersHashWithoutUnread()I
    .locals 12

    const-wide/16 v10, 0x4f25

    const-wide v8, 0x80000000L

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    long-to-int v0, v6

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    int-to-long v4, v4

    add-long/2addr v2, v4

    rem-long/2addr v2, v8

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    int-to-long v4, v0

    add-long/2addr v2, v4

    rem-long/2addr v2, v8

    goto :goto_1

    :cond_1
    long-to-int v0, v2

    return v0
.end method

.method public static getRecentGifs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getRecentStickers(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getRecentStickersNoCopy(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getStickerSetById(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public static getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public static getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    :goto_1
    return-wide v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static getStickerSetName(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStickerSets(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getUnreadStickerSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isLoadingStickers(I)Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isStickerPackInstalled(J)Z
    .locals 2

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStickerPackInstalled(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStickerPackUnread(J)Z
    .locals 2

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadArchivedStickersCount(IZ)V
    .locals 6

    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "archivedStickersCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-static {p0, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadArchivedStickersCount(IZ)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    aput v2, v3, p0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoaded:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;-><init>()V

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->limit:I

    if-ne p0, v0, :cond_2

    :goto_1
    iput-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->masks:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$19;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/query/StickersQuery$19;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static loadFeaturesStickers(ZZ)V
    .locals 3

    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$11;

    invoke-direct {v1}, Lorg/telegram/messenger/query/StickersQuery$11;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;->hash:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$12;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/query/StickersQuery$12;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    goto :goto_1
.end method

.method public static loadRecents(IZZ)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    if-eqz v0, :cond_2

    move p2, v3

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$5;

    invoke-direct {v1, p1, p0}, Lorg/telegram/messenger/query/StickersQuery$5;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aput-boolean v2, v0, p0

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_2

    move p2, v3

    goto :goto_1

    :cond_4
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "emoji"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz p1, :cond_5

    const-string/jumbo v1, "lastGifLoadTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    if-eqz p1, :cond_6

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;-><init>()V

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcDocumentsHash(Ljava/util/ArrayList;)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;->hash:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$6;-><init>(IZ)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "lastStickersLoadTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_2

    :cond_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;-><init>()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->calcDocumentsHash(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->hash:I

    if-ne p0, v2, :cond_7

    move v0, v2

    :goto_3
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->attached:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$7;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$7;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_3
.end method

.method public static loadStickers(IZZ)V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/messenger/query/StickersQuery;->loadArchivedStickersCount(IZ)V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$20;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/query/StickersQuery$20;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_3

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;-><init>()V

    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;

    if-eqz p2, :cond_2

    :goto_1
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;->hash:I

    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$21;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/query/StickersQuery$21;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v2, v2, p0

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;-><init>()V

    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;

    if-eqz p2, :cond_4

    :goto_3
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;->hash:I

    goto :goto_2

    :cond_4
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v2, v2, p0

    goto :goto_3
.end method

.method public static markFaturedStickersAsRead(Z)V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    sget v3, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz p0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;-><init>()V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$16;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$16;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public static markFaturedStickersByIdAsRead(J)V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;-><init>()V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;->id:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$17;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$17;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$18;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$18;-><init>(J)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private static processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZII)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$13;

    invoke-direct {v0}, Lorg/telegram/messenger/query/StickersQuery$13;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sget-object v6, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$14;

    move v1, p2

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/query/StickersQuery$14;-><init>(ZLjava/util/ArrayList;IILjava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;ZI)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$8;

    invoke-direct {v1, p2, p1, p0, p3}, Lorg/telegram/messenger/query/StickersQuery$8;-><init>(ZLjava/util/ArrayList;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$9;

    invoke-direct {v0, p2, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$9;-><init>(ZILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static processLoadedStickers(ILjava/util/ArrayList;ZII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;ZII)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$23;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/query/StickersQuery$23;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sget-object v6, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$24;

    move v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/query/StickersQuery$24;-><init>(ZLjava/util/ArrayList;III)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$15;

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery$15;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static putStickersToCache(ILjava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;II)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$22;

    invoke-direct {v2, v0, p0, p2, p3}, Lorg/telegram/messenger/query/StickersQuery$22;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$2;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$2;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/query/StickersQuery$3;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->access_hash:J

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->id:J

    if-eqz p2, :cond_6

    if-ne p2, v2, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    move v4, v3

    :goto_2
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v6, v6, v1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    :goto_3
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v4

    aput v4, v0, v1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aget v4, v4, v1

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v6, v6, v1

    invoke-static {v1, v0, v4, v6}, Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-ne p2, v2, :cond_5

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->archived:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$25;

    invoke-direct {v3, v1, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery$25;-><init>(IILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_5
    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$26;

    invoke-direct {v3, p1, p0, v1}, Lorg/telegram/messenger/query/StickersQuery$26;-><init>(Lorg/telegram/tgnet/TLRPC$StickerSet;Landroid/content/Context;I)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_5
.end method

.method public static reorderStickers(ILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$10;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/query/StickersQuery$10;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    aput v1, v0, p0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {p0, v4, v5}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    return-void
.end method
