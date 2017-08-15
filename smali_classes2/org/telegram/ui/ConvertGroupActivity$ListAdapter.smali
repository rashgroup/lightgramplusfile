.class Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ConvertGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ConvertGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ConvertGroupActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ConvertGroupActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ConvertGroupActivity;->access$200(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$300(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$400(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

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
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    const-string/jumbo v1, "ConvertGroup"

    const v2, 0x7f080187

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$300(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1

    const-string/jumbo v1, "ConvertGroupInfo2"

    const v2, 0x7f08018b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0200e1

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$400(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    const-string/jumbo v1, "ConvertGroupInfo3"

    const v2, 0x7f08018c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0200e2

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2

    packed-switch p2, :pswitch_data_0

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
