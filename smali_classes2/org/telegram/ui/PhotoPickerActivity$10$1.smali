.class Lorg/telegram/ui/PhotoPickerActivity$10$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity$10;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->val$token:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2400(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->next_offset:I

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->nextGiphySearchOffset:I
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$1202(Lorg/telegram/ui/PhotoPickerActivity;I)I

    move v3, v4

    move v2, v4

    move v5, v4

    :goto_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$FoundGif;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v6, v6, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    new-instance v8, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v8}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    iput-object v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_6

    move v6, v4

    :goto_3
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_3

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v9, :cond_2

    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v9, :cond_5

    :cond_2
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    :cond_3
    :goto_4
    iput v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->content_url:Ljava/lang/String;

    iput-object v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->thumb_url:Ljava/lang/String;

    iput-object v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "|"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v6, v6, Lorg/telegram/ui/PhotoPickerActivity$10;->val$query:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v6, v6, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerActivity;->access$2500(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v6

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    :cond_4
    iput v7, v8, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v7

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_3

    :cond_6
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->w:I

    iput v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$FoundGif;->h:I

    iput v2, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    if-nez v2, :cond_b

    :goto_5
    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v0, v7}, Lorg/telegram/ui/PhotoPickerActivity;->access$402(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    if-eqz v5, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRangeInserted(II)V

    :cond_8
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2600(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto/16 :goto_0

    :cond_b
    move v7, v4

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRemoved(I)V

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_0

    :cond_e
    move v5, v4

    goto/16 :goto_6
.end method
