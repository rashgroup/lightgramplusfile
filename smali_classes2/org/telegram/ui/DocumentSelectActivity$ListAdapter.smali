.class Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DocumentSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    move-result-object v8

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget v1, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    if-eqz v1, :cond_1

    iget-object v1, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    iget-object v2, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    iget v5, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object v1, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$2800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v6

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v1, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    iget-object v2, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    iget-object v4, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->thumb:Ljava/lang/String;

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v0, v7, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_3
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    packed-switch p2, :pswitch_data_0

    new-instance v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    const-string/jumbo v2, "Recent"

    const v3, 0x7f08046a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
