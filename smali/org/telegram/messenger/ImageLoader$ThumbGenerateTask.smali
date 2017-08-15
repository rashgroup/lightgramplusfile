.class Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbGenerateTask"
.end annotation


# instance fields
.field private filter:Ljava/lang/String;

.field private mediaType:I

.field private originalPath:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field private thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p5, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->filter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->filter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    return-void
.end method

.method private removeTask()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "q_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    goto :goto_0

    :cond_2
    const/16 v3, 0xb4

    :try_start_1
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    if-nez v4, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    int-to-float v5, v3

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget v4, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, ".jpeg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, ".png"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, ".gif"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    int-to-float v5, v3

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eqz v4, :cond_8

    if-nez v5, :cond_9

    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    goto/16 :goto_0

    :cond_9
    int-to-float v6, v4

    int-to-float v7, v3

    div-float/2addr v6, v7

    int-to-float v7, v5

    int-to-float v3, v3

    div-float v3, v7, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v5, v5

    div-float v3, v5, v3

    float-to-int v3, v3

    const/4 v5, 0x1

    invoke-static {v0, v4, v3, v5}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {v3, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;-><init>(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
