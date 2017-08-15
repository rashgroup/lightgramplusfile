.class Lorg/telegram/messenger/ImageLoader$CacheImage$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field final synthetic val$finalImageReceiverArray:Ljava/util/ArrayList;

.field final synthetic val$image:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$CacheImage;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move v2, v3

    move v4, v3

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    if-nez v2, :cond_1

    move-object v5, v0

    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v7, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v1, v5, v6, v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->makeCopy()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v5

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v0, v2, v4, v5, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
