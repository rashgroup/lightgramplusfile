.class Lorg/telegram/messenger/ImageLoader$CacheImage;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheImage"
.end annotation


# instance fields
.field protected animatedFile:Z

.field protected cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

.field protected ext:Ljava/lang/String;

.field protected filter:Ljava/lang/String;

.field protected filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected finalFilePath:Ljava/io/File;

.field protected httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

.field protected httpUrl:Ljava/lang/String;

.field protected imageReceiverArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field protected key:Ljava/lang/String;

.field protected keys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected location:Lorg/telegram/tgnet/TLObject;

.field protected tempFilePath:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field protected thumb:Z

.field protected url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/ImageLoader;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    return-void
.end method


# virtual methods
.method public addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_2

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    iget-boolean v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_a

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cancel()V

    iput-object v5, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cancel(Z)Z

    iput-object v5, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public setImageAndClear(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/telegram/messenger/ImageLoader$CacheImage$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/messenger/ImageLoader$CacheImage$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheImage;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
