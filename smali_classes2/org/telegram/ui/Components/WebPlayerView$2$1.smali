.class Lorg/telegram/ui/Components/WebPlayerView$2$1;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView$2;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/WebPlayerView$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView$2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$3302(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$2$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$2$1$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$2$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2902(Lorg/telegram/ui/Components/WebPlayerView;I)I

    const/4 v0, 0x1

    return v0
.end method
