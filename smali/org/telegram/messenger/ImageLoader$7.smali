.class Lorg/telegram/messenger/ImageLoader$7;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$cacheOnly:Z

.field final synthetic val$ext:Ljava/lang/String;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$finalIsNeedsQualityThumb:Z

.field final synthetic val$finalTag:Ljava/lang/Integer;

.field final synthetic val$httpLocation:Ljava/lang/String;

.field final synthetic val$imageLocation:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$shouldGenerateQualityThumb:Z

.field final synthetic val$size:I

.field final synthetic val$thumb:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;ZZILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p7, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    iput-boolean p9, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    iput-object p10, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    iput-boolean p12, p0, Lorg/telegram/messenger/ImageLoader$7;->val$shouldGenerateQualityThumb:Z

    iput-boolean p13, p0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    iput p14, p0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    iput-object p15, p0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    if-eq v0, v9, :cond_27

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v2, :cond_a

    if-eq v2, v0, :cond_0

    if-ne v2, v1, :cond_9

    :cond_0
    move v2, v5

    :goto_0
    if-nez v2, :cond_26

    if-eqz v1, :cond_26

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v7}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    :goto_1
    if-nez v1, :cond_25

    if-eqz v0, :cond_25

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    :goto_2
    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v1, "thumb://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v1, ":"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_24

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    move-object v1, v0

    move v2, v5

    :goto_4
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    if-eq v0, v9, :cond_8

    new-instance v4, Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v4, v0, v3}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v3, "vthumb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v3, "thumb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-boolean v5, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    :cond_4
    if-nez v1, :cond_6

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_6
    :goto_5
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    if-eqz v0, :cond_16

    move v0, v5

    :goto_6
    iput-boolean v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    iput-object v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    iput-object v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    iput-object v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    iput-object v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    invoke-virtual {v4, v0, v3, v7}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_7
    iput-object v1, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v1, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_8
    :goto_7
    return-void

    :cond_9
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_a
    move v2, v6

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v1, "vthumb://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    const-string/jumbo v1, ":"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_23

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object v1, v0

    move v2, v5

    goto/16 :goto_4

    :cond_c
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_4

    :cond_d
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "q_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    move-object v1, v3

    :goto_9
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    move-object v0, v3

    :cond_e
    :goto_a
    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    move-object v2, v0

    :goto_b
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    if-eqz v0, :cond_10

    if-nez v1, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-nez v0, :cond_f

    new-instance v4, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v4, v0, v3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    # setter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->fileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v4, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3402(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    # setter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->filter:Ljava/lang/String;
    invoke-static {v4, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3502(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    :cond_f
    # operator++ for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$2908(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$3600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$shouldGenerateQualityThumb:Z

    if-eqz v0, :cond_11

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileType()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    # invokes: Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    invoke-static {v4, v7, v2, v0, v8}, Lorg/telegram/messenger/ImageLoader;->access$3700(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    :cond_11
    move v2, v6

    goto/16 :goto_4

    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_15

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    move v0, v6

    goto/16 :goto_6

    :cond_17
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v1, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_18
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    iput-object v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    iput-object v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    iget v4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    if-eqz v4, :cond_19

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_19

    iget-boolean v4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    if-eqz v4, :cond_1a

    :cond_19
    move v6, v5

    :cond_1a
    invoke-virtual {v1, v0, v2, v3, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :cond_1b
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    invoke-virtual {v1, v0, v5, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_7

    :cond_1c
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iget-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    invoke-virtual {v1, v0, v5, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZZ)V

    goto/16 :goto_7

    :cond_1d
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "_temp.jpg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iput-object v1, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget v2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    invoke-direct {v0, v1, v4, v2}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V

    iput-object v0, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    # invokes: Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V
    invoke-static {v0, v6}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;Z)V

    goto/16 :goto_7

    :cond_1e
    move-object v2, v0

    goto/16 :goto_b

    :cond_1f
    move-object v0, v3

    goto/16 :goto_a

    :cond_20
    move-object v1, v0

    goto/16 :goto_9

    :cond_21
    move-object v1, v3

    goto/16 :goto_9

    :cond_22
    move-object v1, v3

    move v2, v6

    goto/16 :goto_4

    :cond_23
    move-object v0, v3

    goto/16 :goto_8

    :cond_24
    move-object v0, v3

    goto/16 :goto_3

    :cond_25
    move v0, v1

    goto/16 :goto_2

    :cond_26
    move v1, v2

    goto/16 :goto_1

    :cond_27
    move v0, v6

    goto/16 :goto_2
.end method
