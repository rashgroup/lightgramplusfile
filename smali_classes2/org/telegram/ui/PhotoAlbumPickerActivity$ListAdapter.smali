.class Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v2

    if-ne v2, v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbumsCount(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v1

    mul-int/2addr v1, p2

    add-int/2addr v1, v2

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z
    invoke-static {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p2, -0x1

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I
    invoke-static {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->requestLayout()V

    :cond_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3

    packed-switch p2, :pswitch_data_0

    new-instance v0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1700(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;-><init>(Landroid/content/Context;Z)V

    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->setDelegate(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;)V

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->setDelegate(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
