.class Lorg/telegram/messenger/ImageLoader$CacheOutTask;
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
    name = "CacheOutTask"
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private isCancelled:Z

.field private runningThread:Ljava/lang/Thread;

.field private final sync:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object v0
.end method

.method private onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v2, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v5, "d"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-direct {v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v14, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/4 v9, 0x1

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v3, v6, :cond_5

    const/4 v7, 0x0

    :try_start_4
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v6, v14, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v3, :cond_7

    # getter for: Lorg/telegram/messenger/ImageLoader;->headerThumb:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1200()[B

    move-result-object v3

    :goto_2
    const/4 v7, 0x0

    array-length v10, v3

    invoke-virtual {v6, v3, v7, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "riff"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "webp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v3, :cond_1c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v5, "b2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v3, 0x3

    move v9, v3

    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/ImageLoader;->access$1402(Lorg/telegram/messenger/ImageLoader;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v4, :cond_b

    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v8

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-eqz v2, :cond_3c

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v3

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_0

    :cond_7
    :try_start_a
    # getter for: Lorg/telegram/messenger/ImageLoader;->header:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1300()[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-result-object v3

    goto/16 :goto_2

    :catch_1
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v6, v7

    :goto_8
    :try_start_b
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v6, :cond_5

    :try_start_c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v6, v7

    :goto_9
    if-eqz v6, :cond_8

    :try_start_d
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :cond_8
    :goto_a
    throw v2

    :catch_4
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v5, "b1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v3, 0x2

    move v9, v3

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v5, "b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v3, 0x1

    move v9, v3

    goto :goto_4

    :cond_b
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput v3, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_c

    const/4 v3, 0x1

    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :cond_c
    if-eqz v2, :cond_f

    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v11, v14, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v2, v6}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v8

    :try_start_10
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/4 v5, 0x0

    iget-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v2, :cond_e

    const/4 v2, 0x1

    :goto_b
    invoke-static {v8, v3, v4, v5, v2}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    move-object v2, v8

    :goto_c
    if-nez v2, :cond_13

    :try_start_11
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_d
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_6

    :catch_5
    move-exception v3

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    :cond_f
    :try_start_12
    iget-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v2, :cond_12

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v3, v14, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v2

    if-eqz v2, :cond_11

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v4, :cond_11

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v2

    :goto_d
    if-nez v2, :cond_10

    new-array v2, v4, [B

    # setter for: Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$1502([B)[B

    :cond_10
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v4, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v2, v8

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    goto :goto_d

    :cond_12
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    move-result-object v8

    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    move-object v2, v8

    goto :goto_c

    :cond_13
    const/4 v3, 0x1

    if-ne v9, v3, :cond_15

    :try_start_14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x3

    iget-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_14
    const/4 v4, 0x1

    goto :goto_e

    :cond_15
    const/4 v3, 0x2

    if-ne v9, v3, :cond_17

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    iget-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_16
    const/4 v4, 0x1

    goto :goto_f

    :cond_17
    const/4 v3, 0x3

    if-ne v9, v3, :cond_1b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x7

    iget-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/4 v3, 0x7

    iget-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/4 v3, 0x7

    iget-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_18
    const/4 v4, 0x1

    goto :goto_10

    :cond_19
    const/4 v4, 0x1

    goto :goto_11

    :cond_1a
    const/4 v4, 0x1

    goto :goto_12

    :cond_1b
    if-nez v9, :cond_6

    iget-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v3, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_6

    :cond_1c
    const/4 v3, 0x0

    :try_start_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v6, :cond_40

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v7, "thumb://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v7, ":"

    const/16 v9, 0x8

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1d
    const/4 v6, 0x0

    move-object v7, v3

    move v11, v6

    move v12, v4

    move-object v13, v5

    :goto_13
    const/16 v3, 0x14

    if-eqz v13, :cond_1e

    const/4 v3, 0x0

    :cond_1e
    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->access$1400(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->access$1400(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    int-to-long v0, v3

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    cmp-long v4, v4, v16

    if-lez v4, :cond_1f

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1f

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/ImageLoader;->access$1402(Lorg/telegram/messenger/ImageLoader;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    :try_start_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v4, :cond_23

    monitor-exit v3

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    throw v2

    :catch_6
    move-exception v2

    move-object v2, v8

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v7, "vthumb://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v7, ":"

    const/16 v9, 0x9

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v4, 0x1

    :cond_21
    const/4 v6, 0x0

    move-object v7, v3

    move v11, v6

    move v12, v4

    move-object v13, v5

    goto/16 :goto_13

    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6

    move-result v6

    if-nez v6, :cond_40

    const/4 v6, 0x0

    move-object v7, v3

    move v11, v6

    move v12, v4

    move-object v13, v5

    goto/16 :goto_13

    :cond_23
    :try_start_18
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput v3, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v6, :cond_27

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v9, "_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x2

    if-lt v9, v10, :cond_3f

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v5, v4

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v4, v6

    move v6, v4

    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v9, "b"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    :goto_15
    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v13, :cond_26

    if-nez v7, :cond_26

    if-eqz v12, :cond_25

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v9, 0x1

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1, v9, v15}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_6

    move-object v3, v8

    :goto_16
    :try_start_1a
    iget v8, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    iget v9, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v5

    div-float v6, v9, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v6, v8

    if-gez v8, :cond_24

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_24
    const/4 v8, 0x0

    iput-boolean v8, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int v6, v6

    iput v6, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_9

    :goto_17
    move v9, v4

    move v10, v5

    move-object v8, v3

    :goto_18
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_7

    :try_start_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v4, :cond_2a

    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :try_start_1d
    throw v2
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_7

    :catch_7
    move-exception v2

    move-object v2, v8

    goto/16 :goto_6

    :cond_25
    :try_start_1e
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v9, 0x1

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1, v9, v15}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object v3, v8

    goto :goto_16

    :cond_26
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-static {v3, v9, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_6

    move-result-object v8

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_7

    move-object v3, v8

    goto :goto_16

    :cond_27
    if-eqz v7, :cond_29

    const/4 v5, 0x1

    :try_start_20
    iput-boolean v5, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    invoke-static {v5, v6, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_6

    move-result-object v8

    :try_start_21
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iget v5, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    iget v6, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    const/high16 v9, 0x44000000    # 512.0f

    div-float/2addr v5, v9

    const/high16 v9, 0x43c00000    # 384.0f

    div-float/2addr v6, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_28

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_28
    const/4 v6, 0x0

    iput-boolean v6, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int v5, v5

    iput v5, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_7

    :cond_29
    move v9, v3

    move v10, v4

    goto :goto_18

    :cond_2a
    :try_start_22
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :try_start_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v3, :cond_2b

    if-nez v9, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v3, :cond_2f

    :cond_2b
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2c

    const/4 v3, 0x1

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :cond_2c
    const/4 v3, 0x0

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    if-eqz v13, :cond_2d

    if-nez v7, :cond_2d

    if-eqz v12, :cond_30

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6, v15}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_2d
    :goto_1a
    if-nez v8, :cond_36

    if-eqz v2, :cond_32

    new-instance v12, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v12, v14, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v2, v6}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/4 v5, 0x0

    iget-boolean v2, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v2, :cond_31

    const/4 v2, 0x1

    :goto_1b
    invoke-static {v8, v3, v4, v5, v2}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_7

    move-object v2, v8

    :goto_1c
    if-nez v2, :cond_37

    if-eqz v11, :cond_6

    :try_start_24
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_2e
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_8

    goto/16 :goto_6

    :catch_8
    move-exception v3

    goto/16 :goto_6

    :cond_2f
    :try_start_25
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_19

    :cond_30
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6, v15}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1a

    :cond_31
    const/4 v2, 0x0

    goto :goto_1b

    :cond_32
    iget-boolean v2, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v2, :cond_35

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v3, v14, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytes:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v2

    if-eqz v2, :cond_34

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytes:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v4, :cond_34

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytes:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v2

    :goto_1d
    if-nez v2, :cond_33

    new-array v2, v4, [B

    # setter for: Lorg/telegram/messenger/ImageLoader;->bytes:[B
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$1602([B)[B

    :cond_33
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v2, v8

    goto :goto_1c

    :cond_34
    const/4 v2, 0x0

    goto :goto_1d

    :cond_35
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_7

    :cond_36
    move-object v2, v8

    goto :goto_1c

    :cond_37
    const/4 v3, 0x0

    :try_start_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v4, :cond_3a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v5, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v6, v4

    iget-boolean v4, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v4, :cond_38

    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-eqz v4, :cond_38

    cmpl-float v4, v5, v10

    if-eqz v4, :cond_38

    const/high16 v4, 0x41a00000    # 20.0f

    add-float/2addr v4, v10

    cmpl-float v4, v5, v4

    if-lez v4, :cond_38

    div-float v4, v5, v10

    float-to-int v7, v10

    div-float v4, v6, v4

    float-to-int v4, v4

    const/4 v8, 0x1

    invoke-static {v2, v7, v4, v8}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v2, v4, :cond_38

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v4

    :cond_38
    if-eqz v2, :cond_3a

    if-eqz v9, :cond_3a

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v6, v4

    if-gez v4, :cond_3a

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_39

    const/4 v3, 0x3

    iget-boolean v4, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v4, :cond_3b

    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :cond_39
    const/4 v3, 0x1

    :cond_3a
    if-nez v3, :cond_6

    iget-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v3, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_8

    goto/16 :goto_6

    :cond_3b
    const/4 v4, 0x1

    goto :goto_1e

    :cond_3c
    const/4 v2, 0x0

    goto/16 :goto_7

    :catch_9
    move-exception v2

    move-object v2, v3

    goto/16 :goto_6

    :catch_a
    move-exception v2

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_5

    :catchall_6
    move-exception v2

    goto/16 :goto_9

    :catch_b
    move-exception v3

    goto/16 :goto_8

    :cond_3d
    move-object v3, v8

    goto/16 :goto_17

    :cond_3e
    move v4, v3

    goto/16 :goto_15

    :cond_3f
    move v6, v5

    move v5, v4

    goto/16 :goto_14

    :cond_40
    move-object v7, v3

    move v11, v9

    move v12, v4

    move-object v13, v5

    goto/16 :goto_13

    :cond_41
    move v9, v3

    goto/16 :goto_4
.end method
