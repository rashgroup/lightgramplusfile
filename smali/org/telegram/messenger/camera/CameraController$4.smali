.class Lorg/telegram/messenger/camera/CameraController$4;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->takePicture(Ljava/io/File;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$info:Lorg/telegram/messenger/camera/CameraInfo;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$4;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$path:Ljava/io/File;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%s@%d_%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$path:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    array-length v4, p1

    invoke-static {p1, v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v4, v2, v0

    if-gez v4, :cond_4

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v0, 0x0

    array-length v2, p1

    invoke-static {p1, v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_2

    :try_start_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    # invokes: Lorg/telegram/messenger/camera/CameraController;->getOrientation([B)I
    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraController;->access$100([B)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$path:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3, v7}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$path:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v7}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method
