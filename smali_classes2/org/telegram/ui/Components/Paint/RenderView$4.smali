.class Lorg/telegram/ui/Components/Paint/RenderView$4;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/RenderView;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$4;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/RenderView$4;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$4;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$4;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$4;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    # invokes: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->setCurrentContext()Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1300(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$4;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
