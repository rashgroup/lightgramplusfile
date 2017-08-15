.class Lorg/telegram/ui/Animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

.field mFirstKeyframe:Lorg/telegram/ui/Animation/Keyframe;

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mKeyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Lorg/telegram/ui/Animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Lorg/telegram/ui/Animation/Keyframe;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mNumKeyframes:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    iput-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mFirstKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    iput-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mLastKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mLastKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static varargs ofFloat([F)Lorg/telegram/ui/Animation/KeyframeSet;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v4, p0

    const/4 v0, 0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v5, v0, [Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    if-ne v4, v1, :cond_1

    invoke-static {v3}, Lorg/telegram/ui/Animation/Keyframe;->ofFloat(F)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    aput-object v0, v5, v2

    const/high16 v0, 0x3f800000    # 1.0f

    aget v3, p0, v2

    invoke-static {v0, v3}, Lorg/telegram/ui/Animation/Keyframe;->ofFloat(FF)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    aput-object v0, v5, v1

    aget v0, p0, v2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v0, "Animator"

    const-string/jumbo v1, "Bad value (NaN) in float animator"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Animation/FloatKeyframeSet;-><init>([Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;)V

    return-object v0

    :cond_1
    aget v0, p0, v2

    invoke-static {v3, v0}, Lorg/telegram/ui/Animation/Keyframe;->ofFloat(FF)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    aput-object v0, v5, v2

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_3

    int-to-float v0, v3

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    div-float/2addr v0, v6

    aget v6, p0, v3

    invoke-static {v0, v6}, Lorg/telegram/ui/Animation/Keyframe;->ofFloat(FF)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    aput-object v0, v5, v3

    aget v0, p0, v3

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static varargs ofInt([I)Lorg/telegram/ui/Animation/KeyframeSet;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    array-length v2, p0

    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    if-ne v2, v1, :cond_1

    invoke-static {v5}, Lorg/telegram/ui/Animation/Keyframe;->ofInt(F)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v4

    const/high16 v0, 0x3f800000    # 1.0f

    aget v2, p0, v4

    invoke-static {v0, v2}, Lorg/telegram/ui/Animation/Keyframe;->ofInt(FI)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v1

    :cond_0
    new-instance v0, Lorg/telegram/ui/Animation/IntKeyframeSet;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Animation/IntKeyframeSet;-><init>([Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;)V

    return-object v0

    :cond_1
    aget v0, p0, v4

    invoke-static {v5, v0}, Lorg/telegram/ui/Animation/Keyframe;->ofInt(FI)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v4

    :goto_0
    if-ge v1, v2, :cond_0

    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget v4, p0, v1

    invoke-static {v0, v4}, Lorg/telegram/ui/Animation/Keyframe;->ofInt(FI)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static varargs ofKeyframe([Lorg/telegram/ui/Animation/Keyframe;)Lorg/telegram/ui/Animation/KeyframeSet;
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    array-length v6, p0

    array-length v7, p0

    move v5, v4

    move v0, v4

    move v2, v4

    move v3, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v8, p0, v5

    instance-of v9, v8, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    if-eqz v9, :cond_0

    move v3, v1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    instance-of v8, v8, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    if-eqz v8, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    new-array v1, v6, [Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v0, p0, v4

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Animation/FloatKeyframeSet;-><init>([Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;)V

    :goto_3
    return-object v0

    :cond_4
    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    if-nez v0, :cond_6

    new-array v2, v6, [Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    move v1, v4

    :goto_4
    if-ge v1, v6, :cond_5

    aget-object v0, p0, v1

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_5
    new-instance v0, Lorg/telegram/ui/Animation/IntKeyframeSet;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Animation/IntKeyframeSet;-><init>([Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;)V

    goto :goto_3

    :cond_6
    new-instance v0, Lorg/telegram/ui/Animation/KeyframeSet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Animation/KeyframeSet;-><init>([Lorg/telegram/ui/Animation/Keyframe;)V

    goto :goto_3
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Lorg/telegram/ui/Animation/KeyframeSet;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    array-length v2, p0

    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;

    if-ne v2, v1, :cond_1

    invoke-static {v5}, Lorg/telegram/ui/Animation/Keyframe;->ofObject(F)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;

    aput-object v0, v3, v4

    const/high16 v0, 0x3f800000    # 1.0f

    aget-object v2, p0, v4

    invoke-static {v0, v2}, Lorg/telegram/ui/Animation/Keyframe;->ofObject(FLjava/lang/Object;)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;

    aput-object v0, v3, v1

    :cond_0
    new-instance v0, Lorg/telegram/ui/Animation/KeyframeSet;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Animation/KeyframeSet;-><init>([Lorg/telegram/ui/Animation/Keyframe;)V

    return-object v0

    :cond_1
    aget-object v0, p0, v4

    invoke-static {v5, v0}, Lorg/telegram/ui/Animation/Keyframe;->ofObject(FLjava/lang/Object;)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;

    aput-object v0, v3, v4

    :goto_0
    if-ge v1, v2, :cond_0

    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget-object v4, p0, v1

    invoke-static {v0, v4}, Lorg/telegram/ui/Animation/Keyframe;->ofObject(FLjava/lang/Object;)Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/KeyframeSet;->clone()Lorg/telegram/ui/Animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Animation/KeyframeSet;
    .locals 5

    iget-object v2, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lorg/telegram/ui/Animation/Keyframe;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->clone()Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Animation/KeyframeSet;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Animation/KeyframeSet;-><init>([Lorg/telegram/ui/Animation/Keyframe;)V

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mNumKeyframes:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    iget-object v1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mFirstKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mLastKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v2}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lorg/telegram/ui/Animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mFirstKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/Keyframe;->getFraction()F

    move-result v1

    sub-float v2, p1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getFraction()F

    move-result v3

    sub-float v1, v3, v1

    div-float v1, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    iget-object v3, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mFirstKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v3}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lorg/telegram/ui/Animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    iget-object v1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mLastKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getFraction()F

    move-result v1

    sub-float v2, p1, v1

    iget-object v3, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mLastKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v3}, Lorg/telegram/ui/Animation/Keyframe;->getFraction()F

    move-result v3

    sub-float v1, v3, v1

    div-float v1, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mLastKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v3}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lorg/telegram/ui/Animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mFirstKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    move-object v2, v1

    move v1, v0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getFraction()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_6
    invoke-virtual {v2}, Lorg/telegram/ui/Animation/Keyframe;->getFraction()F

    move-result v1

    sub-float v3, p1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v1, v4, v1

    div-float v1, v3, v1

    iget-object v3, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    invoke-virtual {v2}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v2, v0}, Lorg/telegram/ui/Animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mLastKeyframe:Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, " "

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method
