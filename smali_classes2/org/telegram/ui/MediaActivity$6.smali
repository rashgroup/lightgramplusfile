.class Lorg/telegram/ui/MediaActivity$6;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->searching:Z
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1600(Lorg/telegram/ui/MediaActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->searchWas:Z
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    if-eqz p2, :cond_1

    :goto_0
    # setter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/MediaActivity;->access$2202(Lorg/telegram/ui/MediaActivity;Z)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 10

    const/16 v3, 0x32

    const/4 v1, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1600(Lorg/telegram/ui/MediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-eqz v0, :cond_0

    add-int/2addr v0, v4

    add-int/lit8 v4, v7, -0x2

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v4

    aget-object v0, v0, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    if-nez v0, :cond_4

    move v5, v2

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    aget-object v4, v4, v7

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v4

    aget v4, v4, v2

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->classGuid:I
    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    if-ne v0, v6, :cond_5

    move v5, v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v5, v1

    goto :goto_2

    :cond_6
    const/4 v5, 0x3

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v6

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    aget-object v4, v4, v7

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v4

    aget v4, v4, v6

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->classGuid:I
    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$2700(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_0
.end method
