.class Lorg/telegram/messenger/ImageLoader$5;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;ILorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$5;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$5;->val$type:I

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$5;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v1, p0, Lorg/telegram/messenger/ImageLoader$5;->val$type:I

    if-ne v1, v2, :cond_2

    move v1, v2

    move v0, v3

    :goto_0
    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$5;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v4, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v0

    if-nez v4, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$5;->this$0:Lorg/telegram/messenger/ImageLoader;

    # invokes: Lorg/telegram/messenger/ImageLoader;->removeFromWaitingForThumb(Ljava/lang/Integer;)V
    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->access$3000(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Integer;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$5;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$5;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/ImageLoader$5;->val$type:I

    if-ne v1, v0, :cond_5

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    move v1, v0

    move v0, v3

    goto :goto_0
.end method
