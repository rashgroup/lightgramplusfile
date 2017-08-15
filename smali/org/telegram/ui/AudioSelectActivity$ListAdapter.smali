.class Lorg/telegram/ui/AudioSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "AudioSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AudioSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/AudioSelectActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/AudioCell;

    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v3, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Cells/AudioCell;->setAudio(Lorg/telegram/messenger/MediaController$AudioEntry;ZZ)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Cells/AudioCell;

    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/AudioCell;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/AudioSelectActivity$ListAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/AudioCell;->setDelegate(Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
