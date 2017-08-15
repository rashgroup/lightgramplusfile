.class Lorg/telegram/ui/Components/Crop/CropView$2;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropView;->fillAreaView(Landroid/graphics/RectF;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;

.field final synthetic val$currentScale:[F

.field final synthetic val$targetScale:F

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iput p2, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$targetScale:F

    iput-object p3, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$currentScale:[F

    iput p4, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$x:F

    iput p5, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$targetScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$currentScale:[F

    aget v1, v1, v3

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$currentScale:[F

    aget v2, v1, v3

    mul-float/2addr v2, v0

    aput v2, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$x:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$y:F

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale(FFF)V
    invoke-static {v1, v0, v2, v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    return-void
.end method
