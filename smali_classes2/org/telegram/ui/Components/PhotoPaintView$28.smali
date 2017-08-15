.class Lorg/telegram/ui/Components/PhotoPaintView$28;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->detectFaces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "face detection is not operational"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->getFrameRotation()I
    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3500(Lorg/telegram/ui/Components/PhotoPaintView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Size;

    move-result-object v5

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/Face;

    new-instance v6, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z
    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3800(Lorg/telegram/ui/Components/PhotoPaintView;)Z

    move-result v8

    invoke-direct {v6, v0, v7, v5, v8}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # setter for: Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3902(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_4
    throw v0
.end method
