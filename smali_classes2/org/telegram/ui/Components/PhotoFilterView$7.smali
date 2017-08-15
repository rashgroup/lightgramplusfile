.class Lorg/telegram/ui/Components/PhotoFilterView$7;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView;->updateValueTextView()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v0, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0
.end method
