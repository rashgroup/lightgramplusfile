.class Lorg/telegram/ui/DataUsageActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DataUsageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataUsageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataUsageActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataUsageActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    const v6, 0x7f0200e2

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0200e1

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2

    const-string/jumbo v1, "windowBackgroundWhiteRedText2"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    const-string/jumbo v1, "ResetStatistics"

    const v2, 0x7f08048e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    const-string/jumbo v1, "windowBackgroundWhiteRedText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsBytesSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsBytesReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4

    :cond_3
    move v1, v5

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSentRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataUsageActivity;->access$500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v6

    if-ne p2, v6, :cond_f

    const-string/jumbo v2, "OutgoingCalls"

    const v3, 0x7f0803d9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v8}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v1}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesBytesSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesBytesReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosBytesSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosBytesReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_8

    :cond_7
    const/4 v1, 0x4

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosBytesSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$1900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosBytesReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_a

    :cond_9
    move v1, v3

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosBytesSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosBytesReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_c

    :cond_b
    move v1, v2

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesBytesSentRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-eq p2, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesBytesReceivedRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$2800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_e

    :cond_d
    const/4 v1, 0x5

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x6

    goto/16 :goto_1

    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsReceivedRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataUsageActivity;->access$600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v6

    if-ne p2, v6, :cond_10

    const-string/jumbo v2, "IncomingCalls"

    const v3, 0x7f080286

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v8}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v1}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_10
    iget-object v6, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsTotalTimeRow:I
    invoke-static {v6}, Lorg/telegram/ui/DataUsageActivity;->access$2900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v6

    if-ne p2, v6, :cond_12

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    iget-object v6, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v6}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/StatsController;->getCallsTotalTime(I)I

    move-result v1

    div-int/lit16 v6, v1, 0xe10

    mul-int/lit16 v7, v6, 0xe10

    sub-int/2addr v1, v7

    div-int/lit8 v7, v1, 0x3c

    mul-int/lit8 v8, v7, 0x3c

    sub-int/2addr v1, v8

    if-eqz v6, :cond_11

    const-string/jumbo v8, "%d:%02d:%02d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string/jumbo v2, "CallsTotalTime"

    const v3, 0x7f0800f1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v3, "%d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-ne p2, v2, :cond_14

    :cond_13
    const-string/jumbo v2, "CountSent"

    const v3, 0x7f080192

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v8}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v1}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-ne p2, v2, :cond_16

    :cond_15
    const-string/jumbo v2, "CountReceived"

    const v3, 0x7f080191

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v8}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v1}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesBytesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosBytesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosBytesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosBytesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesBytesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsBytesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalBytesSentRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$3000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-ne p2, v2, :cond_18

    :cond_17
    const-string/jumbo v2, "BytesSent"

    const v3, 0x7f0800dc

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v5

    invoke-virtual {v3, v5, v1}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesBytesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosBytesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$1600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosBytesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosBytesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesBytesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$2800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsBytesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-eq p2, v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalBytesReceivedRow:I
    invoke-static {v2}, Lorg/telegram/ui/DataUsageActivity;->access$3100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    :cond_19
    const-string/jumbo v2, "BytesReceived"

    const v3, 0x7f0800db

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v6}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v6

    invoke-virtual {v3, v6, v1}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalBytesReceivedRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataUsageActivity;->access$3100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v3

    if-eq p2, v3, :cond_1a

    :goto_3
    invoke-virtual {v0, v2, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1a
    move v4, v5

    goto :goto_3

    :pswitch_2
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->totalSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$3200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1b

    const-string/jumbo v1, "TotalDataUsage"

    const v2, 0x7f08053b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->callsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$3300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1c

    const-string/jumbo v1, "CallsDataUsage"

    const v2, 0x7f0800f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->filesSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$3400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1d

    const-string/jumbo v1, "FilesDataUsage"

    const v2, 0x7f08020d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->audiosSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$3500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1e

    const-string/jumbo v1, "LocalAudioCache"

    const v2, 0x7f0802e0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->videosSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$3600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1f

    const-string/jumbo v1, "LocalVideoCache"

    const v2, 0x7f0802e9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->photosSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$3700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_20

    const-string/jumbo v1, "LocalPhotoCache"

    const v2, 0x7f0802e8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->messagesSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$3800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    const-string/jumbo v1, "MessagesDataUsage"

    const v2, 0x7f08030e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v1, "NetworkUsageSince"

    const v2, 0x7f08032f

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->currentType:I
    invoke-static {v7}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/StatsController;->getResetStatsDate(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
