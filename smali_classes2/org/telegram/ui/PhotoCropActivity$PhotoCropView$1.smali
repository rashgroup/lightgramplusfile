.class Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;
.super Ljava/lang/Object;
.source "PhotoCropActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x43200000    # 160.0f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v4, v0

    add-float/2addr v1, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v0

    add-float/2addr v1, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v8, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v2, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v3, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    :cond_1
    :goto_1
    return v8

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v4, v0

    add-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v0

    add-float/2addr v1, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v6, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v4, v0

    add-float/2addr v1, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v0

    add-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v1, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v9, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v4, v0

    add-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    const/4 v1, 0x4

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    const/4 v1, 0x5

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v5, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v5, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    sub-float v0, v2, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    sub-float v1, v3, v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v0, v5

    iput v0, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    :cond_a
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v2, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v3, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->invalidate()V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    goto :goto_3

    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-ne v4, v8, :cond_14

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v4, v0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v7

    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float/2addr v0, v4

    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-boolean v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v4, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v1, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v0, v4, v0

    iput v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v4, v1

    cmpg-float v4, v4, v7

    if-gez v4, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v1, v7

    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v1, v4

    :cond_13
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v5, v0

    iput v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v5, v1

    iput v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v0, v5, v0

    iput v0, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v1, v4, v1

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-ne v4, v6, :cond_1b

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v4, v0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v7

    neg-float v0, v0

    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v4

    :cond_16
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-boolean v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v4, :cond_18

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v1, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    :cond_18
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v4, v1

    cmpg-float v4, v4, v7

    if-gez v4, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v1, v7

    :cond_19
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v1, v4

    :cond_1a
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v5, v1

    iput v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v5

    iput v0, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v1, v4, v1

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    :cond_1b
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-ne v4, v9, :cond_21

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v4, v0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v7

    :cond_1c
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float/2addr v0, v4

    :cond_1d
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-boolean v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v4, :cond_1f

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v4

    sub-float/2addr v1, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v0, v4, v0

    iput v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    :cond_1f
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v1, v4

    :cond_20
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v5, v0

    iput v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v0, v5, v0

    iput v0, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v7, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    :cond_21
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v4

    :cond_22
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-boolean v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v4, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v4

    add-float/2addr v1, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v7, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v0, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v7, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    :cond_25
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_26

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v1, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v1, v4

    :cond_26
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v5

    iput v0, v4, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v4, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto :goto_4
.end method
