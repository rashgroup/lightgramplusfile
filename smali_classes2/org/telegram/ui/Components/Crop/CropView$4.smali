.class Lorg/telegram/ui/Components/Crop/CropView$4;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;

.field final synthetic val$animDX:F

.field final synthetic val$animDY:F

.field final synthetic val$animScale:F

.field final synthetic val$currentValues:[F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iput p2, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animDX:F

    iput-object p3, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    iput p4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animDY:F

    iput p5, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animDX:F

    mul-float/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v3, v2, v4

    add-float/2addr v3, v1

    aput v3, v2, v4

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animDY:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v3, v3, v8

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v4, v3, v8

    add-float/2addr v4, v2

    aput v4, v3, v8

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v4, v4, v5

    mul-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v4, v4, v5

    mul-float/2addr v2, v4

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->translate(FF)V
    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animScale:F

    sub-float/2addr v1, v7

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v1, v1, v5

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v2, v1, v5

    mul-float/2addr v2, v0

    aput v2, v1, v5

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v1

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale(FFF)V
    invoke-static {v1, v0, v6, v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    return-void
.end method
