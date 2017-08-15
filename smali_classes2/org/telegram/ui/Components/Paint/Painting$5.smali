.class Lorg/telegram/ui/Components/Paint/Painting$5;
.super Ljava/lang/Object;
.source "Painting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Painting;->onPause(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Painting;

.field final synthetic val$completionRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->val$completionRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # setter for: Lorg/telegram/ui/Components/Paint/Painting;->paused:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$2002(Lorg/telegram/ui/Components/Paint/Painting;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Slice;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # getter for: Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;
    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$900(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    # setter for: Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$2102(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)Lorg/telegram/ui/Components/Paint/Slice;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->cleanResources(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->val$completionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->val$completionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
