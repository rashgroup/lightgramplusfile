.class Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    iput-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoPickerActivity;->updatePhotoAtIndex(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0, v5}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$3100(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->selectedPhotosChanged()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    iput-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->updatePhotoAtIndex(I)V

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    move-object v1, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
