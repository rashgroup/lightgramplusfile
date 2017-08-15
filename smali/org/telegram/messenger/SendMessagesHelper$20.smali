.class final Lorg/telegram/messenger/SendMessagesHelper$20;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$caption:Ljava/lang/String;

.field final synthetic val$dialog_id:J

.field final synthetic val$duration:J

.field final synthetic val$estimatedSize:J

.field final synthetic val$height:I

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field final synthetic val$videoPath:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLjava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$duration:J

    iput p7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$height:I

    iput p8, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$width:I

    iput-wide p9, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$estimatedSize:J

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$caption:Ljava/lang/String;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v1, 0x1

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$dialog_id:J

    long-to-int v0, v4

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$duration:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v8, v7, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v8, v7, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, v7, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v8, v8, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    if-ne v7, v8, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, v7, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-nez v0, :cond_2

    :cond_2
    if-nez v2, :cond_c

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v7, 0x37

    invoke-static {v1, v10, v10, v7, v0}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v1, :cond_5

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v7, "s"

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    :goto_1
    const-string/jumbo v1, "video/mp4"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v7, :cond_9

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_6

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    invoke-static {v2, v1, v5}, Lorg/telegram/messenger/SendMessagesHelper;->access$1200(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    iput v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    iput v1, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    :goto_2
    iget-wide v6, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$estimatedSize:J

    long-to-int v1, v6

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-2147483648_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$caption:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string/jumbo v3, "originalPath"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$20$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$20$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$20;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :cond_4
    move v0, v3

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v7, "s"

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    iget-wide v6, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$duration:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v2, v6

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v5, 0x5a

    if-eq v2, v5, :cond_7

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v5, 0x10e

    if-ne v2, v5, :cond_8

    :cond_7
    iget v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$height:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    iget v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$width:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$width:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    iget v2, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$height:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    :cond_a
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->access$1200(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$videoPath:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$dialog_id:J

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$20;->val$caption:Ljava/lang/String;

    move-object v3, v2

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    goto :goto_4

    :cond_c
    move-object v0, v5

    goto :goto_3
.end method
