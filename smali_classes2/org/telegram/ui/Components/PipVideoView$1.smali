.class Lorg/telegram/ui/Components/PipVideoView$1;
.super Landroid/widget/FrameLayout;
.source "PipVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoView;->show(Landroid/app/Activity;Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;FI)Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipVideoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const v5, 0x3e99999a    # 0.3f

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    iput v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v5, v1}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    iput v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->controlsView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoView;->access$000(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewParent;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v2, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    iget v5, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    sub-float v5, v3, v5

    iget v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    sub-float v6, v4, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v7}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v8, v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I
    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoView;->access$200(Lorg/telegram/ui/Components/PipVideoView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v7, v5

    if-ge v6, v7, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    neg-int v7, v5

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    int-to-float v5, v5

    div-float v5, v6, v5

    mul-float/2addr v5, v9

    add-float/2addr v0, v5

    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    neg-int v5, v1

    if-ge v0, v5, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoView;->access$400(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    iput v4, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    :cond_5
    :goto_4
    move v0, v2

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    if-le v6, v7, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v7}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v5, v5

    div-float v5, v6, v5

    mul-float/2addr v5, v9

    sub-float/2addr v0, v5

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v1

    if-le v0, v5, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # invokes: Lorg/telegram/ui/Components/PipVideoView;->animateToBoundsMaybe()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoView;->access$500(Lorg/telegram/ui/Components/PipVideoView;)V

    goto/16 :goto_4
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
