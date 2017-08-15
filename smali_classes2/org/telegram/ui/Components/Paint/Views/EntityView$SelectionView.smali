.class public Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.super Landroid/widget/FrameLayout;
.source "EntityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionView"
.end annotation


# static fields
.field public static final SELECTION_LEFT_HANDLE:I = 0x1

.field public static final SELECTION_RIGHT_HANDLE:I = 0x2

.field public static final SELECTION_WHOLE_HANDLE:I = 0x3


# instance fields
.field private currentHandle:I

.field protected dotPaint:Landroid/graphics/Paint;

.field protected dotStrokePaint:Landroid/graphics/Paint;

.field protected paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    const v1, -0xc33511

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v1, v8, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->pointInsideHandle(FF)I

    move-result v2

    if-eqz v2, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$702(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$802(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$202(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v2, v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # invokes: Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FF)Z
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$900(Lorg/telegram/ui/Components/Paint/Views/EntityView;FF)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F
    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$800(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getRotation()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    float-to-double v6, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v2, v1, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v0, v2

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v5, v0

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    const/4 v0, 0x0

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v6, v1, :cond_6

    sub-float v0, v3, v5

    float-to-double v6, v0

    sub-float v0, v2, v4

    float-to-double v2, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$702(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$802(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1002(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onBeganEntityDragging(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    sub-float v0, v5, v3

    float-to-double v6, v0

    sub-float v0, v4, v2

    float-to-double v2, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # invokes: Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp()V
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected pointInsideHandle(FF)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updatePosition()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getSelectionBounds()Lorg/telegram/ui/Components/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Lorg/telegram/ui/Components/Rect;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->offsetX:I
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Lorg/telegram/ui/Components/Rect;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->offsetY:I
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v1, Lorg/telegram/ui/Components/Rect;->width:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->height:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getRotation()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->setRotation(F)V

    return-void
.end method
