.class Lorg/telegram/ui/Components/PhotoFilterView$4;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


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

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, -0x64

    const/16 v2, 0x64

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5202(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Enhance"

    const v2, 0x7f0801fb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setProgress(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView;->updateValueTextView()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchToOrFromEditMode()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Highlights"

    const v2, 0x7f080271

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Contrast"

    const v2, 0x7f080186

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Exposure"

    const v2, 0x7f080206

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Warmth"

    const v2, 0x7f080591

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Saturation"

    const v2, 0x7f0804a1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Vignette"

    const v2, 0x7f08056c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Shadows"

    const v2, 0x7f0804f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Grain"

    const v2, 0x7f080262

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Fade"

    const v2, 0x7f080208

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Sharpen"

    const v2, 0x7f0804ff

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7902(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7902(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt2:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8102(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->saveValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->saveValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->saveValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->saveValues()V

    goto/16 :goto_0
.end method
