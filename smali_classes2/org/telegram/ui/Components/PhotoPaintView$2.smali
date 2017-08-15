.class Lorg/telegram/ui/Components/PhotoPaintView$2;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
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

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeganDrawing()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$200(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-void
.end method

.method public onFinishedDrawing(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$200(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v1

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setMenuItemEnabled(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$100(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    return-void
.end method

.method public shouldDraw()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
