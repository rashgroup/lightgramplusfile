.class public Lorg/telegram/ui/Adapters/SecurityAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SecurityAdapter.java"


# static fields
.field private static dialogsType:I

.field public static dialogscategory:I


# instance fields
.field private currentCount:I

.field private mContext:Landroid/content/Context;

.field private openedDialogId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SecurityAdapter;->mContext:Landroid/content/Context;

    sput p2, Lorg/telegram/ui/Adapters/SecurityAdapter;->dialogsType:I

    return-void
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    sget v0, Lorg/telegram/ui/Adapters/SecurityAdapter;->dialogsType:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/DialogsSecurity;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsSecurity;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsSecurity;->getDialogs()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lorg/telegram/ui/Adapters/SecurityAdapter;->dialogsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/telegram/ui/DialogsSecurity;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsSecurity;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsSecurity;->getDialogs()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/Adapters/SecurityAdapter;->dialogsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/telegram/ui/DialogsSecurity;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsSecurity;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsSecurity;->getDialogs()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/SecurityAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/SecurityAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iput v0, p0, Lorg/telegram/ui/Adapters/SecurityAdapter;->currentCount:I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/SecurityAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataSetChanged()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Adapters/SecurityAdapter;->currentCount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SecurityAdapter;->getItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SecurityDialogCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SecurityAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/SecurityDialogCell;->useSeparator:Z

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/SecurityAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    sget v4, Lorg/telegram/ui/Adapters/SecurityAdapter;->dialogsType:I

    if-nez v4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget-wide v6, p0, Lorg/telegram/ui/Adapters/SecurityAdapter;->openedDialogId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/SecurityDialogCell;->setDialogSelected(Z)V

    :cond_0
    sget v2, Lorg/telegram/ui/Adapters/SecurityAdapter;->dialogsType:I

    invoke-virtual {v0, v1, p2, v2}, Lorg/telegram/ui/Cells/SecurityDialogCell;->setDialog(Lorg/telegram/tgnet/TLRPC$TL_dialog;II)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    new-instance v0, Lorg/telegram/ui/Cells/SecurityDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SecurityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SecurityDialogCell;-><init>(Landroid/content/Context;)V

    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance v0, Lorg/telegram/ui/Cells/SecurityLoadingCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SecurityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SecurityLoadingCell;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/SecurityDialogCell;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SecurityDialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SecurityDialogCell;->checkCurrentDialogIndex()V

    :cond_0
    return-void
.end method

.method public setOpenedDialogId(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/Adapters/SecurityAdapter;->openedDialogId:J

    return-void
.end method
