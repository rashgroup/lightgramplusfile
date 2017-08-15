.class Lorg/telegram/ui/Components/Crop/CropView$6;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropView;->showAspectRatioDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;

.field final synthetic val$ratios:[[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;[[Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->val$ratios:[[Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # setter for: Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$2302(Lorg/telegram/ui/Components/Crop/CropView;Z)Z

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->val$ratios:[[Ljava/lang/Integer;

    add-int/lit8 v1, p2, -0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$2500(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropAreaView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    # invokes: Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Crop/CropView;->access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v0

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    rem-float/2addr v0, v5

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v0

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getHeight()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v1

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    rem-float/2addr v1, v5

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v1

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getWidth()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    div-float/2addr v0, v1

    # invokes: Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/Crop/CropView;->access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v0

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getWidth()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v1

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getHeight()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Crop/CropView;->access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    # invokes: Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Crop/CropView;->access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
