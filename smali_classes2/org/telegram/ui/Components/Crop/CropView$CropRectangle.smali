.class Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;
.super Ljava/lang/Object;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Crop/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CropRectangle"
.end annotation


# instance fields
.field coords:[F

.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    return-void
.end method


# virtual methods
.method applyMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method getRect(Landroid/graphics/RectF;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method setRect(Landroid/graphics/RectF;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x4

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x5

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x6

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->coords:[F

    const/4 v1, 0x7

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    return-void
.end method
