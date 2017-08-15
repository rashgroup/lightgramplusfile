.class Lorg/telegram/ui/DialogsActivityF$14;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "DialogsActivityF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivityF;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivityF;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivityF;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$000(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$900(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivityF;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$2600(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$2600(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searching:Z
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivityF;->access$000(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->searchWas:Z
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivityF;->access$900(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$2600(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    add-int/lit8 v1, v2, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isMessagesSearchEndReached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$1300(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadMoreSearchMessages()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$2600(Lorg/telegram/ui/DialogsActivityF;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # invokes: Lorg/telegram/ui/DialogsActivityF;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivityF;->access$2400(Lorg/telegram/ui/DialogsActivityF;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    if-lt v0, v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v0, :cond_6

    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v5, -0x1

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v0}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivityF;->access$700(Lorg/telegram/ui/DialogsActivityF;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->prevPosition:I
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivityF;->access$2700(Lorg/telegram/ui/DialogsActivityF;)I

    move-result v2

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->prevTop:I
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivityF;->access$2800(Lorg/telegram/ui/DialogsActivityF;)I

    move-result v2

    sub-int v5, v2, v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->prevTop:I
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivityF;->access$2800(Lorg/telegram/ui/DialogsActivityF;)I

    move-result v2

    if-ge v0, v2, :cond_7

    move v2, v3

    :goto_3
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v3, :cond_4

    move v1, v3

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->scrollUpdated:Z
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$2900(Lorg/telegram/ui/DialogsActivityF;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # invokes: Lorg/telegram/ui/DialogsActivityF;->hideFloatingButton(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivityF;->access$1100(Lorg/telegram/ui/DialogsActivityF;Z)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # setter for: Lorg/telegram/ui/DialogsActivityF;->prevPosition:I
    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivityF;->access$2702(Lorg/telegram/ui/DialogsActivityF;I)I

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # setter for: Lorg/telegram/ui/DialogsActivityF;->prevTop:I
    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivityF;->access$2802(Lorg/telegram/ui/DialogsActivityF;I)I

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # setter for: Lorg/telegram/ui/DialogsActivityF;->scrollUpdated:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivityF;->access$2902(Lorg/telegram/ui/DialogsActivityF;Z)Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivityF$14;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->prevPosition:I
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivityF;->access$2700(Lorg/telegram/ui/DialogsActivityF;)I

    move-result v2

    if-le v4, v2, :cond_9

    move v1, v3

    :cond_9
    move v2, v1

    move v1, v3

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_2
.end method
