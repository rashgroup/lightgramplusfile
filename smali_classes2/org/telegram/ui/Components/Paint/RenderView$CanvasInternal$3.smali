.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$3;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduleRedraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$3;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$3;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1802(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$3;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
