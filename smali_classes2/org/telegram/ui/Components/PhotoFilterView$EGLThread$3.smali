.class Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4602(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method
