.class Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

.field final synthetic val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1100(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1100(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
