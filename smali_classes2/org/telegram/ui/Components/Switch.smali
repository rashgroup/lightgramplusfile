.class public Lorg/telegram/ui/Components/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Switch$Insets;
    }
.end annotation


# static fields
.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private attachedToWindow:Z

.field private mMinFlingVelocity:I

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private thumbPosition:F

.field private wasLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->mMinFlingVelocity:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->refreshDrawableState()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    return-void

    :cond_2
    iput v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    goto :goto_0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const-string/jumbo v1, "thumbPosition"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPositionAnimator()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    sub-float/2addr v0, v1

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iget v2, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    sub-int/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    sub-int v0, v1, v0

    :goto_1
    return v0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hitThumb(FF)Z
    .locals 5

    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbOffset()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    add-int/2addr v3, v4

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    int-to-float v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    int-to-float v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float v0, v3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setThumbPosition(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getTargetCheckedState()Z

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public checkColorFilters()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "switchTrackChecked"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "switchThumbChecked"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "switchTrack"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "switchThumb"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v7, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mSwitchRight:I

    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbOffset()I

    move-result v0

    add-int v2, v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v6, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    sget-object v2, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    if-eq v0, v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-le v2, v8, :cond_0

    iget v2, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    add-int/2addr v1, v2

    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/Switch$Insets;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-le v2, v8, :cond_6

    iget v2, v0, Lorg/telegram/ui/Components/Switch$Insets;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v8

    add-int/2addr v2, v3

    :goto_1
    iget v8, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_1

    iget v8, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    sub-int/2addr v4, v8

    :cond_1
    iget v8, v0, Lorg/telegram/ui/Components/Switch$Insets;->bottom:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_5

    iget v0, v0, Lorg/telegram/ui/Components/Switch$Insets;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v8

    sub-int v0, v5, v0

    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v6

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    add-int/2addr v0, v2

    iget v2, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v3, v0

    add-int/2addr v0, v5

    invoke-virtual {v4, v1, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_2

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    move v0, v5

    move v2, v3

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSplitTrack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbPosition()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    return v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    sget-object v3, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v3, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v3, v3, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    sub-int v3, v4, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v0, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    iget v1, v3, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v3, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v3, v2

    sub-int v1, v3, v1

    sub-int v0, v1, v0

    move v1, v0

    move v0, v2

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingTop()I

    move-result v3

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    add-int/2addr v2, v3

    :goto_3
    iput v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    iput v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchRight:I

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    sub-int v3, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    :sswitch_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    add-int/2addr v2, v3

    goto :goto_3

    :sswitch_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    sub-int v3, v2, v3

    goto :goto_3

    :cond_2
    move v1, v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    sget-object v4, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    iget v5, v4, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v4, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Components/Switch;->setMeasuredDimension(II)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Switch;->hitThumb(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    :cond_1
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    move v0, v2

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbScrollRange()I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    sub-float v4, v3, v4

    if-eqz v0, :cond_4

    int-to-float v0, v0

    div-float v0, v4, v0

    :goto_2
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    neg-float v0, v0

    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    add-float/2addr v0, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/ui/Components/Switch;->constrain(FFF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Switch;->setThumbPosition(F)V

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    cmpl-float v0, v4, v5

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    :pswitch_5
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    if-ne v0, v6, :cond_6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resetLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Switch;->animateThumbToCheckedState(Z)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_4

    const-string/jumbo v0, "switchTrackChecked"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_5

    const-string/jumbo v0, "switchThumbChecked"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->cancelPositionAnimator()V

    if-eqz v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Switch;->setThumbPosition(F)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "switchTrack"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "switchThumb"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mThumbTextPadding:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
