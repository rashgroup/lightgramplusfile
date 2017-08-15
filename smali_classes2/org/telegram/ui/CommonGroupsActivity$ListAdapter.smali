.class Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CommonGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CommonGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/CommonGroupsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CommonGroupsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->endReached:Z
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$300(Lorg/telegram/ui/CommonGroupsActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->endReached:Z
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$300(Lorg/telegram/ui/CommonGroupsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->endReached:Z
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$300(Lorg/telegram/ui/CommonGroupsActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    packed-switch p2, :pswitch_data_0

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0200e2

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
