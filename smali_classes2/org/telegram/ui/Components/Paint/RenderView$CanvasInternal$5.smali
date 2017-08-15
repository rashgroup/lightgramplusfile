.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->getTexture()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

.field final synthetic val$object:[Landroid/graphics/Bitmap;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;[Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;->val$object:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;->val$object:[Landroid/graphics/Bitmap;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->bitmap:Landroid/graphics/Bitmap;

    aput-object v0, v1, v5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
