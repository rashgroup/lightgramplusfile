.class public Lorg/telegram/ui/Components/Crop/CropGestureDetector;
.super Ljava/lang/Object;
.source "CropGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field private mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mMinimumVelocity:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mTouchSlop:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropGestureDetector$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$1;-><init>(Lorg/telegram/ui/Components/Crop/CropGestureDetector;)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Crop/CropGestureDetector;)Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    return-object v0
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 1

    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 1

    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    if-eq v0, v5, :cond_b

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_2
    return v1

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    iput v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_3
    const v0, 0xff00

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    if-ne v3, v4, :cond_0

    if-nez v0, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :pswitch_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    sub-float v4, v0, v4

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    sub-float v5, v3, v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-nez v6, :cond_6

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mTouchSlop:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    :cond_6
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    invoke-interface {v2, v4, v5}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onDrag(FF)V

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_7
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    goto/16 :goto_2

    :pswitch_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mMinimumVelocity:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    iget v6, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    neg-float v0, v0

    neg-float v3, v3

    invoke-interface {v4, v5, v6, v0, v3}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onFling(FFFF)V

    :cond_8
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setOnGestureListener(Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    return-void
.end method
