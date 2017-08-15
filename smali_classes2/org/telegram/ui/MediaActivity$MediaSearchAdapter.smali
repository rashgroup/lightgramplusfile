.class public Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSearchAdapter"
.end annotation


# instance fields
.field private currentType:I

.field protected globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private lastReqId:I

.field private mContext:Landroid/content/Context;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    return v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4802(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/messenger/MessageObject;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSearch(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le p1, v1, :cond_0

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$5000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    move v1, v3

    :goto_1
    aget-object v1, v5, v1

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_4
    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_8

    move v1, v2

    :goto_5
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$5100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_9

    move v1, v3

    :goto_6
    aget-object v1, v5, v1

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v4

    if-nez v4, :cond_a

    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_6

    :cond_a
    move v2, v3

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_8
    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_c
    move v2, v3

    goto :goto_8
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3

    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_1
    new-instance v1, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$5;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    goto :goto_0
.end method

.method public queryServerSearch(Ljava/lang/String;IJ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    long-to-int v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    invoke-virtual {v1, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    const/16 v2, 0x32

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    iget v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    if-ne v2, v4, :cond_6

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :cond_5
    :goto_1
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;

    invoke-direct {v3, p0, p2, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;II)V

    const/4 v0, 0x2

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->classGuid:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$4300(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    :cond_6
    iget v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_7
    iget v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1
.end method

.method public search(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method
