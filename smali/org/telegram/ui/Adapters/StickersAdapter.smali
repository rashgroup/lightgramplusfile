.class public Lorg/telegram/ui/Adapters/StickersAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickersAdapter.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

.field private lastSticker:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private stickersToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    return-void
.end method

.method private checkStickerFilesExistAndDownload()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, 0xa

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "webp"

    invoke-static {v4, v5, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "webp"

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "webp"

    invoke-virtual {v4, v0, v5, v1, v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clearStickers()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v0, :cond_1

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadStikersForEmoji(Ljava/lang/CharSequence;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_3

    move v5, v3

    :goto_0
    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v0, v4

    move-object v2, p1

    :goto_1
    if-ge v0, v1, :cond_5

    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_4

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v7, 0xd83c

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v7, 0xdffb

    if-lt v6, v7, :cond_0

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v7, 0xdfff

    if-le v6, v7, :cond_1

    :cond_0
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x200d

    if-ne v6, v7, :cond_4

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2640

    if-eq v6, v7, :cond_1

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2642

    if-ne v6, v7, :cond_4

    :cond_1
    new-array v6, v9, [Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v7, v0, 0x2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v2, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v7, 0xfe0f

    if-ne v6, v7, :cond_2

    new-array v6, v9, [Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v2, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getAllStickers()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    invoke-interface {v0, v4}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    iput-boolean v4, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    :cond_6
    :goto_3
    if-nez v5, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iput-boolean v4, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    invoke-interface {v0, v4}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_7
    return-void

    :cond_8
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {v4}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/StickersAdapter$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Adapters/StickersAdapter$1;-><init>(Lorg/telegram/ui/Adapters/StickersAdapter;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->checkStickerFilesExistAndDownload()Z

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    :goto_5
    invoke-interface {v1, v0}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->notifyDataSetChanged()V

    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    move v0, v4

    goto :goto_5
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    move v2, v0

    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/StickerCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;I)V

    return-void

    :cond_0
    const/4 v0, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Cells/StickerCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/StickerCell;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    return-void
.end method
