.class public Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
.super Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.source "LocationActivitySearchAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/LocationCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v1, Lorg/telegram/ui/Cells/LocationCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/LocationCell;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
