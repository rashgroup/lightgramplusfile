.class Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "JoinGroupAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/JoinGroupAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsersAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/JoinGroupAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    :goto_0
    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    goto :goto_0
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

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/JoinSheetUserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/JoinSheetUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/JoinSheetUserCell;->setCount(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    new-instance v0, Lorg/telegram/ui/Cells/JoinSheetUserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/JoinSheetUserCell;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
