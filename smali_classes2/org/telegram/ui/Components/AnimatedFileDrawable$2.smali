.class Lorg/telegram/ui/Components/AnimatedFileDrawable$2;
.super Ljava/lang/Object;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x3

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    # invokes: Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(I)V
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$400(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$302(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$502(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$602(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$702(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$802(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:Landroid/graphics/BitmapShader;
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/BitmapShader;

    move-result-object v1

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:Landroid/graphics/BitmapShader;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$902(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1202(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v1

    aget v1, v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I
    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v2

    sub-int/2addr v1, v2

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1302(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v1

    aget v1, v1, v3

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1202(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # invokes: Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method
