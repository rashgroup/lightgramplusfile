.class Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckClick(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v4, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v4, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    iput-object v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    iget-object v0, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    goto :goto_1
.end method
